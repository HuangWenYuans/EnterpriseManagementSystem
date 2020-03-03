# 生产型企业信息化管理系统

	该项目为大三下学期期末学习完web初级编程即servlet&jsp后的编程课设，经过对项目规模以及工作量的分析亦本着对未知知识的渴望，此项目我采用的是未学习过的Spring+SpringMVC+Mybatis框架以及一些前端框架JQuery、Bootstrap等来进行开发的。


|    author  |   黄文源  
| ---- | ---- |
|    email  | hwy79868058@gmail.com|

---

# 功能需求
	
### :one: 人事管理子系统
	人事管理子系统主要包括用户注册，以及维护部门、职位、人员等信息，其中人员信息要求有照片。系统用户按权限分为两种，分别是：企业职工、人力资源管理人员。不同的用户拥有不同的权限，各自完成各自的管理功能，不同的用户看到不同的系统功能。

#### 企业职工：
	（1）登录功能：通过前台验证用户密码，验证成功后可以登录。
	（2）查询功能：登录后可查询到自己的信息如姓名、所在部门、职位、工龄、个人简历以及个人销售记录等以及签到考勤功能。
	（3）修改个人密码功能。

#### 人事管理人员：
	（1）登录功能
	（2）查询功能不仅拥有登录前台的企业职工用户的所有功能权限，还拥有后台管理的所有功能权限，通过输入姓名或者姓名的一部分进行模糊查询，可以看到相应的人员以及人员信息、人员调度信息以及人员考勤信息，还可以输入部门，查到该部门总人数和所有人员。
	（3）人员录入功能：添加新进员工信息。要求可以录入姓名，性别，部门（通过下拉列表选取，部门信息必须从数据库中查询得到），员工照片（上传图片功能）等等。
	（4）人员信息的删改查功能。
	（5）部门信息的增删改查功能。
	（6）对员工考勤信息的增删改查。

### :two: 工资管理子系统
	本子系统主要针对财务部门。
	工资管理主要包括员工的当月工资计算，统计员工的收入。
	对员工的月工资计算主要包括工龄工资、岗位工资、绩效工资，其中扣除项包括：缺勤扣除、所得税。
	（1）缺勤扣除根据人事管理系统中的人员考勤数据计算得到.
	（2）五险一金的计算按照国家现行实施办法进行计算。
	（3）所得税根据国家关于所得税率的规定进行计算。所得税税率需要有增删改查的功能。
	（4）岗位工资的计算根据所在岗位设定，需要有增删改查的功能。
	（5）绩效工资根据销售管理子系统中员工销售产品额进行计算。
	（6）工龄工资根据个人工龄长短进行计算，例如：工龄20年，每年10元，则计算出工龄工资为200元。
	（7）统计员工的收入主要包括统计员工的全年收入，以及统计某部门所有员工全年收入总和。
	
### :three: 销售管理子系统
	
	销售管理主要针对销售人员和销售经理，该子系统主要包括对销售产品和销售人员的销售产品数量等数据进行维护。
	
#### 销售人员：
	（1）对员工本人销售记录的查询
	（2）对销售产品的库存的查询
	
#### 销售经理：
	（1）包含销售人员具有的功能。
	（2）添加、修改、删除销售人员的销售记录。
	（3）统计员工的月销售额、年销售额，查询月销售、年销售前三名的员工并显示出来
	（4）分配销售任务。
	（5）统计销售完成情况。对销售产品进行增删改查操作，并可设置产品的库存。
	（6）依据销售额分配销售人员到不同的市场。引入动态规划算法进行最优化分配销售人员，使得销售额最大化。
	
#### :four: 工资计算模块

	**计算公式：岗位工资+工龄工资+绩效工资-缺勤扣除-五险一金-个人所得税**

	（1） 缺勤扣除根据人事管理系统中的人员考勤数据计算得到.

	（缺勤扣除工资=（缺勤天数/应工作天数）*岗位工资）

	（2） 五险一金（养老保险、医疗保险、失业保险、工伤保险和生育保险,还有住房公积金）的计算按照国家现行实施办法进行计算。

	医疗保险：2% 养老保险：8%； 失业保险：1%； 工伤保险:0； 生育保险0； 公积金：个人3.5%。 

	（3） 所得税根据国家关于所得税率的规定进行计算。所得税税率需要有增删改查的功能。

	（计算公式：（税前工资-五险一金-起征点工资5000）*对应税率-速算扣除数）

	（4） 岗位工资的计算根据所在岗位设定，需要有增删改查的功能。

	（5） 绩效工资根据销售管理子系统中员工销售产品额进行计算。

	（6） 工龄工资根据个人工龄长短进行计算，工龄20年，每年10元，则计算出工龄工资为200元。

	##### 登录功能

	只允许财务部门工资管理人员登录

	### 统计员工收入模块

	统计员工的收入主要包括统计员工的全年收入，以及统计某部门所有员工全年收入总和。

# :link: 技术要求
	1.基于MVC模式，运用JSP、JavaBean、HTML、CSS、Javascript等技术实现所设计的系统；
	2.使用SQL Server或MySQL作为后台数据库，依据数据库设计过程及规范，设计数据库表结构及主外键关系，并结合功能需求适当设计存储过程和触发器；
	3.采用面向对象设计方法学，运用所学的面向对象分析设计方法，以及对应的工具对系统进行分析与设计建模；
	4.基于模块化编程思想，程序源文件应划分为相应package，组织层次清晰；
	5.遵循程序设计编码规范，标识符应命名规范、代码注释充分、排版风格良好；
	6.使用JS对表单提交的数据及格式进行校验（是否为空、是否为数字等等）
	7.要求系统具有良好的安全性，能有效防止非法登录用户访问需授权网页。
	8.系统具有良好的人机交互界面，界面应布局清晰、简洁大方。
	9.系统具有较好的可操作性，界面友好。（例如：民族、部门、学院、班级等信息通过下来列表展示）
	10.系统具有良好的健壮性。例如：用户输入错误或者不按流程操作时系统不会异常退出。

# 上手指南

	以下指南将帮助你在本地机器上安装和运行该项目。
	
## 安装要求

	运行该项目必须要具备的条件以及必须要安装的软件。

\1.   `Intellij IDEA`:必须安装我

\2.   `MySQL`:我也必须安装

\3.   `maven3.5.3`：安装我也是必须的

\4.  `jdk1.8`：少了我你可无法正常工作

\5.  `Navicat`：安装我可以使你更加方便的操作数据库

## 安装步骤


\1.  下载项目到本地，将项目导入IDEA中。

\2.  下载项目所需依赖，注意将maven仓库设置成自己本地的maven仓库。

\3.  在MySQL中创建名为proinforsystem的数据库，并将数据库脚本导入到该数据库下，字符集为utf-8。

\4. 导入成功后，访问localhost:8080/login，即可进入到登陆页面。



