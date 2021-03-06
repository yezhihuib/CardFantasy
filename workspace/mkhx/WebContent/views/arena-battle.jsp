<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div id="arena-battle" class="main-page" data-role="page" data-title="竞技场战" data-mini="true">
        <div data-role="content">
            <div data-role="collapsible" data-mini="true" data-collapsed="false">
                <h3>设置双方阵容</h3>
                <div>
                    <a id="show-arena-battle-options-button" data-role="button" data-rel="dialog" data-mini="true">点击设置战斗规则</a>
                    <div id="arena-battle-options-text"></div>
                    <div id="player1" class="player ui-grid-c">
                        <div class="ui-block-a ui-block-label-number">
                            <span>玩家1等级: </span>
                        </div>
                        <div class="ui-block-b">
                            <input type="number" id="hero1Lv" data-mini="true" value="75" />
                        </div>
                        <div class="ui-block-c ui-block-label-number">
                            <span>玩家1卡组: </span>
                        </div>
                        <div class="ui-block-d">
                            <a id="build-deck1-button" data-role="button" data-rel="dialog" data-mini="true">组卡</a>
                        </div>
                    </div>
                    <div>
                        <textarea id="deck1" rows="5" cols="40" data-mini="true">金属巨龙*5,降临天使*5,冰封,永冻,雷盾,春风</textarea>
                    </div>
                    <div id="player2" class="player ui-grid-c">
                        <div class="ui-block-a ui-block-label-number">
                            <span>玩家2等级: </span>
                        </div>
                        <div class="ui-block-b">
                            <input type="number" id="hero2Lv" data-mini="true" value="75" />
                        </div>
                        <div class="ui-block-c ui-block-label-number">
                            <span>玩家2卡组: </span>
                        </div>
                        <div class="ui-block-d">
                            <a id="build-deck2-button" data-role="button" data-rel="dialog" data-mini="true">组卡</a>
                        </div>
                    </div>
                    <div>
                        <textarea id="deck2" rows="5" cols="40" data-mini="true">战斗猛犸象+降临传送*5,堕落精灵+转生5*5,岩壁,赤谷,秽土,灼魂</textarea>
                    </div>
                </div>
            </div>
            <div id="command" data-mini="true" data-role="controlgroup" data-type="horizontal">
                <a id="play-auto-1-game-button" class="battle-button" data-role="button" data-mini="true">文字战斗</a>
                <a id="simulate-auto-1-game-button" class="battle-button" data-role="button" data-mini="true">动画战斗</a>
                <a id="play-auto-massive-game-button" class="battle-button" data-role="button" data-mini="true">连续千场</a>
                <a data-role="button" data-mini="true" data-type="bug" href="#">提BUG</a>
            </div>
            <div id="arena-battle-div" data-mini="true" data-role="collapsible" data-collapsed="false">
                <h3>战斗记录</h3>
                <div id="battle-output" class="battle-output">没有战斗</div>
            </div>
        </div>
    </div>