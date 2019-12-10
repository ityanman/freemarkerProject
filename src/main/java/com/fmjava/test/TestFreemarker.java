package com.fmjava.test;

import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestFreemarker {
/*第一步：创建一个 Configuration 对象，直接 new 一个对象。构造方法的参数就是 freemarker的版本号。
第二步：设置模板文件所在的路径。
第三步：设置模板文件使用的字符集。一般就是 utf-8.
第四步：加载一个模板，创建一个模板对象。
第五步：创建一个模板使用的数据集，可以是 pojo 也可以是 map。一般是 Map。
第六步：创建一个 Writer 对象，一般创建一 FileWriter 对象，指定生成的文件名。
第七步：调用模板对象的 process 方法输出文件。
第八步：关闭流*/
public static void main(String[] args) throws Exception{
    Configuration configuration = new Configuration(Configuration.getVersion());
    configuration.setDirectoryForTemplateLoading(new File("E:\\Idea工作空间\\分布式项目\\freemarkerProject\\src\\main\\resources\\ftl"));
    configuration.setDefaultEncoding("utf-8");
    //加载模板
    Template template = configuration.getTemplate("MyFreemark.ftl");
    //创建List对象
    List goodList = new ArrayList();
    goodList.add("goodList1");
    goodList.add("goodList2");
    goodList.add("goodList3");
    //创建数据模型
    Map map = new HashMap();
    map.put("name","赵公子");
    map.put("message","message");
    map.put("goodList",goodList);
    //创建werite对象
    FileWriter writer = new FileWriter("E:\\test.html");
        //输出
    template.process(map,writer);
    //关闭Write对象
    writer.close();
}

}
