/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : hwj

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-07-04 17:05:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `games`
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES ('1','姣佺伃鎴樺＋4','id software','299','DOOM.jpg');
INSERT INTO `games` VALUES ('2','鏉�墜6','Io Interactive','299','HITMAN6.jpg');
INSERT INTO `games` VALUES ('3','鍥藉湡闃茬嚎2','cryteck','350','GTFX2.jpg');
INSERT INTO `games` VALUES ('4','绁炵娴峰煙4','椤界毊鐙','399','SMHY4.jpg');
INSERT INTO `games` VALUES ('5','闀滀箣杈圭紭鍌寲鍓','EA','250','JZBY.jpg');

-- ----------------------------
-- Table structure for `gameviews`
-- ----------------------------
DROP TABLE IF EXISTS `gameviews`;
CREATE TABLE `gameviews` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `details` text,
  `price` int(11) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gameviews
-- ----------------------------
INSERT INTO `gameviews` VALUES ('1', '姣佺伃鎴樺＋4', 'id sofrware', '銆婃瘉鐏垬澹�銆�Doom 4)鈥滄槸id software鍏徃琛�恫鐨勪竴閮ㄥ垎锛岄渶瑕侀泦鍚堜笟鐣屾渶妫掔殑澶╄祴鍜屾渶鑱槑鐨勫ご鑴戞墠鑳戒负鐜╁甯︽潵鏈�柊鐨勪竴浣溿�鈥漒r\nidSoftware鍏徃鍒朵綔浜篔ohnCarmack姝ｅ紡瀹ｅ竷锛氭棗涓嬭繍鐢ㄤ笅涓�唬鍥惧舰寮曟搸鎶�湳寮�彂鐨勬柊浣溿�鐙傛毚銆嬪拰銆婃瘉鐏垬澹�銆嬪皢鍦╬s4鍙戝敭銆俓r\nBethesda纭锛屻�姣佺伃鎴樺＋4銆嬬殑涓�釜鏃╂湡鐗堟湰琚簾闄わ紝鐜板湪宸茬粡鎺ㄥ�閲嶅仛銆俓r\nBethesda甯傚満閮ㄥ壇鎬荤粡鐞哖ete Hines鍚戝獟浣撻�闇测�銆婃瘉鐏垬澹�銆嬬殑涓�釜鏃╂湡鐗堟湰娌℃湁灞曠幇鍑篒d鍜孊ethesda鎯宠鐨勬按鍑嗭紝鏃犳硶杈惧埌鐜╁鐨勬湡鏈涳紝鎵�互Id灏嗗叾搴熼櫎閲嶆柊鍒朵綔鍙︿竴鐗堟湰鐨勩�姣佺伃鎴樺＋4銆嬨�杩欐鎴戜滑纭繚瀹冭兘杈惧埌鎵�湁浜虹殑鏈熸湜銆傚綋鎴戜滑鍑嗗鍏呭垎鐨勬椂鍊欙紝涓�畾浼氱粰澶у浠嬬粛鏇村銆婃瘉鐏垬澹�銆嬬殑鍐呭銆傗�','299',null);
INSERT INTO `gameviews` VALUES ('2', '鏉�墜6', 'Io Interactive', '绱㈠凹E3 2015鍙戝竷浼氫笂锛岀储灏兼寮忓叕甯冧簡涓嬩竴娆俱�鏉�墜銆嬬郴鍒楁父鎴忥紝鏆傜О銆婃潃鎵�锛圚itman锛夈�銆俓r\n銆婃潃鎵�銆嬪皢甯﹂鐜╁韪忛亶鍏ㄧ悆锛屾垚涓烘湁鍙蹭互鏉ユ渶鍏烽噹蹇冪殑銆婃潃鎵嬨�娓竆r\n鎴忋�棣栨敮棰勫憡灞曠ず浜嗙壒宸�7鍦ㄦ．鏋椾腑璺戞鐨勭敾闈紝鍙﹀杩樼┛鎻掍簡涓�釜浣跨敤鐙欏嚮姝ユ灙瑙ｅ喅涓�釜鐩爣鐨勯暅澶淬�\r\n鐢变簬銆婃潃鎵�銆嬫槸鍦ㄧ储灏煎彂甯冧細涓婄湅鍒扮殑锛屽洜姝E鍜岀储灏煎湪杩欐娓告垙涓婅偗瀹氭湁鍚堜綔鍏崇郴銆侾S4鐜╁鍦ㄩ璐椂灏嗚幏寰椾竴涓嫭瀹剁殑Beta娴嬭瘯锛孭C鍜孹box One鐗堢帺瀹剁湅鏉ユ槸娌℃満浼氫簡銆傚彟澶朠S4鐜╁鍦ㄦ湰浣滃彂鍞椂灏嗘嫢鏈夊叚涓嫭鐗圭殑濂戠害銆�,'299',null);
INSERT INTO `gameviews` VALUES ('3', '鍥藉湡闃茬嚎2', 'cryteck', 'THQ鍦ㄥ幓骞�鏈堜唤鍏竷浜嗐�鍥藉湡闃茬嚎2銆嬬殑娑堟伅銆傝繖娆句綔鍝佺敱Crytek UK寮�彂鍒朵綔锛岃宸ヤ綔瀹ゆ槸鐢卞紑鍙戝嚭銆婅杽闆俱�銆併�閲嶈鍏夋槑銆嬪拰銆婃椂绌哄垎瑁傝�銆嬬殑Free Radical Design宸ヤ綔瀹ゅ叧闂悗閲嶅缓鑰屾垚鐨勩�銆婂浗鍦熼槻绾�銆嬪皢浼氬湪2014璐㈠勾鍙戝敭鈥斺�涔熷氨鏄2013骞�鏈堣嚦2014骞�鏈堟湡闂撮兘鏈夊彲鑳解�鈥旂櫥闄嗗钩鍙颁负PC鍜屽叾瀹冩湭鐭ュ钩鍙般�銆婂浗鍦熼槻绾裤�浜庡幓骞村彂鍞紝铏界劧璇勬祴鏂归潰鏈夋墍浜夎锛屼絾鍦ㄥ晢涓氫笂杩樻槸鑾峰緱浜嗘垚鍔熴�鐒惰�杩欐鎴愬姛涓嶈冻浠ユ尳鏁戞父鎴忕殑寮�彂宸ヤ綔瀹わ紝Kaos鍦ㄦ父鎴忓彂鍞悗涓嶄箙鍗冲憡鍏抽棬姝囦笟銆俓r\n銆婂浗鍦熼槻绾裤�鐪熸槸娆炬棤浜轰笉鏅撶殑鏂颁綔銆傗�Yerli璇撮亾锛屸�寮�鐨勬椂鍊欐父鎴忕殑璇勫垎鐪熸槸寰堜綆锛屼絾鏄叾浼樼鐨勫畾浣嶅拰鍑轰紬鐨勫競鍦鸿惀閿�瓥鐣ヤ娇鍏跺搧璐ㄥ湪浜轰滑蹇冧腑杈炬垚浜嗗叡璇嗐�鈥漎erli琛ㄧず锛屽浠婅窡Crytek鐨勯噾瀛楁嫑鐗屼竴鎼。锛岄偅銆婂浗鍦熼槻绾�銆嬫洿鏄ǔ璧氫笉璧斾簡銆傗�鎴戣涓烘柊浣滈厤涓奀rytek鐨勫搧璐ㄤ繚璇侊紝鍐嶅姞涓婅窡涔嬪墠宸笉澶氱殑甯傚満钀ラ攢鎵嬫锛屽彂鍞悗蹇呯劧浼氬紩鍙戝法澶х殑椋庢疆銆�,'350',null);
INSERT INTO `gameviews` VALUES ('4', '绁炵娴峰煙4', '椤界毊鐙�, '鍦ㄣ�绁炵娴峰煙3锛氬痉闆峰厠鐨勮璁°�浜嬩欢鍙戠敓鍚庢暟骞达紝宸茬粡浠庡疂钘忕寧浜洪�浼戠殑涓昏鍐呮．路寰烽浄鍏嬶紙Nathan Drake锛夊皢浼氳笍涓婁竴娈电幆鐞冧箣鏃咃紝瀵绘壘涓�鍘嗗彶闃磋皨鑳屽悗鎵�殣钘忕殑銆佷紶璇翠腑鐨勬捣鐩楀疂钘忋�椤界毊鐙楁杩版父鎴忕殑鍓ф儏鏄�浠栫洰鍓嶄负姝㈡渶浼熷ぇ鐨勪竴娆″啋闄╋紝杩欐鍐掗櫓灏嗕細鎸戞垬浠栫殑鐢熺悊鏋侀檺銆佷粬鐨勫喅蹇冿紝鍜屾渶缁堜粬鏄惁鎰挎剰鐗虹壊鑷繁浠ユ嫰鏁戜粬鎵�埍鐨勪汉鈥濄�','399',null);
INSERT INTO `gameviews` VALUES ('5', '闀滀箣杈圭紭鍌寲鍓�, 'EA', '涓昏Faith灏嗕細鏈変汉鏍煎彂灞曪紝娓告垙涓�紑濮嬬殑濂瑰拰缁撳熬鐨勫ス灏嗕細瀹屽叏鏄袱涓汉銆俓r\n鐜╁瀵逛簬鍩庡競鐨勬劅瑙夊皢浼氶殢鐫�祦绋嬬殑鎺ㄥ姩鑰屾敼鍙樸�Faith鍙槸涓轰簡鑷敱鑰屽幓濂旇窇锛屾參鎱㈠彂鐜板煄甯傚湪鏀瑰彉锛屽ス蹇呴』瑕佺珯鍑烘潵鎴樻枟銆俓r\n娓告垙骞堕潪瀹屽叏鐨勫墠浼狅紝浣嗕篃涓嶆槸绗竴浠ｇ殑鍚庣画锛屾父鎴忎笉浼氭牴鎹浉搴旀儏鑺傚彂灞曪紝浣嗘渶鍚庯紝Faith浼氭垚涓轰竴浠ｄ腑鐨勬�鏍笺�','250',null);