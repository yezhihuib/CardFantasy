package cfvbaibai.cardfantasy.test.func;

import org.junit.Assert;
import org.junit.Test;

import cfvbaibai.cardfantasy.engine.CardInfo;
import cfvbaibai.cardfantasy.engine.RuneInfo;

public class CounterAttackTest extends SkillValidationTest {
    /**
     * 反击在吸血之后
     */
    @Test
    public void test反击_吸血() {
        SkillTestContext context = prepare(50, 50, "黑夜蝙蝠-1", "人马巡逻者");
        CardInfo c黑夜蝙蝠 = context.addToField(0, 0).setBasicHP(79);
        context.addToField(1, 1);
        context.startGame();

        context.proceedOneRound();
        Assert.assertEquals(1, context.getPlayer(0).getField().size());
        Assert.assertEquals(21, c黑夜蝙蝠.getHP());
    }
    
    /**
     * 闪避成功的话不触发雷盾
     */
    @Test
    public void test闪避_雷盾() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像", "大剑圣", "雷盾");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c大剑圣 = context.addToField(1, 1);
        RuneInfo r雷盾 = context.addToRune(0, 1);
        context.startGame();
        
        r雷盾.activate();
        random.addNextNumbers(0); // 大剑圣闪避成功
        context.proceedOneRound();
        
        Assert.assertEquals(0, 1400 - c秘银巨石像.getHP());
        Assert.assertEquals(0, 995 - c大剑圣.getHP());
    }
    
    /**
     * 伤害为零时不触发雷盾
     */
    @Test
    public void test冰甲岩壁_雷盾() {
        SkillTestContext context = prepare(
            50, 50, "光明之龙", "秘银巨石像", "战斗猛犸象", "岩壁", "雷盾");
        CardInfo c光明之龙 = context.addToField(0, 0);
        CardInfo c秘银巨石像 = context.addToField(1, 0);
        CardInfo c战斗猛犸象 = context.addToField(2, 1);
        RuneInfo r岩壁 = context.addToRune(0, 1);
        RuneInfo r雷盾 = context.addToRune(1, 1);
        context.startGame();
        
        r岩壁.activate();
        r雷盾.activate();
        context.proceedOneRound();
        
        Assert.assertEquals(0, 1220 - c战斗猛犸象.getHP());
        Assert.assertEquals(0, 1730 - c光明之龙.getHP());
        Assert.assertEquals(0, 1400 - c秘银巨石像.getHP());
    }
    
    /**
     * 横扫伤害到的所有带反伤技能的卡都会触发各自的反伤技能，若是盾刺，则总是以攻击者为中心的三张卡牌受到反伤，雷盾结算方法相同
     */
    @Test
    public void test横扫_雷盾() {
        SkillTestContext context = prepare(
            50, 50, "秘银巨石像", "光明之龙", "秘银巨石像", "凤凰*3", "雷盾");
        CardInfo c秘银巨石像1 = context.addToField(0, 0);
        CardInfo c光明之龙 = context.addToField(1, 0);
        CardInfo c秘银巨石像2 = context.addToField(2, 0);
        context.addToField(3, 1);
        context.addToField(4, 1);
        context.addToField(5, 1);
        RuneInfo r雷盾 = context.addToRune(0, 1);

        context.startGame();

        r雷盾.activate();
        context.proceedOneRound();

        Assert.assertEquals(800, 1400 - c秘银巨石像1.getHP());
        Assert.assertEquals(1000, 1730 - c光明之龙.getHP());
        Assert.assertEquals(800, 1400 - c秘银巨石像2.getHP());
    }
    
    /**
     * 横扫的溅射对象也会发动反伤技能
     */
    @Test
    public void test横扫_反击() {
        SkillTestContext context = prepare(50, 50, "光明之龙", "秘银巨石像", "皇家雄狮");
        CardInfo c光明之龙 = context.addToField(0, 0);
        context.addToField(1, 1);
        context.addToField(2, 1);
        context.startGame();

        context.proceedOneRound();

        Assert.assertEquals(100, 1730 - c光明之龙.getHP());
    }
    
    /**
     * 连锁攻击的额外攻击部分触发的盾刺以被连锁卡的正对面卡为中心
     */
    @Test
    public void test连锁攻击_雷盾() {
        SkillTestContext context = prepare(50, 50, "麒麟兽", "秘银巨石像*2", "金属巨龙-15*3", "雷盾");
        CardInfo c麒麟兽 = context.addToField(0, 0);
        CardInfo c秘银巨石像1 = context.addToField(1, 0);
        CardInfo c秘银巨石像2 = context.addToField(2, 0);
        context.addToField(3, 1);
        context.addToField(4, 1);
        context.addToField(5, 1);
        RuneInfo r雷盾 = context.addToRune(0, 1);
        context.startGame();

        r雷盾.activate();
        context.proceedOneRound();
        Assert.assertEquals(400 + 200, 1610 - c麒麟兽.getHP());
        Assert.assertEquals(600 + 200 + 200, 1400 - c秘银巨石像1.getHP());
        Assert.assertEquals(400 + 200 + 200, 1400 - c秘银巨石像2.getHP());
    }

    /**
     * 零伤害不会触发盾刺
     */
    @Test
    public void test无伤害_盾刺() {
        SkillTestContext context = prepare(50, 50, "占位符*2", "占位符+盾刺10");
        CardInfo c占位符1 = context.addToField(0, 0);
        CardInfo c占位符2 = context.addToField(1, 0);
        context.addToField(2, 1);
        context.startGame();
        
        context.proceedOneRound();
        Assert.assertEquals(5000, c占位符1.getHP());
        Assert.assertEquals(5000, c占位符2.getHP());
    }
    
    @Test
    public void test物理反弹_基本() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像", "占位符+物理反弹");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c占位符 = context.addToField(1, 1);
        context.startGame();
        
        context.proceedOneRound();
        Assert.assertEquals(660 / 2 /* 物理反弹造成一半伤害反弹 */, 1400 - c秘银巨石像.getHP());
        Assert.assertEquals(660, 5000 - c占位符.getHP());
    }
    
    @Test
    public void test物理反弹_格挡() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像", "金属巨龙+物理反弹");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c金属巨龙 = context.addToField(1, 1);
        context.startGame();
        
        context.proceedOneRound();
        Assert.assertEquals((660 - 160) / 2 /* 物理反弹造成一半伤害反弹 */, 1400 - c秘银巨石像.getHP());
        Assert.assertEquals(660 - 160, 1825 - c金属巨龙.getHP());
    }

    @Test
    public void test物理反弹_横扫_仅溅射() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像+横扫", "占位符", "占位符+物理反弹");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c占位符1 = context.addToField(1, 1);
        CardInfo c占位符2 = context.addToField(2, 1);
        context.startGame();
        
        context.proceedOneRound();
        Assert.assertEquals(810 / 2 /* 物理反弹造成一半伤害反弹 */, 1550 - c秘银巨石像.getHP());
        Assert.assertEquals(810, 5000 - c占位符1.getHP());
        Assert.assertEquals(810, 5000 - c占位符2.getHP());
    }

    @Test
    public void test物理反弹_横扫_双溅射() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像+横扫", "占位符+物理反弹", "占位符+物理反弹");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c占位符1 = context.addToField(1, 1);
        CardInfo c占位符2 = context.addToField(2, 1);
        context.startGame();
        
        context.proceedOneRound();
        Assert.assertEquals(810 / 2 /* 物理反弹造成一半伤害反弹 */ * 2, 1550 - c秘银巨石像.getHP());
        Assert.assertEquals(810, 5000 - c占位符1.getHP());
        Assert.assertEquals(810, 5000 - c占位符2.getHP());
    }

    @Test
    public void test物理反弹_魔神() {
        SkillTestContext context = prepare(50, 50, "网页版毁灭之神", "秘银巨石像+物理反弹");
        CardInfo c网页版毁灭之神 = context.addToField(0, 0);
        CardInfo c秘银巨石像 = context.addToField(1, 1);
        context.startGame();

        random.addNextPicks(0); /* 摧毁 */
        context.proceedOneRound();
        Assert.assertEquals(1200 / 2 /* 物理反弹造成一半伤害反弹 */, 5040000 - c网页版毁灭之神.getHP());
        Assert.assertEquals(1200, 1550 - c秘银巨石像.getHP());
    }

    @Test
    public void test物理反弹_狙击() {
        SkillTestContext context = prepare(50, 50, "占位符+狙击10", "占位符+物理反弹");
        CardInfo c占位符1 = context.addToField(0, 0);
        CardInfo c占位符2 = context.addToField(1, 1);
        context.startGame();

        context.proceedOneRound();
        Assert.assertEquals(0 /* 物理反弹不能反弹狙击 */, 5000 - c占位符1.getHP());
        Assert.assertEquals(250, 5000 - c占位符2.getHP());
    }
    
    @Test
    public void test物理反弹_死亡() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像", "占位符+物理反弹");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c占位符 = context.addToField(1, 1);
        c占位符.setBasicHP(200);
        context.startGame();

        context.proceedOneRound();
        Assert.assertEquals(200 / 2 /* 物理反弹造成一半伤害反弹 */, 1400 - c秘银巨石像.getHP());
        Assert.assertTrue(c占位符.isDead());
    }

    /*
     * 物理反弹无法反弹燕返
     */
    @Test
    public void test物理反弹_燕返() {
        SkillTestContext context = prepare(50, 50, "秘银巨石像+物理反弹", "铸造大师+燕返");
        CardInfo c秘银巨石像 = context.addToField(0, 0);
        CardInfo c铸造大师 = context.addToField(1, 1);
        c铸造大师.setBasicHP(200);
        context.startGame();

        context.proceedOneRound();
        Assert.assertEquals(1 /* 不屈 */, c铸造大师.getHP());
        Assert.assertEquals(560 * 2/* 燕返 */, 1550 - c秘银巨石像.getHP());
    }
}
