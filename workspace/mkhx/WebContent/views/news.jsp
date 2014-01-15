<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <div id="news" class="main-page" data-role="page" data-category="main-page" data-title="公告" data-mini="true">
        <div class="dashboard" data-role="content" data-theme="c">
            <div>
                <a href="#news-left-panel" data-role="button" data-mini="true" data-theme="b">点击左上角导航按钮开始使用模拟器</a>
            </div>
            <div data-role="collapsible" data-collapsed="false" data-mini="true" data-content-theme="d" data-theme="c">
                <h3>公告</h3>
                <ul>
                    <li>有朋友报告说【恐惧之王】的COST有误，请知情朋友点击<a href="#communication">这里</a>提供10级和15级的COST，多谢。</li>
                    <li>【盗贼】由于卡组变数太大，暂时没有数据很难模拟。如果有朋友对此有研究，请点击<a href="#communication">这里</a>提供情报。</li>
                </ul>
            </div>
            <div data-role="collapsible" data-collapsed="false" data-mini="true" data-content-theme="d" data-theme="c">
                <h3>更新日志</h3>
                <ul class="news-content">
                    <li>2014-01-12: 新功能 - 增加<a href="#test-rp">人品测试房</a>。
                    <li>2014-01-11: 数据修复 - 【世界树之灵】15级COST修正为17。多谢<b>里根</b>和<b>乌鸦</b>提供情报。</li>
                    <li>2014-01-10:<ul>
                        <li>BUG修复 - 修正交流区的留言时间的时区问题，统一改到北京时间。</li>
                        <li>BUG修复 - 现在【横扫】遇上【邪灵汲取】后，后续的攻击按照削弱后的攻击力算。感谢<b>乌鸦</b>提供情报。</li>
                        </ul>
                    </li>
                    <li>2014-01-07:<ul>
                        <li>BUG修复 - 现在回合数正确地从1开始，而不是之前的0，感谢<b>jjkkt</b>提供情报。</li>
                        <li>BUG修复 - 现在被死契技能控制（冰冻、麻痹、锁定、迷惑）的卡牌会在正确的时机解除控制，感谢<b>jjkkt</b>提供情报。</li>
                        <li>BUG修复 - 现在【吸血】能正确地在死契技能发动前发动，感谢<b>a0026881</b>提供情报。</li>
                        </ul>
                    </li>
                    <li>2014-01-06: 魔神战【卡组强度分析】添加【总体平均每分钟伤害】指标，方便大家计算卡组的平均强度。</li>
                    <li>2014-01-05:<ul>
                        <li>BUG修复 - 被控制并且被【迷魂】的卡片现在会打自己英雄了。用吧友w13210886303的话说就是“被绳子绑着被虐待着还要自己用头撞墙！”感谢<b>地花 出 吠喊</b>提供情报。</li>
                        <li>BUG修复 - 被【复活】上来处于【虚弱】状态的卡牌现在不享受符文效果，感谢<b>LLOO</b>、<b>a0026881</b>等朋友提供情报。（记得还有几位朋友也提过，不过名字找不到了，希望能在贴吧私信我或者发模拟器交流区，白白会加上感谢）</li>
                        <li>BUG修复 - 现在【九头妖蛇】在被【复活节兔女郎】复活后能正确的献祭【复活节兔女郎】，感谢<b>老头是废柴</b>等朋友提供情报。（记得还有几位朋友也提过，不过名字找不到了，希望能在贴吧私信我或者发模拟器交流区，白白会加上感谢）</li>
                        <li>优化 - 魔神战的文字战斗现在会在首行显示对魔神造成的伤害，不必再翻页查看。</li>
                        </ul>
                    </li>
                    <li>2014-01-04: 添加新卡【海军司令】王国五星，感谢<b>我就是那么叼</b>和<b>寒风</b>提供情报，感谢<b>上行之风</b>发现BUG。</li>
                    <li>2013-12-30: 添加新卡【天界守护者】王国五星，感谢<b>轩</b>和<b>UII</b>提供情报。</li>
                    <li>2013-12-28: <a href="#communication">交流区</a>改版成类似贴吧的样式，现在可以看到自己的发言和回复了。</li>
                    <li>2013-12-25: 更新5张新卡，感谢<b>a272295516</b>等朋友热情提供情报。
                        <ul><li>森林：蒲公英仙子</li><li>蛮荒：荒漠仙人掌 熊人巫医 半狮人武士 齐天美猴王</li></ul>
                    </li>
                    <li>2013-12-10: 修复【透支】之后没有立即死亡被【回春】救活的BUG，感谢<b>IP为118.*.*.129</b>的朋友提供情报</li>
                    <li>2013-12-09: 应大家的需求，魔神战添加更多统计值（最大、最小、平均伤害，不稳定度）</li>
                    <li>2013-12-08: 修复【脱困】无法防止【迷魂】的BUG，感谢<b>a0026881</b>提供情报</li>
                    <li>2013-12-07: BUG修复
                        <ul>
                            <li>修复【背刺】技能的一个BUG，感谢<b>IP为222.*.*.174</b>的朋友提供情报</li>
                            <li>感谢大家的回复，【毁灭之龙】的HP已修正</li>
                            <li>修复一个【趁胜追击】和【复仇】攻击英雄时候的BUG，感谢<b>DdiTp</b>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-12-06: 更新导航界面</li>
                    <li>2013-12-04: 添加旧魔神的模拟
                        <ul>
                            <li>应广大WP玩家的强烈要求，在魔神战中复了添加了旧魔神的模拟。</li>
                            <li>修复一个封印技能某些时候会导致错误的BUG。</li>
                            <li>感谢<b>东方僧人区 福哥马林</b>积极提出各种建议，希望大家以后回复时候也能把名字留下，这样白白就能明确地表示感谢了</li>
                        </ul>
                    </li>
                    <li>2013-12-03: 魔神更新以及BUG修复
                        <ul>
                            <li>六大魔神技能全面升级，感谢<b>cwal18</b>提供情报</li>
                            <li>修复【虚空假面】的攻击力BUG，感谢<b>slbtsbc</b>和<b>守望月磐</b>提供情报</li>
                            <li>修复【魔法协会长】复活带【封印】或【背刺】卡牌时候的BUG，感谢<b>a0026881</b>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-11-30: BUG修复
                        <ul>
                            <li>修复【横扫】触发额外【裂伤】的BUG，感谢<b>沸腾的冰红茶</b>提供情报</li>
                            <li>修复【世界树之灵】【神圣守护】的BUG，感谢<b>hejiangting8</b>提供情报</li>
                            <li>修复【世界树之灵】COST的BUG，感谢<b>IP为221.*.*.158的朋友</b>提供情报</li>
                            <li>更新【骸骨大将】的第二技能为【[死契]暴风雪6】，感谢<b>IP为112.*.*.134的朋友</b>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-11-28: 全面修复17张新卡的COST
                        <ul>
                            <li>感谢魔卡WIKI的及时更新和各位朋友的提醒</li>
                        </ul>
                    </li>
                    <li>2013-11-27: 修复几个BUG
                        <ul>
                            <li>【精灵女王】的COST从19改为17，15级COST改为19（感谢吧友<b>uiiysss1</b>提供情报）</li>
                            <li>修复地图战中<b>无符文</b>的条件判断错误（感谢吧友<b>勿忘干将</b>和<b>ycphoenix</b>提供情报）</li>
                            <li>修复【魔法协会长】总是复活最后死亡的卡的BUG（感谢吧友<b>PandaGM</b>提供情报）</li>
                            <li>新加的一些卡片的数据都来源于魔卡WIKI，但是这次WIKI上的COST数值都很诡异，多数卡10级和15级的COST没有区别，可能有错，希望大家一起帮忙排查</li>
                        </ul>
                    </li>
                    <li>2013-11-25: 添加17张新卡
                        <ul>
                            <li>王国：血瞳魔剑师 王城巡逻犬 魔能巨石像 科学怪人 驯鹰射手</li>
                            <li>森林：复仇血精灵 裁决巨石像 高等暗精灵 梦境女神 精灵女王</li>
                            <li>蛮荒：仙狐巫女 尖牙捕食者 冰雪巨人 龙角将军</li>
                            <li>地狱：赤红地狱战马 骸骨大将 末日预言师</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>