package user.action;

import java.util.Scanner;

import user.bean.Bean;
import user.dao.TestDao;

public class TestDelete implements TestInterface{

	@Override
	public void excute() {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		System.out.println("�����Ͻ� ID�� �Է��ϼ���");
		String user=sc.next();
		
		Bean bean=new Bean();
		bean.setId(user);
		

		
		TestDao.getInstance().mapperdel(bean);
	}

}
