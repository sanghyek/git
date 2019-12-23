package user.action;

import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import user.bean.Bean;
import user.dao.TestDao;

public class TesetInsert implements TestInterface {

	@Override
	public void excute() {
		// TODO Auto-generated method stub
		List<Bean> ab=TestDao.getInstance().mappersel();
		Scanner sc=new Scanner(System.in);
		System.out.println("ID를 입력하세요");
		String user=sc.next();
		System.out.println("비밀번호를 입력하세요");
		String pass=sc.next();
		System.out.println("주소를입력하세요");
		String addr=sc.next(); 
		
		Bean bean=new Bean();
		bean.setId(user);
		bean.setPw(pass);
		bean.setAddr(addr);
		

		TestDao.getInstance().mapperin(bean);

}
}
