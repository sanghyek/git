package user.action;

import java.util.Scanner;

import user.bean.Bean;
import user.dao.TestDao;

public class TestUpdate implements TestInterface {

	@Override
	public void excute() {
		// TODO Auto-generated method stub
		
		Scanner sc=new Scanner(System.in);
		System.out.println("ID�� �Է��ϼ���");
		String user=sc.next();
		System.out.println("������ PW�� �Է��ϼ���");
		String pass=sc.next();
		
		Bean bean=new Bean();
		bean.setId(user);
		bean.setPw(pass);
		

		
		TestDao.getInstance().mapperupd(bean);
	}

}
