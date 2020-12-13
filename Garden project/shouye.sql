show databases;
use ctt;

set names utf8;

delete from ctt_category where id>0;
insert into ctt_category(category_name) values("肉蛋水产");
insert into ctt_category(category_name) values("乳品冲饮");
insert into ctt_category(category_name) values("时令蔬菜");
insert into ctt_category(category_name) values("新鲜水果");
insert into ctt_category(category_name) values("休闲零食");




delete from ctt_goods where id>0;
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("1","散养土鸡蛋","1盒/24.90￥","1盒/20.90￥","商品名称：【40枚到手26.9】我老家农家养土鸡蛋现捡新鲜谷物虫草柴鸡蛋盒装 30枚商品编号：68468861841店铺： 我老家官方旗舰店商品毛重：2.0kg商品产地：中国大陆类别：鸡蛋枚数：21-40枚套餐份量：3人份加工方式：鲜蛋包装：简装售卖方式：单品养殖方式：散养","100次","20份/月","roudanshuichan_01","2020-01-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("1","黑猪去皮五花肉","400g/57.00￥","100g/50.00￥","商品名称：京东跑山猪400g/袋商品编号：100004383387商品毛重：445.00g商品产地：中国大陆 辽宁省本溪市/山东省青岛市品种：黑猪类别：五花肉重量：250-499g国产/进口：国产原产地：中国大陆","70次","30份/月","roudanshuichan_02","2020-02-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("1","鸡大胸","1kg/34.90￥","1kg/30.90￥","商品名称：上鲜单冻鸡大胸商品编号：4683591商品毛重：1.04kg商品产地：山东省莱阳市类别：鸡胸肉包装：简装饲养方式：圈养品种：白羽鸡套餐份量：3人份重量：1000-1499g售卖方式：单品热卖时间：5月，8月，10月，11月，12月保存状态：冷冻加工方式：原切整鸡分类：其它","80次","50份/月","roudanshuichan_03","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("1","鸡翅中","1kg/75.90￥","1kg/70.90￥","商品名称：CP单冻鸡翅中商品编号：1300670商品毛重：1.0kg商品产地：北京品种：白羽鸡类别：鸡翅包装：简装加工方式：原切整鸡分类：其它饲养方式：圈养保存状态：冷冻","20次","70份/月","roudanshuichan_04","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("1","鸡琵琶腿切块","1kg/37.50￥","1kg/30.50￥","商品名称：凤祥食品鸡琵琶腿切块1kg商品编号：100009638008商品毛重：1.083kg商品产地：中国 山东 聊城 阳谷县类别：鸡腿整鸡分类：其它饲养方式：圈养品种：白羽鸡包装：简装重量：1000-1499g套餐周期：1个月热卖时间：6月，8月，9月，10月，11月售卖方式：单品保存状态：冷冻加工方式：原切","100次","20份/月","roudanshuichan_05","2020-04-07");






insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("2","光明 纯牛奶","1箱(24盒)/68.80￥","1箱(24盒)/60.80￥","商品名称：光明纯奶商品编号：100001600621商品毛重：6.67kg商品产地：上海类别：纯牛奶净含量：250ml包装：整箱装适用人群：儿童，成人，中老年，青少年钙含量：非高钙脂肪含量：其它是否添加糖：未添加糖口味：原味是否有机：非有机蛋白质含量：非高蛋白","100次","20份/月","rupinchongyin_01","2020-02-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("2","光明 纯牛奶","1箱(24盒)/68.80￥","1箱(24盒)/60.80￥","商品名称：光明纯奶商品编号：100001600621商品毛重：6.67kg商品产地：上海类别：纯牛奶净含量：250ml包装：整箱装适用人群：儿童，成人，中老年，青少年钙含量：非高钙脂肪含量：其它是否添加糖：未添加糖口味：原味是否有机：非有机蛋白质含量：非高蛋白","100次","20份/月","rupinchongyin_01","2020-02-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("2","光明 纯牛奶","1箱(24盒)/68.80￥","1箱(24盒)/60.80￥","商品名称：光明纯奶商品编号：100001600621商品毛重：6.67kg商品产地：上海类别：纯牛奶净含量：250ml包装：整箱装适用人群：儿童，成人，中老年，青少年钙含量：非高钙脂肪含量：其它是否添加糖：未添加糖口味：原味是否有机：非有机蛋白质含量：非高蛋白","100次","20份/月","rupinchongyin_01","2020-02-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("2","光明 纯牛奶","1箱(24盒)/68.80￥","1箱(24盒)/60.80￥","商品名称：光明纯奶商品编号：100001600621商品毛重：6.67kg商品产地：上海类别：纯牛奶净含量：250ml包装：整箱装适用人群：儿童，成人，中老年，青少年钙含量：非高钙脂肪含量：其它是否添加糖：未添加糖口味：原味是否有机：非有机蛋白质含量：非高蛋白","100次","20份/月","rupinchongyin_01","2020-02-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("2","光明 纯牛奶","1箱(24盒)/68.80￥","1箱(24盒)/60.80￥","商品名称：光明纯奶商品编号：100001600621商品毛重：6.67kg商品产地：上海类别：纯牛奶净含量：250ml包装：整箱装适用人群：儿童，成人，中老年，青少年钙含量：非高钙脂肪含量：其它是否添加糖：未添加糖口味：原味是否有机：非有机蛋白质含量：非高蛋白","100次","20份/月","rupinchongyin_01","2020-02-07");



insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("3","正宗章丘大葱","8斤/29.39￥","8斤/20.39￥","商品名称：山东章丘大葱新鲜东北铁杆长葱白甜葱正宗特产特级10蔬菜5斤 2500g商品编号：10024421569127店铺： 番茄（济南）蔬菜专营店商品毛重：1.0kg商品产地：中国大陆类别：葱","200次","10份/月","shilingshuiguo_01","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("3","正宗章丘大葱","8斤/29.39￥","8斤/20.39￥","商品名称：山东章丘大葱新鲜东北铁杆长葱白甜葱正宗特产特级10蔬菜5斤 2500g商品编号：10024421569127店铺： 番茄（济南）蔬菜专营店商品毛重：1.0kg商品产地：中国大陆类别：葱","200次","10份/月","shilingshuiguo_02","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("3","正宗章丘大葱","8斤/29.39￥","8斤/20.39￥","商品名称：山东章丘大葱新鲜东北铁杆长葱白甜葱正宗特产特级10蔬菜5斤 2500g商品编号：10024421569127店铺： 番茄（济南）蔬菜专营店商品毛重：1.0kg商品产地：中国大陆类别：葱","200次","10份/月","shilingshuiguo_03","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("3","正宗章丘大葱","8斤/29.39￥","8斤/20.39￥","商品名称：山东章丘大葱新鲜东北铁杆长葱白甜葱正宗特产特级10蔬菜5斤 2500g商品编号：10024421569127店铺： 番茄（济南）蔬菜专营店商品毛重：1.0kg商品产地：中国大陆类别：葱","200次","10份/月","shilingshuiguo_04","2020-03-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("3","正宗章丘大葱","8斤/29.39￥","8斤/20.39￥","商品名称：山东章丘大葱新鲜东北铁杆长葱白甜葱正宗特产特级10蔬菜5斤 2500g商品编号：10024421569127店铺： 番茄（济南）蔬菜专营店商品毛重：1.0kg商品产地：中国大陆类别：葱","200次","10份/月","shilingshuiguo_05","2020-03-07");



insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("4","湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果","5斤/13.80￥","5斤/10.80￥","商品名称：【第二件8.8元】湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果商品编号：18973919396店铺： 联承旗舰店商品毛重：2.5kg包装：简装类别：冰糖橙原产地：其它国产/进口：国产","40次","40份/月","xinxianshuiguo_01","2020-04-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("4","湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果","5斤/13.80￥","5斤/10.80￥","商品名称：【第二件8.8元】湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果商品编号：18973919396店铺： 联承旗舰店商品毛重：2.5kg包装：简装类别：冰糖橙原产地：其它国产/进口：国产","40次","40份/月","xinxianshuiguo_02","2020-04-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("4","湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果","5斤/13.80￥","5斤/10.80￥","商品名称：【第二件8.8元】湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果商品编号：18973919396店铺： 联承旗舰店商品毛重：2.5kg包装：简装类别：冰糖橙原产地：其它国产/进口：国产","40次","40份/月","xinxianshuiguo_03","2020-04-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("4","湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果","5斤/13.80￥","5斤/10.80￥","商品名称：【第二件8.8元】湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果商品编号：18973919396店铺： 联承旗舰店商品毛重：2.5kg包装：简装类别：冰糖橙原产地：其它国产/进口：国产","40次","40份/月","xinxianshuiguo_04","2020-04-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("4","湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果","5斤/13.80￥","5斤/10.80￥","商品名称：【第二件8.8元】湖南麻阳冰糖橙5斤20-25个 橙子甜橙 新鲜橙子 应当季水果冻甜橙整箱新鲜水果商品编号：18973919396店铺： 联承旗舰店商品毛重：2.5kg包装：简装类别：冰糖橙原产地：其它国产/进口：国产","40次","40份/月","xinxianshuiguo_05","2020-04-07");



insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("5","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","12粒、19.90$￥","12粒、10.90$￥","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","60次","40份/月","xinxianshuiguo_01","2020-05-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("5","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","12粒、19.90$￥","12粒、10.90$￥","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","60次","40份/月","xinxianshuiguo_01","2020-05-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("5","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","12粒、19.90$￥","12粒、10.90$￥","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","60次","40份/月","xinxianshuiguo_01","2020-05-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("5","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","12粒、19.90$￥","12粒、10.90$￥","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","60次","40份/月","xinxianshuiguo_01","2020-05-07");
insert into ctt_goods(typeid,goodsname,saleprice,costprice,content,readcount,buycount,image,goodsdate) values("5","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","12粒、19.90$￥","12粒、10.90$￥","中国台湾进口零食 77牌松塔千层酥曲奇威化饼干","60次","40份/月","xinxianshuiguo_01","2020-05-07");
























