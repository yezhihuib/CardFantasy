package cfvbaibai.cardfantasy.engine.skill;

import cfvbaibai.cardfantasy.CardFantasyRuntimeException;
import cfvbaibai.cardfantasy.GameUI;
import cfvbaibai.cardfantasy.Randomizer;
import cfvbaibai.cardfantasy.data.Skill;
import cfvbaibai.cardfantasy.engine.CardInfo;
import cfvbaibai.cardfantasy.engine.CardStatusType;
import cfvbaibai.cardfantasy.engine.SkillResolver;
import cfvbaibai.cardfantasy.engine.HeroDieSignal;
import cfvbaibai.cardfantasy.engine.OnAttackBlockingResult;

public final class Return {
    public static void apply(SkillResolver resolver, Skill cardSkill, CardInfo attacker, CardInfo defender) throws HeroDieSignal {
        if (attacker == null) {
            return;
        }
        if (defender == null) {
            return;
        }
        GameUI ui = resolver.getStage().getUI();
        ui.useSkill(attacker, defender, cardSkill, true);
        OnAttackBlockingResult result = resolver.resolveAttackBlockingSkills(attacker, defender, cardSkill, 1);
        if (!result.isAttackable()) {
            return;
        }
        CardInfo expelledCard = defender.getOwner().getField().expelCard(defender.getPosition());
        if (expelledCard != defender) {
            throw new CardFantasyRuntimeException("expelledCard != defender");
        }
        
        ui.returnCard(attacker, defender, cardSkill);
        if (!defender.getStatus().containsStatus(CardStatusType.召唤)) {
            // 被召唤的卡牌不回到卡组，而是直接消失
            // 送还的卡是随机插入卡组而非加在末尾
            int deckSize = defender.getOwner().getDeck().size();
            int index = 0;
            if (deckSize > 0)
            {
                index = Randomizer.getRandomizer().next(0, deckSize);   
            }     
            defender.getOwner().getDeck().insertCardToPosition(defender, index);
        }
        resolver.resolveLeaveSkills(defender);
    }
}
