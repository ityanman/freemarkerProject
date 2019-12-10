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
</body>
</html>
