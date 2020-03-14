结对队员：221701333池政涛和221701340胡海江

1. 使用的是mvc模型，jsp框架
2. 后台的是如此：

    + dao:数据访问层，负责从数据库中读取数据
	+ pojo:存放对象，ip,sp,cure,dead继承PersonStatus，实现get，set
	+ util:工具包，封装了数据库的访问。
	+ servlt:负责业务逻辑，向jsp页面传入数据。
3. 使用工具:
	mysql8.0,eclipse,tomcat-9.0



构建教程

本程序需构建mysql数据库

1. 在util层中修改数据库属性

![](https://images.cnblogs.com/cnblogs_com/shuiXianShen/1670264/o_2003141402111.png)



![](https://images.cnblogs.com/cnblogs_com/shuiXianShen/1670264/o_2003141402372.png)

2. 在mysql中新建数据库，数据库名为infectstatistic

3. 运行InfectStatisticWeb\src\WebContent\sql下的sql文件创建表

![数据库表](https://images.cnblogs.com/cnblogs_com/shuiXianShen/1670264/o_2003141403313.png)



4. 最后运行主页

![主页](https://images.cnblogs.com/cnblogs_com/shuiXianShen/1670264/o_2003141403574.png)