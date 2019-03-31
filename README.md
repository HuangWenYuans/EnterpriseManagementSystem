# EnterpriseManagementSystem
## 生产型企业管理系统，分为人事管理子系统、工资管理子系统、销售管理子系统三部分。

  该系统为大三上学期学完web初级编程后的课程设计，该设计为综合设计，其中涉及的知识有web技术、数据库以及软件工程相关知识。
由于该系统如果使用单纯的MVC模式实现起来较为负载，我采用的是SSM框架，数据库选用的是Mysql
其中还涉及到前端的bootstrap、jQuery、Ajax等技术。其中的两个难点分别为工资管理子系统的工资生成，以及整个系统的权限分配。

  **其中工资条中包括各项工资，每项工资都与其各种参数有关，主要是通过触发器与存储过程来实现工资的生成**
  **权限分配采用的是基于角色的权限控制即RBAC**