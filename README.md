结对队员：221701333池政涛和221701340胡海江

1. 使用的是mvc模型，jsp框架
2. 后台的是如此：
 
    + dao:数据访问层，负责从数据库中读取数据
	+ pojo:存放对象，ip,sp,cure,dead继承PersonStatus，实现get，set
	+ util:工具包，封装了数据库的访问。
	+ servlt:负责业务逻辑，向jsp页面传入数据。
3. 使用工具:
	mysql8.0,eclipse,tomcat-9.0