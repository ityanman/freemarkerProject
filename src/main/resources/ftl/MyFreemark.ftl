<html>
<head>
    <meta charset="utf-8">
    <title>Freemarker入门小DEMO </title>
</head>
<body>
<#--assign指令-->
<#assign info={"name":"张三","age":32}>
${info.name},你好。${info.age}
<br>
<#--list指令-->
<#list goodList as good>
   ${good_index} ----- ${good}
</#list>
<#--if指令-->
<#if info.name="张四">
    <h2>是张三</h2>
    <#else>
    <h2>不是张三</h2>
</#if>
<#--includ指令-->
<#include "header.ftl">
<hr>
<#--内建函数--  获取集合大小-->
<h2>共：${goodList?size}个元素</h2>
<#--转换json字符串为对象-->
<#assign MyJson="{'name':'赵岩','age':'22'}">
<#assign data=MyJson?eval/>
<h2>姓名：${data.name},年龄:${data.age}</h2>
当前日期：${today?date}<br>
当前时间：${today?time}<br>
当前日期+时间：${today?datetime}<br>
日期格式化：${today?string("yyyy年MM月dd日mm分ss秒")}<br>
<#--数字转换为字符串-->
<hr>
生日：${birthday?c}
<hr>
<#--空值处理运算符-->
<#if value??>
    有值
    <#else>
    没值
</#if>
<br>
<#--缺失变量默认值:“!”-->
${value!"变量为空哦！"}
</body>
</html>
