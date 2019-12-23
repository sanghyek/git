package user.action;

import java.util.Scanner;

import user.bean.Bean;
import user.dao.TestDao;

public class TestUpdate implements TestInterface {

	@Override
	public void excute() {
		// TODO Auto-generated method stub
		
		Scanner sc=new Scanner(System.in);
		System.out.println("ID를 입력하세요");
		String user=sc.next();
		System.out.println("변경할 PW를 입력하세요");
		String pass=sc.next();
		
		Bean bean=new Bean();
		bean.setId(user);
		bean.setPw(pass);
		

		
		TestDao.getInstance().mapperupd(bean);
	}

}
