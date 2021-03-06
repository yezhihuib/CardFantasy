<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cf" uri="/WEB-INF/CardFantasyTags.tld" %>
    <div id="news" class="main-page" data-role="page" data-category="main-page" data-title="魔卡幻想模拟器" data-mini="true">
        <div class="dashboard" data-role="content">
            <div>
                <a href="#news-left-panel" data-role="button" data-mini="true" data-theme="b">点击左上角导航按钮开始使用模拟器</a>
            </div>
            <div data-role="collapsible" data-collapsed="false" data-mini="true">
                <h3>公告</h3>
                <ul>
                    <li><a href="#" data-type="bug">魔卡幻想模拟器贴吧</a>已成立，欢迎大家来提BUG、提需求、提供技能结算细节。</li>
                    <li><a href="<c:url value="/Wiki" />" target="_blank">魔卡幻想WIKI</a>子站点正式成立，作为新的尝试，欢迎大家来<a href="#" data-type="bug">贴吧</a>提需求和报告BUG。</li>
                    <li>注意：iOS9上的UC浏览器里无法使用组卡器。碰到问题的朋友请使用Safari或者Chrome</li>
                    <!-- <li>小提示：如果想保存卡组，只要把卡组的文字表述记下来存在文本文件或者手机备忘录里，下次要用的时候复制回来就行。</li> -->
                    <!-- <li>小提示：可以灵活使用*0的表达法来方便配卡哦。</li> -->
                </ul>
            </div>
            <%--
            <div data-role="collapsible" data-collapsed="false" data-mini="true" data-content-theme="d">
                <h3>技能细节问答，欢迎大家来补完技能细节，使模拟器更准确</h3>
                <ul>
                    <c:forEach items="${questions}" var="question">
                    <li>
                        <span>【<a href="http://tieba.baidu.com/p/<c:out value="${question.tiebaId}" />" target="_blank">我去回答</a>】</span>
                        <c:out value="${question.title}" />
                    </li>
                    </c:forEach>
                    <li><a href="#" data-type="bug">更多问题...</a></li>
                </ul>
            </div>
            --%>
            <div data-role="collapsible" data-collapsed="false" data-mini="true">
                <h3>更新日志</h3>
                <ul class="news-content">
                    <li>2015-11-14: <ul>
                        <li>修复组卡器中【详情】按钮有时候通往不存在页面的BUG</li>
                        <li>去除组卡器中的素材卡，感谢<x>吹水不啰嗦</x>的建议</li>
                    </ul></li>
                    <li>2015-11-08: <ul>
                        <li>修复【骑士守护】计算残血法术伤害的一个问题，感谢<x>idleidol</x>报告BUG</li>
                        <li>修复最近更新自定义小兵后【莉莉丝战】统计数据显示的问题，感谢<x>单曲调调</x>报告BUG</li>
                    </ul></li>
                    <li>2015-11-07: 现在【莉莉丝战】可以自定义小兵了</li>
                    <li>2015-11-05: <ul>
                        <li>添加新卡<cf:c>骑士王血魂</cf:c>，感谢<x>idleidol</x>, <x>1000127900</x>提供情报</li>
                        <li>感谢<x>idleidol</x>实测确认<cf:c>天蝎座</cf:c>的技能</li>
                    </ul></li>
                    <li>2015-11-04: 修复【物理反弹】实现上的一个小问题，感谢<x>魔之座</x>报告BUG</li>
                    <li>2015-11-03: 更新网站主题，同时修复一些手机上黑屏或滚动条失灵的BUG，感谢<x>_R_Y_O_</x>的提醒</li>
                    <li>2015-11-02: 修复<cf:c>恶灵之剑</cf:c>技能数据的错误，感谢<x>dl8o8lb</x>报告BUG</li>
                    <li>2015-11-01: 添加新卡<cf:c>恶魔猎人</cf:c>，不过效果是我YY的</li>
                    <li>2015-10-28: 添加新卡<cf:c>天蝎座</cf:c>，不过效果是我YY的： <ul>
                        <li>普通攻击打上来被冰甲削减到110，所以只能反弹55伤害</li>
                        <li>弱点攻击打上来就能反弹攻击的一半伤害</li>
                        <li>横扫溅射、连锁攻击溅射也能反弹55伤害</li>
                        <li>斩杀因为破冰，所以也能反弹一半伤害</li>
                    </ul></li>
                    <li>2015-10-24: <ul>
                        <li>修复召唤物享受军团加成的BUG，感谢<x>ttmaster1</x>报告BUG</li>
                        <li>修复搜索卡牌无效的BUG，感谢<x>戒不了你IQ</x>报告BUG</li>
                    </ul></li>
                    <li>2015-10-21: 添加新卡<cf:c>叹惋之歌</cf:c>，感谢<x>catree1988</x>(一喵)和<x>1000127900</x>提供的资料。目前的实现是不能破冰甲</li>
                    <li>2015-10-18: <ul>
                        <li>添加【网页版复仇女神】，【网页版噩梦之主】，【网页版深渊魔影】，【网页版毁灭之神】，【网页版万蛛之后】，感谢<x>a27180411</x>提供的资料</li>
                        <li>修复<cf:c>无限之神</cf:c>用星云锁链召唤<cf:c>均衡女神</cf:c>时的BUG，感谢<x>小小艾魔卡</x>报告BUG</li>
                    </ul></li>
                    <li>2015-10-14: <ul>
                        <li>添加新卡<cf:c>晓之奏者</cf:c></li>
                        <li>添加【网页版邪龙之神】，感谢<x>a27180411</x>提供的资料</li>
                    </ul></li>
                    <li>2015-10-11:<ul> 
                        <li>在【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】中添加了【自定义卡图生成器】功能（手机版目前还看不到，只有电脑能用），只需提供自己喜欢的底图和设定，就能生成魔卡样式的卡图:<br />
                            <img src="<c:url value="/resources/img/help/customCardPortraitEntrance.png" />" style="width: 100%; max-width: 406px" />
                            <img src="<c:url value="/resources/img/help/customCardPortrait.png" />" style="width: 100%; max-width: 704px" />
                        </li>
                        <li>把魔王的图标换成了正确的图标，感谢<x>虚梦杀</x>提供信息</li>
                    </ul></li>
                    <li>2015-10-06: <ul>
                        <li>【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】将素材卡单独抽取为一类，感谢<x>虚梦杀</x>的建议</li>
                        <li>【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】修复某些关卡信息不正确的BUG，感谢<x>dzx276941963</x>报告BUG</li>
                        <li>【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】中的卡牌现在有图了，以<cf:c>时光女神</cf:c>为例: <br />
                            <img class="help-img" alt="示例卡牌图片1" src="<c:url value="/resources/img/help/SampleCardPortrait1.png" />" />
                            <img class="help-img" alt="示例卡牌图片1" src="<c:url value="/resources/img/help/SampleCardPortrait2.png" />" />
                        </li>
                    </ul></li>
                    <li>2015-10-05: 【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】中添加了符文和关卡信息</li>
                    <li>2015-10-02: 升级【卡牌WIKI】为【<a href="<c:url value="/Wiki" />" target="_self">魔卡幻想WIKI</a>】，现在可以搜索技能了</li>
                    <li>2015-10-01: 在【<a href="#boss-battle">魔神战</a>】界面添加显示魔神的技能</li>
                    <li>2015-09-29: 添加新卡<cf:c>天秤座</cf:c>、<cf:c>龙灵使者</cf:c>、<cf:c>森林弹唱者</cf:c>、<cf:c>灵峰剑姬</cf:c></li>
                    <li>2015-09-27: 修复一个【斩杀】和【冰甲】相互作用时的BUG，感谢<x>k221135</x>报告BUG</li>
                    <li>2015-09-26: <ul>
                        <li>为【<a href="#lilith-battle">莉莉丝战</a>】添加【活动卡牌】的支持，感谢<x>咬起来喀嚓喀嚓</x>和<x>泥鳅sined</x>提供信息</li>
                        <li>补上<cf:c>炎魔</cf:c>、<cf:c>投掷巨人</cf:c>、<cf:c>鬼符咒术师</cf:c>、<cf:c>恐怖失血者</cf:c>和<cf:c>复仇铠甲</cf:c>的卡图，感谢<x>御洛念</x>和<x>咬起来喀嚓喀嚓</x>提供的卡图</li>
                        <li>加强了【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】的功能和外观，现在魔王、魔神可以正确地显示，也能通过技能来搜索卡牌了，感谢<x>虚梦杀</x>的建议</li>
                    </ul></li>
                    <li>2015-09-24: 添加新卡<cf:c>黄金毒龙</cf:c>、<cf:c>永夜真祖</cf:c>、<cf:c>水母精灵</cf:c>、<cf:c>王国厨师长</cf:c>、<cf:c>鬼符咒术师</cf:c>、<cf:c>丰饶之神</cf:c></li>
                    <li>2015-09-10: <ul>
                        <li>对【<a href="#boss-battle">魔神战</a>】的结果显示方法进行一些微调，感谢<x>主公摇头怕怕</x>的建议</li>
                        <li>添加新卡<cf:c>月樱公主</cf:c>，感谢<x>咬起来喀嚓喀嚓</x>的提醒</li>
                        <li>修复【<a href="#map-battle">地图战</a>】计算种族类胜利条件时的一个BUG，感谢<x>零崎燎识</x>发现BUG</li>
                    </ul></li>
                    <li>2015-09-09: <ul>
                        <li>修复【不屈】会引发【自爆】的BUG，感谢<x>邪眼真王二代目</x>发现BUG</li>
                        <li>修复【不屈】在我方回合被触发时的处理机制，感谢<x>pk810219899</x>发现BUG</li>
                    </ul></li>
                    <li>2015-09-08: 改进【<a href="#boss-battle">魔神战</a>】的结果显示，现在除了基本信息外，还会有伤害分布图：
                        <img class='help-img' alt="伤害分布图" src='<c:url value="/resources/img/help/DamageDistributionChart.png" />' />
                    </li>
                    <li>2015-09-06: 修复一个【送还】、【不动】、【魔神之刃】相互作用时候的BUG，感谢<x>dzx276941963</x>发现BUG</li>
                    <li>2015-09-03: <ul>
                        <li>添加新卡<cf:c>处女座</cf:c>，感谢<x>戒不了你IQ</x>的提醒</li>
                        <li>添加新卡<cf:c>僵尸新娘</cf:c>，感谢<x>MikuFanBunz</x>的提醒</li>
                        <li>添加新卡<cf:c>山羊人前锋</cf:c>，感谢<x>珊0殇 </x>的提醒</li>
                    </ul></li>
                    <li>2015-08-29: <ul>
                        <li>添加新卡<cf:c>鬼灵搜索师</cf:c>，感谢<x>咬起来喀嚓喀嚓</x>的提醒</li>
                        <li>添加新卡<cf:c>不屈之灵</cf:c></li>
                    </ul></li>
                    <li>2015-08-27: 添加新卡<cf:c>雪月花</cf:c></li>
                    <li>2015-08-15: <ul>
                        <li>添加【保存录像】和【<a href="#view-video-page">播放录像</a>】供能<br />
                        <img class='help-img' alt="保存录像" src='<c:url value="/resources/img/help/showSaveVideoDataPanel.jpg" />' />
                        <img class='help-img' alt="复制录像数据" src='<c:url value="/resources/img/help/copyVideoData.jpg" />' /><br />
                        <span>然后将录像数据保存到随便什么地方，或者分享到贴吧</span><br />
                        <span>要观看录像的小伙伴可以把录像数据直接复制进【<a href="#view-video-page">播放录像</a>】的界面里观看</span><br />
                        <li>修复一个魔神战COST显示的BUG，感谢<x>wanghwx2014</x>报告BUG</li>
                    </ul></li>
                    <li>2015-08-14: 添加新卡<cf:c>残翼羽神</cf:c>、<cf:c>无限之神</cf:c>、<cf:c>银河观测者</cf:c>，感谢<x>咬起来喀嚓喀嚓</x>和<x>heixuanfeng54</x>的提醒</li>
                    <li>2015-08-04: <ul>
                        <li>更新魔神，增加【强魔刃复仇女神】、【强魔咒邪龙之神】、【强魔甲噩梦之主】、【强魔咒毁灭之神】、【强魔甲深渊影魔】、【强魔刃万蛛之后】来对应最新强化过的魔神，感谢<x>We_Yukirin</x>, <x>鲁鲁修司</x>提供情报</li>
                        <li>更新【战争怒吼】在对方场上有10张卡以上时的行为，和游戏一致，感谢<x>mrmrrain</x>提供情报</li>
                    </ul></li>
                    <li>2015-08-02: <ul>
                        <li>修复一个【转生】的BUG，感谢<x>中国移动坑爹6</x>, <x>WS零度冰点 </x>报告BUG</li>
                        <li>添加新卡<cf:c>精灵投掷者</cf:c>、<cf:c>精灵重甲弓手</cf:c>、<cf:c>失魂哥布林</cf:c>，感谢<x>虚梦杀</x>提供资料</li>
                    </ul></li>
                    <li>2015-08-01: <ul>
                        <li>修复一个【不屈】和治疗技能的BUG，感谢<x>薛定谔只喵</x>, <x>real11inter</x>报告BUG</li>
                        <li>现在【地图战】界面内可以看到该图的敌方阵容了，感谢<x>dl8o8lb</x>的提议</li>
                        <li>添加新卡<cf:c>迅捷豹女</cf:c></li>
                        <li>添加新卡<cf:c>狮子座</cf:c></li>
                    </ul></li>
                    <li>2015-07-28: <ul>
                        <li>修复<cf:c>大毒汁之王</cf:c>和<cf:c>谎言之神</cf:c>的技能BUG，感谢<x>saxitong</x>, <x>l793366568</x>, <x>平平一指</x>, <x>仰落灬</x>, <x>裂空座2012</x>报告BUG</li>
                        <li>修复【魔力印记】相关的技能BUG，感谢<x>裂空座2012</x>报告BUG</li>
                        <li>修改【守护】技能在英雄残血时候的计算方法，和慕和的行为一致，感谢<x>l793366568</x>提供的信息</li>
                    </ul>
                    <li>2015-07-26: <ul>
                        <li>添加新技能【精神狂乱】，感谢<x>l793366568</x>, <x>Mr懵</x>, <x>qazqwe240</x>, <x>凉宫春日de倔强</x>, <x>黯影羽</x>的帮助</li>
                        <li>添加17图所有关卡，感谢<x>qhd252623</x>, <x>l793366568</x>提供的丰富资料</li>
                        <li>添加新卡<cf:c>荆棘妖姬</cf:c>、<cf:c>恶魔傀儡</cf:c>、<cf:c>魔导骑兵</cf:c>、<cf:c>复仇铠甲</cf:c>，感谢<x>We_Yukirin</x>的提醒</li>
                        <li>添加新卡<cf:c>吞噬守卫者</cf:c>，感谢<x>虚梦杀</x>的提醒</li>
                        <li>修复莉莉丝战不检查卡组的BUG，感谢<x>wswc2</x>发现BUG</li>
                        <li>修复一个【奋战】的计算BUG，感谢<x>brunoweiyang</x>发现BUG</li>
                    </ul></li>
                    <li>2015-07-25: <ul>
                        <li>添加新卡<cf:c>大毒汁之王</cf:c>，感谢<x>l793366568</x>提供资料</li>
                        <li>添加新卡<cf:c>魔装机神</cf:c>，感谢<x>仰落灬</x>提供资料</li>
                        <li>添加新卡<cf:c>希望之壳</cf:c>，感谢<x>We_Yukirin</x>提供资料</li>
                    </ul></li>
                    <li>2015-07-17: 添加新卡<cf:c>九命猫神</cf:c>，感谢<x>艾弗森张伯伦</x>提供资料</li>
                    <li>2015-07-11: <ul>
                        <li>添加新卡<cf:c>七彩之影</cf:c>、<cf:c>巨蟹座</cf:c>，感謝<x>竞彩小菜鸟</x>, <x>華麗麗摔倒</x>, <x>0蝶舞九天0</x>的提醒</li>
                        <li>修复【破魔手】技能的伤害BUG，感谢<x>裂空座2012</x>发现</li>
                        <li><cf:c>血祭恶魔</cf:c>、<cf:c>血炼巫妖</cf:c>、<cf:c>血瞳魔剑师</cf:c>、<cf:c>血色骑士</cf:c>四张卡的旧卡名称现在也可以使用了，感谢<x>akb48zwy</x>的建议</li>
                    </ul></li>
                    <li>2015-06-20: <ul>
                        <li>添加新卡<cf:c>命运占卜师</cf:c></li>
                        <li>为魔神战添加了【随机强杂兵】模式，此模式中魔神的杂兵实力将明显增强，用来配合最近的魔神更新。</li>
                        <li>为了响应焚化部的号召，部分卡牌改名:<ul>
                            <li>血祭恶魔 -> 恶魔伯爵</li>
                            <li>血炼巫妖 -> 巫妖学徒</li>
                            <li>血瞳魔剑师 -> 赤瞳魔剑师</li>
                            <li>血色骑士 -> 暗色骑士</li>
                        </ul></li>
                    </ul></li>
                    <li>2015-06-13: <ul>
                        <li>添加新卡<cf:c>狡诈邪神</cf:c>，感谢<x>dl8o8lb</x>, <x>希埃尔之遗物</x></li>
                        <li>修改魔神名，不再用[新]、[旧]前缀，而用魔神具有代表性技能作前缀，比如<cf:c>送还复仇女神</cf:c>。感谢<x>wolfeopen</x>, <x>ggmmhaha</x>, <x>eudfhgtdr</x></li>
                    </ul></li>
                    <li>2015-06-07: <ul>
                        <li>添加新卡<cf:c>彼岸使者</cf:c>，感谢<x>real11inter</x>, <x>傲娇王孙</x>, <x>957065547</x>的提供情报</li>
                    </ul></li>
                    <li>2015-06-05: <ul>
                        <li>添加新卡<cf:c>双子座</cf:c></li>
                        <li>添加新卡<cf:c>机械魔偶</cf:c>，感谢<x>青的魔法使</x></li>
                    </ul></li>
                    <li>2015-05-23: <ul>
                        <li>添加新技能【闪光弹】、【致盲】，感谢<x>947053627</x>, <x>曾经的雪寂</x>, <x>裘可拉kiss</x>, <x>raffinat</x>, <x>灼眼阿卡林</x>, <x>司徒不想</x>, <x>唯一心3</x>, <x>为何打后</x>的帮助
                        <li>添加新卡<cf:c>堕落修女</cf:c>、<cf:c>金牛座</cf:c></li>
                    </ul></li>
                    <li>2015-05-21: 添加新卡<cf:c>百花女神</cf:c>、<cf:c>深渊吞噬者</cf:c>、<cf:c>野猪人卫士</cf:c></li>
                    <li>2015-05-20: 添加新卡<cf:c>恐怖失血者</cf:c>，感謝<x>lrxlrx207</x></li>
                    <li>2015-05-17: 添加新技能【燕返】，添加新卡<cf:c>欲望惩罚者</cf:c>、<cf:c>月镰杀手</cf:c>，感谢<x>real11inter</x>, <x>bendlueng99</x>, <x>千下</x>, <x>jiye30</x>的帮助</li>
                    <li>2015-05-10: <ul>
                        <li>添加新卡<cf:c>羽蛇神</cf:c>、<cf:c>屠龙勇士</cf:c></li>
                        <li>现在竞技场战的胜利条件可以用文字自由设定了，点击[<a href="#help" target="_blank">查看胜利条件的写法</a>]</li>
                        <li>为了方便配卡，现在可以使用【符文+0】的表达法了</li>
                        <li>现在如果玩家COST、卡槽、符文槽不符合规则，错误会显示在战斗结果里，但战斗模拟仍然继续</li>
                        <li>十分感谢<x>akb48zwy</x>, <x>real11inter</x>的建议和协助</li>
                    </ul></li>
                    <li>2015-05-09: <ul>
                        <li>取消COST和卡槽数量限制，方便地下城的模拟</li>
                        <li>现在可以在竞技场战里设置胜利条件了: <br />
                            <img class='help-img' alt="胜利条件1" src='<c:url value="/resources/img/help/VictoryCondition1.png" />' />
                            <img class='help-img' alt="胜利条件2" src='<c:url value="/resources/img/help/VictoryCondition2.png" />' />
                        </li>
                    </ul></li>
                    <li>2015-04-25: <ul>
                        <li>添加新卡<cf:c>投掷巨人</cf:c>，感谢<x>晶蓝矢秩</x>提醒</li>
                        <li>添加新卡<cf:c>白羊座</cf:c>，感谢<x>不小心到了这里</x>, <x>联邦兽王</x>, <x>lg5zh</x>, <x>hatachaing</x>, <x>毓飞扬</x>, <x>li87684765</x>, <x>real11inter</x>的帮助</li>
                    </ul></li>
                    <li>2015-03-28: 添加新卡<cf:c>元素之灵</cf:c>，关于同调技能尚不完善，欢迎大家踊跃回答问题补充技能细节。感谢<x>不渝小溪</x>, <x>老子衿</x>, <x>brunoweiyang</x>, <x>裘可拉kiss</x>的帮助</li>
                    <li>2015-03-26: 添加新卡<cf:c>精灵王亡灵</cf:c></li>
                    <li>2015-03-21: 添加【<a href="<c:url value="/Wiki" />" target="_self">WIKI</a>】页面，现在可以直接在站内查询卡牌数据资料了</li>
                    <li>2015-03-15: <ul>
                        <li>修复COST计算上的一些问题，感谢<x>十二下弦月</x>, <x>sincever123</x>, <x>习题盖浇饭</x>, <x>za7183</x>, <x>NobodyHere_</x></li>
                        <li>修复【旧噩梦之主】的攻击力问题，感谢<x>dzx276941963</x></li>
                        <li>修复地图战中计算卡牌星数胜利条件时把召唤物也算入的BUG，感谢<x>赵泽杭0</x></li>
                    </ul></li>
                    <li>2015-02-27：<ul>
                        <li>添加新卡<cf:c>战场舞姬</cf:c></li>
                        <li>修复一个<cf:c>复活节兔女郎</cf:c>的BUG, 感谢<x>傲娇王孙</x>报告BUG</li>
                    </ul></li>
                    <li>2015-02-15: <ul>
                        <li>添加新卡：<cf:c>炎魔</cf:c>、<cf:c>战意斗神</cf:c>、<cf:c>大毒汁怪</cf:c></li>
                        <li>添加16图的地图战模拟</li>
                        <li>为了方便优化卡组，现在可以使用<b>凤凰*0</b>这样的表示法了</li>
                    </ul></li>
                    <li>2015-02-14: <ul>
                        <li>添加新卡：<cf:c>爱神</cf:c>、<cf:c>圣泉之灵</cf:c></li>
                        <li>修复【献祭】和【复活】作用是的一个BUG，感谢<x>My_陌艾</x>报告BUG</li>
                    </ul></li>
                    <li>2015-02-13: <ul>
                        <li>修复旧魔神吃各种技能的BUG，感谢<x>孤光斩月</x>报告BUG</li>
                        <li>修复召唤物会享受基础加成的BUG，感谢<x>悪丿娘殿下</x>报告BUG</li>
                        <li>添加新卡：<cf:c>战场扫荡者</cf:c>、<cf:c>魔幻人偶师</cf:c></li>
                    </ul></li>
                    <li>2015-01-31: 旧魔神改成第一版的魔神，以便和美服马服对应</li>
                    <li>2015-01-30: 修复一个【鲜血盛宴】极端情况下的BUG</li>
                    <li>2015-01-23: <ul>
                        <li>修复<cf:c>圣堂执政官</cf:c>的数据BUG，感谢<x>血色☆星辰</x>报告BUG</li>
                        <li>添加<cf:c>邪魔屠夫</cf:c>卡图，感谢<x>susss222</x>提供数据</li>
                        <li>修正【森林沐浴】技能结算方法，感谢<x>小歆时代</x>提供的大量实测数据</li>
                    </ul></li>
                    <li>2015-01-21: <ul>
                        <li>修复数据BUG - <cf:c>圆月魔女</cf:c>3技能由【净化】改成【神性祈求】，感谢<x>susss222</x>报告BUG</li>
                        <li>添加<cf:c>巨石投石车手</cf:c>的卡图</li>
                        <li>修复【献祭】不发动死契技能的BUG，感谢<x>千下</x>报告BUG</li>
                    </ul></li>
                    <li>2015-01-20: <ul>
                        <li>修复【大地之盾】的BUG，感谢<x>catree1988</x>, <x>qazqwe240</x>报告BUG</li>
                        <li>添加<cf:c>咒怨稻草人</cf:c>的卡图，感谢<x>qazqwe240</x>提供图片</li>
                        <li>添加新卡<cf:c>赤面天狗</cf:c></li>
                    </ul></li>
                    <li>2015-01-17: <ul>
                        <li>新增莉莉丝活动卡<cf:c>半人鱼恶魔</cf:c>、<cf:c>圣灵大祭司</cf:c>、<cf:c>圣城卫士</cf:c>、<cf:c>咒怨稻草人</cf:c>、<cf:c>邪魔屠夫</cf:c>、<cf:c>巨石投石车手</cf:c>，感谢<x>绯弹亚丝娜</x>, <x>yezhihuib</x>, <x>程love翔</x>, <x>susss222</x>提供数据</li>
                        <li>恢复了旧魔神的模拟，方便马服美服用户</li>
                        <li>添加新卡：<cf:c>世界杯·美国</cf:c>、<cf:c>世界杯·法国</cf:c>、<cf:c>世界杯·德国</cf:c>、<cf:c>世界杯·韩日</cf:c>、<cf:c>世界杯·南非</cf:c>、<cf:c>世界杯·巴西</cf:c>，感谢<x>程love翔</x>提供数据</li>
                        <li>修复【不屈】和【狙击】【治疗】【吸血】作用时的BUG，感谢<x>King_Goldencat</x>, <x>piaoyizhiying</x>, <x>壹滴海洋</x>, <x>流光映梦</x>提供信息</li>
                    </ul></li>
                    <li>2015-01-16: 修复【回魂】的BUG，感谢<x>誓死支持双剑</x>, <x>欲印弥彰</x>, <x>唔滴哟</x>, <x>逆骨魔方</x>, <x>文文ww0327</x>, <x>下一片海enjoy</x>, <x>悠零幽灵</x>报告BUG</li>
                    <li>2015-01-15: <ul>
                        <li>修复一个【送还】的BUG</li>
                        <li>修复莉莉丝平均攻击伤害的计算BUG，感谢<x>仙桃大神</x>报告BUG</li>
                    </ul></li>
                    <li>2015-01-14: <ul>
                        <li>修复【轻灵】的BUG，感谢<x>魔之座</x>报告BUG</li>
                        <li>修复<cf:c>亡灵守护神</cf:c>数据BUG，感谢<x>悪丿娘殿下</x>报告BUG</li>
                    </ul></li>
                    <li>2015-01-13: 修复莉莉丝英雄血量的BUG，感谢<x>office12345</x>, <x>wufan0908</x>, <x>shit水水更健康</x>, <x>enjoy小小康</x>报告BUG</li>
                    <li>2015-01-12: <ul>
                        <li>现在<a href="#arena-battle">竞技场战</a>可以调整全局卡牌和英雄强度了</li>
                        <li>修复<a href="#lilith-battle">莉莉丝战</a>无法使用组卡器的BUG，感谢<x>欺一世时光_</x>, <x>哈哈哈雷宇桑</x>报告BUG</li>
                    </ul></li>
                    <li>2015-01-11: <ul>
                        <li>添加13-15地图，感谢<x>一喵</x>提供大量模拟器直接可用的信息</li>
                        <li>修复一个关于锁定状态下邪灵汲取的BUG，感谢<x>壹滴海洋</x>发现BUG</li>
                        <li>修正降临系技能的发动顺序，感谢<x>快到碗里来mys</x>, <x>程love翔</x>, <x>原追忆</x>, <x>susss222</x>, <x>恶梦之猫</x>, <x>UlysessDH</x>, <x>血月之下为战鬼</x>提供信息</li>
                    </ul></li>
                    <li>2015-01-10: 添加新模式<a href="#lilith-battle">莉莉丝战</a>，感谢<x>yezhihuib</x>大神的资料和无私奉献，感谢<x>小猫崽k</x>, <x>快到碗里来mys</x>, <x>阿呆Frank</x>, <x>阿里兰朵</x>, <x>adssgd</x>的热心帮助。
                    <li>2015-01-09: 添加新卡<cf:c>驭灵法师</cf:c>，感谢<x>均卡</x>提供数据</li>
                    <li>2015-01-08: <ul>
                        <li>添加新卡<cf:c>圣泉元神</cf:c></li>
                        <li>对魔神战杂兵进行修正，感谢<x>程love翔</x>, <x>AIYIfancy</x>, <x>哈哈哈雷宇桑</x>, <x>三头龙巫妖</x>, <x>wennington</x>, <x>原追忆</x>提供信息</li>
                        <li>BUG修复：修正一个【死亡印记】的BUG，感谢<x>susss222</x>报告BUG</li>
                    </ul></li>
                    <li>2015-01-07: 为【魔神战】添加【随机杂兵】模式，感谢<x>徽飞湮咩</x>, <x>zx16792007</x>提供信息</li>
                    <li>2015-01-06: 添加新卡<cf:c>黄金金属巨龙</cf:c>，感谢<x>雪拾玖</x>提供数据</li>
                    <li>2015-01-04: <ul>
                        <li>添加新卡<cf:c>均衡女神</cf:c>，感谢<x>1243712047</x>, <x>快到碗里来mys</x>提供信息</li>
                        <li>添加新技能【死亡印记】，感谢<x>susss222</x>提供信息</li>
                        <li>添加新卡<cf:c>灵俑暗杀者</cf:c>、<cf:c>鬣蜥人密探</cf:c>、<cf:c>贪婪之心</cf:c></li>
                    </ul></li>
                    <li>2015-01-03: <ul>
                        <li>添加新卡<cf:c>铁血剑豪</cf:c>、<cf:c>铸造大师</cf:c>、<cf:c>巨龙剑士</cf:c>、<cf:c>重装半鹿人</cf:c>、<cf:c>太古魔狼</cf:c></li>
                        <li>添加技能【不屈】，感谢<x>aquoo66</x>, <x>NoMoCol</x>, <x>程love翔</x>, <x>平平一指</x>, <x>我是菜鸟430</x>, <x>快到碗里来mys</x>提供信息</li>
                        <li>修复【鬼步】激活条件的BUG，感谢<x>出发1985</x>报告BUG</li>
                        <li>修复【龙吟】会造成null错误的BUG，感谢<x>cxqlyt</x>报告BUG</li>
                        <li>修复【降临-全体阻碍】技能未发动的BUG，感谢<x>出发1985</x>报告BUG</li>
                        <li>修复<cf:c>峦龙</cf:c>的种族错误，感谢<x>出发1985</x>报告BUG</li>
                        <li>添加符文【神祈】，感谢<x>出发1985</x>提供信息</li>
                    </ul></li>
                    <li>2015-01-02: <ul>
                        <li>修复<cf:c>陨星魔法使</cf:c>召唤时候会null错误的BUG，感谢<x>为何打后</x>报告BUG</li>
                        <li>修复召唤物死亡时秽土会尝试转生的BUG，感谢<x>susss222</x>报告BUG</li>
                        <li>添加符文【玄石】、【龙吟】，感谢<x>麋鹿吉特</x>, <x>susss222</x>提供信息</li>
                    </ul></li>
                    <li>2015-01-01: <ul>
                        <li>添加新卡<cf:c>湿地黏龙</cf:c>蛮荒四星</li>
                        <li>添加新卡<cf:c>怒雪咆哮</cf:c>蛮荒五星，感谢<x>麋鹿吉特</x>提供数据。</li>
                        <li>添加新技能【大地之盾】，感谢<x>雪拾玖</x>, <x>zx16792007</x>, <x>快到碗里来mys</x>, <x>为何打后</x>, <x>暗之影5</x>提供信息</li>
                        <li>完成【复仇女神】魔神、【万蛛之后】魔神，感谢<x>麋鹿吉特</x>提供数据。</li>
                        <li>添加新卡<cf:c>血色骑士</cf:c>王国四星、<cf:c>无尽噩梦</cf:c>地狱五星</li>
                    </ul></li>
                    <li>2014-12-31: 添加各级【莉莉丝】、<cf:c>星夜女神</cf:c>森林五星，完成【噩梦之主】魔神</li>
                    <li>2014-12-30: 添加<cf:c>陨星魔法师</cf:c>王国五星、<cf:c>梦境耳语者</cf:c>森林四星、<cf:c>乌鸦人长老</cf:c>蛮荒四星、<cf:c>谎言之神</cf:c>地狱五星、<cf:c>瓦尔基里英灵</cf:c>王国四星</li>
                    <li>2014-12-28: 添加<cf:c>骨灵巫女</cf:c>地狱五星、<cf:c>月蚀兽</cf:c>地狱五星</li>
                    <li>2014-12-27: 添加<cf:c>逐月饿狼</cf:c>地狱五星、<cf:c>蝗虫公爵</cf:c>地狱五星、<cf:c>镜魔</cf:c>地狱四星、<cf:c>蝠王恶灵</cf:c>地狱四星</li>
                    <li>2014-12-26: 添加<cf:c>死域军神</cf:c>地狱五星、<cf:c>圆月魔女</cf:c>地狱五星、<cf:c>魅灵吞噬者</cf:c>地狱四星、<cf:c>峦龙</cf:c>地狱五星</li>
                    <li>2014-12-25: 添加<cf:c>暗影牧师</cf:c>地狱四星、<cf:c>地狱炎车手</cf:c>地狱四星、<cf:c>炼狱玩具熊</cf:c>地狱四星、<cf:c>血妖舞女</cf:c>地狱四星</li>
                    <li>2014-12-24: 添加<cf:c>逐日凶狼</cf:c>蛮荒五星、<cf:c>刃羽钢隼</cf:c>蛮荒四星、<cf:c>摩羯大祭司</cf:c>蛮荒五星、<cf:c>荒野巫医</cf:c>蛮荒四星</li>
                    <li>2014-12-23: 添加<cf:c>兽灵使者</cf:c>蛮荒四星、<cf:c>盾墙巨兽</cf:c>蛮荒四星、<cf:c>狂野雷电</cf:c>蛮荒四星、<cf:c>野猪人萨满</cf:c>蛮荒四星</li>
                    <li>2014-12-22: 添加<cf:c>浅海水兽</cf:c>蛮荒四星、<cf:c>蛮族酋长</cf:c>蛮荒四星、<cf:c>神谕火狐</cf:c>蛮荒五星、<cf:c>山羊人先锋</cf:c>蛮荒四星</li>
                    <li>2014-12-21: 添加<cf:c>幸运星贤者</cf:c>森林四星、<cf:c>破晓守卫</cf:c>森林五星、<cf:c>洞察之鹰</cf:c>森林四星、<cf:c>人马大贤者</cf:c>森林四星</li>
                    <li>2014-12-20: 添加<cf:c>浮云青鸟</cf:c>森林五星、<cf:c>尖啸曼陀罗</cf:c>森林四星、<cf:c>雷雕之魂</cf:c>森林五星、<cf:c>星辰之蝶</cf:c>森林四星</li> 
                    <li>2014-12-19: 添加<cf:c>圣炎魔导师</cf:c>王国五星、<cf:c>红月女仆</cf:c>王国三星、<cf:c>飞行器机师</cf:c>王国四星、<cf:c>琴舞之风</cf:c>森林四星</li>
                    <li>2014-12-18: 添加<cf:c>幻术舞姬</cf:c>王国四星、<cf:c>钢铁巨神兵</cf:c>王国五星、<cf:c>鬼斩破</cf:c>王国四星、<cf:c>星辰主宰</cf:c>王国五星</li>
                    <li>2014-12-17: 添加<cf:c>死兆星</cf:c>地狱五星、<cf:c>东方幻术师</cf:c>王国四星、<cf:c>大图书馆长</cf:c>王国四星、<cf:c>重甲冲锋兵</cf:c>王国四星</li>
                    <li>2014-02-06: 添加<cf:c>浴火龙女</cf:c>王国五星</li>
                    <li>2014-01-24: 添加【熊老师】（同时也会加入到人品测试）<ul>
                        <li>种族：萌货，星数：五星，速度：4，10级COST：0，15级COST：0</li>
                        <li>10级二维：AT=800, HP=2000</li>
                        <li>15级二维：AT=1000, HP=2250</li>
                        <li>技能1：[降临]关小黑屋1 - 随机送还对手场上一张卡片，关入小黑屋，可被免疫、不动抵抗。</li>
                        <li>技能2: 吐槽2 - 随机吐槽对手场上两张卡片，导致其精神崩溃，对自己造成当前攻击力的伤害，可被免疫、脱困抵抗。</li>
                        <li>技能3: 被插出五星1 - 被物理攻击命中并承受伤害时，30%几率随机召唤卡堆中的一张五星卡片上场，可发动降临技。</li>
                        </ul>
                    </li>
                    <li>2014-01-23: 在动画中给魔神加上了卡图，魔神现在终于有脸了。</li>
                    <li>2014-01-18: 添加符文 - 【鬼步】（群体脱困），场上地狱大于2张发动，感谢<a data-type="user">高端大气上档次</a>提供情报。</li>
                    <li>2014-01-15:<ul>
                        <li>新卡加入 - <cf:c>海军水手</cf:c>王国三星</li>
                        <li>数据修复 - <cf:c>世界树之灵</cf:c>10级COST修正为16。多谢<a data-type="user">长天渔歌</a>提供情报。</li>
                        <li>数据修复 - <cf:c>恐惧之王</cf:c>15级COST修正为17。多谢<a data-type="user">高端大气上档次</a>提供情报。</li>
                        </ul>
                    </li>
                    <li>2014-01-12: 新功能 - 增加<a href="#test-rp">人品测试房</a>。
                    <li>2014-01-11: 数据修复 - <cf:c>世界树之灵</cf:c>15级COST修正为17。多谢<a data-type="user">里根</a>和<a data-type="user">乌鸦</a>提供情报。</li>
                    <li>2014-01-10:<ul>
                        <li>BUG修复 - 修正交流区的留言时间的时区问题，统一改到北京时间。</li>
                        <li>BUG修复 - 现在【横扫】遇上【邪灵汲取】后，后续的攻击按照削弱后的攻击力算。感谢<a data-type="user">乌鸦</a>提供情报。</li>
                        </ul>
                    </li>
                    <li>2014-01-07:<ul>
                        <li>BUG修复 - 现在回合数正确地从1开始，而不是之前的0，感谢<a data-type="user">jjkkt</a>提供情报。</li>
                        <li>BUG修复 - 现在被死契技能控制（冰冻、麻痹、锁定、迷惑）的卡牌会在正确的时机解除控制，感谢<a data-type="user">jjkkt</a>提供情报。</li>
                        <li>BUG修复 - 现在【吸血】能正确地在死契技能发动前发动，感谢<a data-type="user">a0026881</a>提供情报。</li>
                        </ul>
                    </li>
                    <li>2014-01-06: 魔神战【卡组强度分析】添加【总体平均每分钟伤害】指标，方便大家计算卡组的平均强度。</li>
                    <li>2014-01-05:<ul>
                        <li>BUG修复 - 被控制并且被【迷魂】的卡片现在会打自己英雄了。用吧友<a data-type="user">w13210886303</a>的话说就是“被绳子绑着被虐待着还要自己用头撞墙！”感谢<a data-type="user">地花出吠喊</a>提供情报。</li>
                        <li>BUG修复 - 被【复活】上来处于【复活】状态的卡牌现在不享受符文效果，感谢<a data-type="user">LLOO</a>、<a data-type="user">a0026881</a>等朋友提供情报。</li>
                        <li>BUG修复 - 现在<cf:c>九头妖蛇</cf:c>在被<cf:c>复活节兔女郎</cf:c>复活后能正确的献祭<cf:c>复活节兔女郎</cf:c>，感谢<a data-type="user">老头是废柴</a>等朋友提供情报。</li>
                        <li>优化 - 魔神战的文字战斗现在会在首行显示对魔神造成的伤害，不必再翻页查看。</li>
                        </ul>
                    </li>
                    <li>2014-01-04: 添加新卡<cf:c>海军司令</cf:c>王国五星，感谢<a data-type="user">我就是那么叼</a>和<a data-type="user">寒风</a>提供情报，感谢<a data-type="user">上行之风</a>发现BUG。</li>
                    <li>2013-12-30: 添加新卡<cf:c>天界守护者</cf:c>王国五星，感谢<a data-type="user">轩</a>和<a data-type="user">UII</a>提供情报。</li>
                    <li>2013-12-25: 更新5张新卡，感谢<a data-type="user">a272295516</a>等朋友热情提供情报。
                        <ul><li>森林：<cf:c>蒲公英仙子</cf:c></li><li>蛮荒：<cf:c>荒漠仙人掌</cf:c> <cf:c>熊人巫医</cf:c> <cf:c>半狮人武士</cf:c> <cf:c>齐天美猴王</cf:c></li></ul>
                    </li>
                    <li>2013-12-10: 修复【透支】之后没有立即死亡被【回春】救活的BUG，感谢<b>IP为118.*.*.129</b>的朋友提供情报</li>
                    <li>2013-12-09: 应大家的需求，魔神战添加更多统计值（最大、最小、平均伤害，不稳定度）</li>
                    <li>2013-12-08: 修复【脱困】无法防止【迷魂】的BUG，感谢<a data-type="user">a0026881</a>提供情报</li>
                    <li>2013-12-07: BUG修复
                        <ul>
                            <li>修复【背刺】技能的一个BUG，感谢<b>IP为222.*.*.174</b>的朋友提供情报</li>
                            <li>感谢大家的回复，<cf:c>毁灭之龙</cf:c>的HP已修正</li>
                            <li>修复一个【趁胜追击】和【复仇】攻击英雄时候的BUG，感谢<a data-type="user">DdiTp</a>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-12-06: 更新导航界面</li>
                    <li>2013-12-04: 添加旧魔神的模拟
                        <ul>
                            <li>应广大WP玩家的强烈要求，在魔神战中复了添加了旧魔神的模拟</li>
                            <li>修复一个封印技能某些时候会导致错误的BUG</li>
                            <li>感谢<a data-type="user">福哥马林</a>积极提出各种建议</li>
                        </ul>
                    </li>
                    <li>2013-12-03: 魔神更新以及BUG修复
                        <ul>
                            <li>六大魔神技能全面升级，感谢<a data-type="user">cwal18</a>提供情报</li>
                            <li>修复<cf:c>虚空假面</cf:c>的攻击力BUG，感谢<a data-type="user">slbtsbc</a>和<b>守望月磐</b>提供情报</li>
                            <li>修复<cf:c>魔法协会长</cf:c>复活带【封印】或【背刺】卡牌时候的BUG，感谢<a data-type="user">a0026881</a>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-11-30: BUG修复
                        <ul>
                            <li>修复【横扫】触发额外【裂伤】的BUG，感谢<a data-type="user">沸腾的冰红茶</a>提供情报</li>
                            <li>修复<cf:c>世界树之灵</cf:c>【神圣守护】的BUG，感谢<a data-type="user">hejiangting8</a>提供情报</li>
                            <li>修复<cf:c>世界树之灵</cf:c>COST的BUG，感谢<b>IP为221.*.*.158的朋友</b>提供情报</li>
                            <li>更新<cf:c>骸骨大将</cf:c>的第二技能为【[死契]暴风雪6】，感谢<b>IP为112.*.*.134的朋友</b>提供情报</li>
                        </ul>
                    </li>
                    <li>2013-11-28: 全面修复17张新卡的COST
                        <ul>
                            <li>感谢魔卡WIKI的及时更新和各位朋友的提醒</li>
                        </ul>
                    </li>
                    <li>2013-11-27: 修复几个BUG
                        <ul>
                            <li><cf:c>精灵女王</cf:c>的COST从19改为17，15级COST改为19（感谢吧友<a data-type="user">uiiysss1</a>提供情报）</li>
                            <li>修复地图战中<b>无符文</b>的条件判断错误（感谢吧友<a data-type="user">勿忘干将</a>和<a data-type="user">ycphoenix</a>提供情报）</li>
                            <li>修复<cf:c>魔法协会长</cf:c>总是复活最后死亡的卡的BUG（感谢吧友<a data-type="user">PandaGM</a>提供情报）</li>
                            <li>新加的一些卡片的数据都来源于魔卡WIKI，但是这次WIKI上的COST数值都很诡异，多数卡10级和15级的COST没有区别，可能有错，希望大家一起帮忙排查</li>
                        </ul>
                    </li>
                    <li>2013-11-25: 添加17张新卡
                        <ul>
                            <li>王国：<cf:c>血瞳魔剑师</cf:c> <cf:c>王城巡逻犬</cf:c> <cf:c>魔能巨石像</cf:c> <cf:c>科学怪人</cf:c> <cf:c>驯鹰射手</cf:c></li>
                            <li>森林：<cf:c>复仇血精灵</cf:c> <cf:c>裁决巨石像</cf:c> <cf:c>高等暗精灵</cf:c> <cf:c>梦境女神</cf:c> <cf:c>精灵女王</cf:c></li>
                            <li>蛮荒：<cf:c>仙狐巫女</cf:c> <cf:c>尖牙捕食者</cf:c> <cf:c>冰雪巨人</cf:c> <cf:c>龙角将军</cf:c></li>
                            <li>地狱：<cf:c>赤红地狱战马</cf:c> <cf:c>骸骨大将</cf:c> <cf:c>末日预言师</cf:c></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>