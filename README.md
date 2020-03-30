# 生产型企业信息化管理系统

	该项目为大三下学期期末学习完web初级编程即servlet&jsp后的编程课设，经过对项目规模以及工作量的分析亦本着对未知知识的渴望，此项目我采用的是未学习过的Spring+SpringMVC+Mybatis框架以及一些前端框架JQuery、Bootstrap等来进行开发的。


|    author  |   黄文源  
| ---- | ---- |
|    email  | hwy79868058@gmail.com|



## 功能需求
	
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
	
	计算公式：岗位工资+工龄工资+绩效工资-缺勤扣除-五险一金-个人所得税

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

## 技术要求
	1.基于MVC模式，运用Spring、SpringMVC、Mybatis、JQuery、AJAXt等技术实现所设计的系统；
	2.使用MySQL作为后台数据库，依据数据库设计过程及规范，设计数据库表结构及主外键关系，并结合功能需求适当设计存储过程和触发器；
	3.采用面向对象设计方法学，运用所学的面向对象分析设计方法，以及对应的工具对系统进行分析与设计建模；
	4.基于模块化编程思想，程序源文件应划分为相应package，组织层次清晰；
	5.遵循程序设计编码规范，标识符应命名规范、代码注释充分、排版风格良好；
	6.使用JS对表单提交的数据及格式进行校验（是否为空、是否为数字等等）
	7.要求系统具有良好的安全性，能有效防止非法登录用户访问需授权网页。
	8.系统具有良好的人机交互界面，界面应布局清晰、简洁大方。
	9.系统具有较好的可操作性，界面友好。（例如：民族、部门、学院、班级等信息通过下来列表展示）
	10.系统具有良好的健壮性。例如：用户输入错误或者不按流程操作时系统不会异常退出。

## 上手指南

	以下指南将帮助你在本地机器上安装和运行该项目。
	
### 安装要求

	运行该项目必须要具备的条件以及必须要安装的软件。

\1.   `Intellij IDEA`:必须安装我

\2.   `MySQL`:我也必须安装

\3.   `maven3.5.3`：安装我也是必须的

\4.  `jdk1.8`：少了我你可无法正常工作

\5.  `Navicat`：安装我可以使你更加方便的操作数据库

### 安装步骤


\1.  下载项目到本地，将项目导入IDEA中。

\2.  下载项目所需依赖，注意将maven仓库设置成自己本地的maven仓库。

\3.  在MySQL中创建名为proinforsystem的数据库，并将数据库脚本导入到该数据库下，字符集为utf-8。

\4. 导入成功后，访问localhost:8080/login，即可进入到登陆页面。


---
## 该系统涉及的存储过程
**创建存储过程当往考勤表中插入一条用户签到数据时，自动填充出勤时间，出勤标志置为1**

```sql
DELIMITER $
create procedure insert_attendance(IN userid int(11))
BEGIN
insert into t_attendance(id,userid,attendancedate,attendanceflag) 
values(default,userid,NOW(),1);
END $
```

调用：

```sql
call  insert_attendance(1);
```



****

**用户表触发器当新增一个员工时，对应部门人数+1**

------

```sql
CREATE TRIGGER `insert_user1` AFTER INSERT ON `t_user` FOR EACH ROW 

update  t_department set  departmentmember = departmentmember + 1 
where departmentname = new.departmentname
```



**用户表触发器当删除一个员工时，对应部门人数-1**

```sql
CREATE TRIGGER `delete_user1` AFTER delete ON `t_user` FOR EACH ROW 

update  t_department set  departmentmember = departmentmember - 1 
where departmentname = old.departmentname


```

**创建存储过程通过输入部门名称和年份统计某部门全年的工资**

```sql
DELIMITER $
create procedure dept_yearsalary(IN deptname varchar(50),IN year int)
BEGIN
select sum(t_salary.realsalary)
from t_user,t_salary
where  t_user.userid = t_salary.userid and DATE_FORMAT(`month`,'%Y') = year and t_user.departmentname = deptname
group by deptname;
END $

```

调用

```sql
call dept_yearsalary('销售部',2019);
```



**创建存储过程通过输入userid和年份查看某员工某年的工资并返回某一年的工资**

```sql
DELIMITER $
create procedure user_yearsalary(IN userid int,IN year int)
BEGIN
select sum(t_salary.realsalary)
from t_user,t_salary
where userid = t_user.userid and t_user.userid = t_salary.userid and DATE_FORMAT(month,'%Y') = year
group by t_user.realname;
END $
```

调用

```sql
call user_yearsalary(1,2019);


```



**创建存储过程，查看某员工某个月的工资**

```sql
DELIMITER $
create procedure user_monthsalary(IN userid int,IN month date)
BEGIN
declare absencefine decimal(10,2) DEFAULT 0;#缺勤扣除
declare attendanceday int DEFAULT 0;#缺勤天数
declare positionsalary decimal(10,2) DEFAULT 0;#岗位工资
declare workagesalary decimal(10,2) DEFAULT 0;#工龄工资
declare workage int DEFAULT 0;#工龄
declare achievementsalary decimal(10,2) DEFAULT 0;#绩效工资
declare salemoney decimal(10,2) DEFAULT 0;#月销售业绩
declare taskmoney decimal(10,2) DEFAULT 0;#月规定业绩
declare old decimal(10,2) DEFAULT 0;#养老保险
declare medical decimal(10,2) DEFAULT 0;#医疗保险
declare unemployment decimal(10,2) DEFAULT 0;#失业保险
declare injury decimal(10,2) DEFAULT 0;#工商保险
declare bear decimal(10,2) DEFAULT 0;#生育保险
declare house decimal(10,2) DEFAULT 0;#住房公积金
declare insurance decimal(10,2) DEFAULT 0;#五险一金
declare beforetaxsalary decimal(10,2) DEFAULT 0;#税前工资
declare rate double DEFAULT 0;#所得税税率
declare tax decimal(10,2) DEFAULT 0;#个人所得税
declare taxbase decimal(10,2) DEFAULT 0;#个人所得税应交部分
declare shouldsalary decimal(10,2) DEFAULT 0;#税前工资
declare realsalary decimal(10,2) DEFAULT 0;#税后工资
declare realname varchar(50);#职工名

  
#查询出对应的职工名
SELECT t_user.realname into realname
from t_user WHERE t_user.userid = userid;


#设置工龄工资
select t_user.workage into workage#工龄
from t_user
where t_user.userid = userid;
set workagesalary = workage * 100;#工龄工资

select ifnull(sum(t_task.taskmoney),0) as sum into taskmoney#月规定业绩
from t_task 
where t_task.userid = userid and DATE_FORMAT(t_task.taskdate,'%Y-%m') = DATE_FORMAT(month,'%Y-%m');

select ifnull(sum(t_salerecord.salemoney),0) into salemoney #月实际销售业绩
from t_salerecord 
where t_salerecord.userid = userid and DATE_FORMAT(t_salerecord.saletime,'%Y-%m') = DATE_FORMAT(month,'%Y-%m');

#设置绩效工资
  IF salemoney >= taskmoney
  THEN set achievementsalary = 0.05 * (salemoney -taskmoney); #绩效工资
  ELSE 
  set achievementsalary = 0.1 * (salemoney-taskmoney); #绩效工资
  END IF;
  
  select ifnull(salary,0) into positionsalary#岗位工资
  from t_position,t_user
  where t_position.position = t_user.position and t_user.userid = userid;
	
	
	  
	select count(*) into attendanceday #出勤天数
	from t_attendance,t_salary 
	where t_attendance.userid = userid and  DATE_FORMAT(t_attendance.attendancedate,'%Y-%m') = DATE_FORMAT(month,'%Y-%m') and t_attendance.attendanceflag=1;
	
	#设置缺勤扣除
	set absencefine  = (1 - attendanceday / 30)* positionsalary;#缺勤扣除

 #设置税前、五险一金前工资
  set beforetaxsalary = positionsalary + achievementsalary + workagesalary - 
  absencefine ;
	
 #五险一金
 set old = beforetaxsalary*0.02;#养老保险
 set medical = beforetaxsalary*0.08;#医疗保险
 set unemployment = beforetaxsalary*0.01;#失业保险
 set injury = 0;#工商保险
 set bear =0;#生育保险
 set house = beforetaxsalary*0.035;#住房公积金
 set insurance = old+medical+unemployment+injury+bear+house;#五险一金总额
 
 set taxbase = beforetaxsalary-insurance-5000;#所得税应缴纳部分

  #个人所得税

	CASE 

       when taxbase >=0 and taxbase <=3000 
       THEN 
       SELECT t_tax.rate into rate from t_tax where t_tax.level = 1;
       set tax = rate*taxbase ; 

      when taxbase >3000 and taxbase <= 12000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 2;
      set tax = rate*taxbase-210;

      when taxbase >12000 and taxbase <= 25000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 3;
      set tax = rate*taxbase-1410;

     when taxbase >25000 and taxbase <= 35000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 4;
      set tax = rate*taxbase-2660;
      
     when taxbase >35000 and taxbase <= 55000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 5;
      set tax = rate*taxbase-4410;
      
            
     when taxbase >55000 and taxbase <= 80000 
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 6;
      set tax = rate*taxbase-4410;
      
       when taxbase > 80000
      THEN 
      SELECT t_tax.rate into rate from t_tax where t_tax.level = 7;
      set tax = rate*taxbase-15160;
      
	ELSE
     set tax = 0;
    END CASE;
	

   #设置税前工资
   set shouldsalary = positionsalary + workagesalary + achievementsalary - absencefine - insurance;
   #设置税后工资
     set realsalary = positionsalary + workagesalary + achievementsalary - absencefine - insurance - tax;
     #插入到工资表
  insert ignore into t_salary(userid,realname,workagesalary,positionsalary,achievementsalary,absencefine,old,medical,unemployment,injury,bear,house,insurance,tax,shouldsalary,realsalary,month)
  values(userid,realname,workagesalary,positionsalary,achievementsalary,absencefine,old,medical,unemployment,injury,bear,house,insurance,tax,shouldsalary,realsalary,DATE_FORMAT(month,'%Y-%m'));
			#查出工资表中的所有数据
	END $
```

调用存储过程

```sql
call user_monthsalary(1,'2019-01-11');
```



**创建存储过程统计月销售任务完成情况**

```sql
DELIMITER $
CREATE PROCEDURE user_sale (IN userid INT,IN saletime VARCHAR(50),OUT rate double)
BEGIN
	DECLARE
		salemoney DECIMAL ( 10, 2 );
	DECLARE
		taskmoney DECIMAL ( 10, 2 );

	SELECT
		sum(t_task.taskmoney) INTO taskmoney 
	FROM
		t_task 
	WHERE
		t_task.userid = userid 
		AND DATE_FORMAT(t_task.taskdate,'%Y-%m')=DATE_FORMAT( saletime, '%Y-%m' );
		
	SELECT
		sum(t_salerecord.salemoney) INTO salemoney 
	FROM
		t_salerecord 
	WHERE
		t_salerecord.userid = userid 
		AND DATE_FORMAT( t_salerecord.saletime, '%Y-%m' ) = DATE_FORMAT( saletime,'%Y-%m');
	
	SET rate := salemoney / taskmoney;
	SELECT rate;
	END $
```

调用存储过程

```
call user_sale(1,'2019-01-10')
```





**查询员工年销售额存储过程**

```sql
DELIMITER $
CREATE  PROCEDURE  year_sale(IN userid int,IN year varchar(50),OUT sum DECIMAL(10,2))

BEGIN
  DECLARE sum DECIMAL(10,2);
	
	select sum(salemoney) into sum
	from t_salerecord where t_salerecord.userid = userid and DATE_FORMAT(saletime,'%Y') = year;
	SELECT sum;
	
END $

```

调用

```
call year_sale(1,'2019',@sum);
```





**查询员工月销售额存储过程**

```sql
DELIMITER $
CREATE  PROCEDURE  month_sale(IN userid int,IN month VARCHAR(50),OUT sum DECIMAL(10,2))

BEGIN
	DECLARE sum DECIMAL(10,2);
	select sum(salemoney) into sum
	from t_salerecord where t_salerecord.userid = userid and DATE_FORMAT(saletime,'%Y-%m') = month;
	SELECT sum;
END $



```

调用



```
call month_sale(1,'2019-01',@sum);
```



**查询月销售额前三名员工的编号，名字以及销售额**

```sql
select t_salerecord.userid,t_salerecord.realname,sum(salemoney) 
	from t_salerecord where DATE_FORMAT(saletime,'%Y-%m') = '2019-03'  GROUP BY userid order by sum(salemoney) desc limit 0,3;

```





**查询员工年销售额前三名的编号、姓名、销售额**

```sql
   select t_salerecord.userid,t_salerecord.realname,sum(salemoney) as sum
	  from t_salerecord where DATE_FORMAT(saletime,'%Y') = '2019'
	  group by userid order by sum(salemoney) desc limit 0,3;
```



**创建存储过程，当用户往销售记录插入一条数据时，修改产品库存，计算出售的总额**

```sql
DELIMITER $
CREATE  PROCEDURE sale(IN userid int,IN productid int,IN salecount int)

BEGIN

	DECLARE pname varchar(50);
	DECLARE price DECIMAL(10,2);
	DECLARE salemoney DECIMAL(10,2);
	DECLARE uname VARCHAR(50);
	SELECT t_product.`name` into pname
	from t_product where productid = t_product.id;
	
	SELECT t_product.price into price
	from t_product where productid = t_product.id;
	
	SELECT t_user.realname into uname
	from t_user WHERE t_user.userid = userid;
	
	set salemoney = price * salecount;
	
	insert into t_salerecord(salerecordid,userid,realname,productid,productname,saletime,salecount,salemoney) values(DEFAULT,userid,uname,productid,pname,NOW(),salecount,salemoney);
	update t_product set t_product.stock = t_product.stock - salecount
    where t_product.id = productid;
	
END $

```



调用

```
call sale(1,1,5);
```


