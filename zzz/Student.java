package javabean;

import java.util.ArrayList;

public class Student {
	
	public ArrayList<StudentBean> input(){
	
	ArrayList<StudentBean> list=new ArrayList<StudentBean>();

	StudentBean[] st=new StudentBean[5];
	
	st[0]=new StudentBean();
	st[1]=new StudentBean();
	st[2]=new StudentBean();
	st[3]=new StudentBean();
	st[4]=new StudentBean();
	
	st[0].setId("zzkin1");
	st[0].setName("��");
	st[0].setPass("123");
	st[0].setSnum("567");
	st[0].setEmail("naver.com");
	
	st[1].setId("hsh941");
	st[1].setName("snang");
	st[1].setPass("567");
	st[1].setSnum("789");
	st[1].setEmail("naver.com");
						
		st[2].setId("kkkk");
		st[2].setName("5555");
		st[2].setPass("6789");
		st[2].setSnum("1234");
		st[2].setEmail("nate.com");
		
		st[3].setId("na");
		st[3].setName("bobo");
		st[3].setPass("85645");
		st[3].setSnum("6752");
		st[3].setEmail("daum.net");
		
		
		st[4].setId("naasdf");
		st[4].setName("qoief");
		st[4].setPass("a3215");
		st[4].setSnum("9872");
		st[4].setEmail("google.com");

		list.add(st[0]);
		list.add(st[1]);
		list.add(st[2]);
		list.add(st[3]);
		list.add(st[4]);

		return list;
		
	}
}
