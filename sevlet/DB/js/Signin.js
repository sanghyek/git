
  function joososelect(){
	  alert("�ּҸ� �˻��ϼ���")
 }

   function idcheck(su){
	  var str=SIGNIN.idd.value
	  if (str=="")
	  {
	  alert("Id�� �Է��ϼ���")
	  }
	  else{
	  alert("����ϼŵ� �����ϴ�")
	  }
 }

  function emailselect(sun){

	  var str=""
	  if(sun.options[0].selected)
	  str=""
	  SIGNIN.email_dns.value=str

	  if(sun.options[1].selected)
	  str="daum.net"
	  SIGNIN.email_dns.value=str

	  if(sun.options[2].selected)
	  str="empal.com"
	  SIGNIN.email_dns.value=str

	  if(sun.options[3].selected)
	  str="gmail.com"

	  SIGNIN.email_dns.value=str
	  if(sun.options[4].selected)
	  str="hanmail.com"

	  SIGNIN.email_dns.value=str
	  if(sun.options[5].selected)
	  str="msn.com"
	  SIGNIN.email_dns.value=str

	  if(sun.options[6].selected)
	  str="naver.com"
	  SIGNIN.email_dns.value=str

	  if(sun.options[7].selected)
	  str="nate.com"
	  SIGNIN.email_dns.value=str

}

  function irum(){
	  var str=SIGNIN.namea.value

	  if(str==""){
		  alert("�̸��� �Է��ϼ���")
	  }
	  else{
		  phnum()
		  }
  }
  
   function phnum(su,si){
	   var str=SIGNIN.phone_3.value
	   var atr=SIGNIN.phone_4.value
	  if (str==""||atr=="")
	  {
	  alert("�޴��� ��ȣ�� �Է��ϼ���")
	  }
	  else{mail()}
 }

  function mail(su,si){
	  var str=SIGNIN.email.value
	  var atr=SIGNIN.email_dns.value

	  if(str==""||atr==""){
		  alert("�̸����� �Է��ϼ���")
	  }
	  else{jooso()}
  }

 
  function jooso(su,si,sc){
	  var str=SIGNIN.addr.value
	  var atr=SIGNIN.addr_1.value
      var btr=SIGNIN.addr_2.value
	  if(str==""||atr==""){
		  alert("�ּҸ� �Է��ϼ���")
	  }
	  else if(btr==""){
	      alert("���ּҸ� �Է��ϼ���")
	  }
	  else{iddc()}	  
  }

    function iddc(){
	  var str=SIGNIN.idd.value
	  if(str==""){
		  alert("ID�� �Է��ϼ���")
	  }
	  else{nikname()}	  
  }

   function nikname(){
	  var str=SIGNIN.nik.value

	  if(str==""){
		  alert("�г����� �Է��ϼ���")
	  }
	  else{password()}
  }

  function password(){

  var pass_len=SIGNIN.pw_1.value.length

  if((pass_len>=8)&&(pass_len<=10)){
	  passwordck(pass_len)
  }
  
  else{
	alert("8~10�� ������ ��ȣ�� ��ȿ�մϴ�")
    SIGNIN.pw_1.value=""
    SIGNIN.pw_1.focus()
  }
 }

 function passwordck(pa){

  var pass_len=SIGNIN.pw_2.value.length

  if(pa==pass_len){
	  hint()
  }
  
  else{
	alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�")
    SIGNIN.pw_2.value=""
    SIGNIN.pw_2.focus()
  }
 }
  function hint(){
	   var str=SIGNIN.pwqa.value
	  if (str=="")
	  {
	  alert("PW�亯�� �Է��ϼ���")
	  }
	  else{
		  select1()
	  }
 }
 
  function select1(){
	  if(SIGNIN.chk1.checked && SIGNIN.chk2.checked){
		  gaip()     
		  }

	  else{
		  alert("����� �������ּ���") 
		  }	  
  }


  function gaip(){
	  var ir=SIGNIN.namea.value

	  var male=SIGNIN.chk_male.value

	  var yy=SIGNIN.year.value
	  var mm=SIGNIN.month.value
	  var dd=SIGNIN.day.value

	  var ph1=SIGNIN.phone_1.value
	  var ph2=SIGNIN.phone_2.value
	  var ph3=SIGNIN.phone_3.value
	  var ph4=SIGNIN.phone_4.value	  

	  var email1=SIGNIN.email.value
	  var email2=SIGNIN.email_dns.value	 
	  
	  var addr1=SIGNIN.addr.value
	  var addr2=SIGNIN.addr_1.value
      var addr3=SIGNIN.addr_2.value	 
	  
	  var id=SIGNIN.idd.value
	  
	  var nikn=SIGNIN.nik.value

	  var pw=SIGNIN.pw_1.value
	  var phint=SIGNIN.pwhint.value
	  var pwq=SIGNIN.pwqa.value


	  alert("�̸�:"+ir+
	  "\n����:"+male+
	  "\n�������:"+yy+"-"+mm+"-"+dd+
	  "\n�޴�����ȣ:"+ph1+ph2+"-"+ph3+"-"+ph4+
	  "\nE-MAIL:"+email1+"@"+email2+
	  "\n�ּ�:"+addr1+addr2+addr3+
	  "\nID:"+id+"\n�г���:"+nikn+
	  "\n�н�����:"+pw+
	  "\n�е��������:"+phint+
	  "\n�н����������亯:"+pwq) 
  }
