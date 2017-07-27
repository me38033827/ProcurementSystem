
#命名规范
类别|命名|举例|备注
----|------|----|----
数据库表| 全部小写，词与词之间用下划线隔开 | table_ip |
实体类| 驼峰式写法，与表名对应          | TableIp |
dao| 驼峰式写法，I开头，Dao结尾      | ITableIpDap | 
service|	驼峰式写法，表名开头,Service结尾|TableIpService | 
controller| 驼峰是写法，表名开头，Controller结尾|TableIpController |
jsp|驼峰式写法|index.jsp|
包名||com.PreCurementSystem.common |工具类
 | |com.PreCurementSystem.entity |实体类 JavaBean
 | |com.PreCurementSystem.dao | dao接口
 | |com.PreCurementSystem.controller | Spring控制器
 | |com.PreCurementSystem.service|业务逻辑
Mybatis的Mapper文件| 驼峰式写法，表名开头,表名结尾 |tableMapper.xml|	


