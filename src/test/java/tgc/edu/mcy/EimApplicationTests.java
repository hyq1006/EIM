package tgc.edu.mcy;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import tgc.edu.mcy.entity.Accredit;

import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EimApplicationTests {

	@Test
	public void contextLoads() throws IntrospectionException, InvocationTargetException, IllegalAccessException {
		Accredit a = new Accredit();
		Class<Accredit> clazz = Accredit.class;
		int length = clazz.getDeclaredFields().length;

		System.out.println("所有属性名称：");
		for (Field declaredField : clazz.getDeclaredFields()) {
			System.out.println(declaredField.getName());
		}
		/*System.out.println("---------------------");
		System.out.println("---------------------");
		System.out.println("---------------------");
		System.out.println("所有方法");
		for(Field field:clazz.getDeclaredFields()){
			PropertyDescriptor pd = new PropertyDescriptor(field.getName(), clazz);
			Method getMethod = pd.getReadMethod();//获得get方法
			getMethod.invoke(a);//此处为执行该Object对象的get方法
			System.out.println("Get()方法："+getMethod);
			System.out.println("数据类型"+field.getType().toString());
			Method setMethod = pd.getWriteMethod();//获得set方法
			setMethod.invoke(a,11);//此处为执行该Object对象的set方法
			System.out.println("Set()方法"+setMethod);
		}*/
		System.out.println(length);
	}

}
