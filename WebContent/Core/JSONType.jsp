<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSONType.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	
	$(function(){
		//1.빈 객체 생성후 속성 추가
		var obj ={};//자바스크립트 객체 생성
		console.log('typeof obj:',typeof obj);
		console.log(obj);
		obj.name ='가길동';
		obj.age  = 20;
		obj.addr = '서울시 가산동';
		obj.print= function(){
			//this는 obj를 의미한다 즉 자기자신의 객체를 가리킨다
			console.log('이름:%s,나이:%s,주소:%s',this.name,this.age,this.addr);
		};
		//객체에는 forEach는 적용불가 .for in문만 적용됨.
		console.log('[키값을 이용해서 value값 꺼내오기]');
		console.log('obj.name:',obj.name);
		console.log('obj["name"]:',obj["name"]);
		obj.print();
		console.log('[for~in문을 이용해서 모든 값 꺼내오기]');
		//※for~in문으로 꺼내올때는 반드시 []형태로 꺼낸다
		//배열인 경우 : for(var 인덱스 in 배열)
		//객체인 경우 : for(var 키 in 객체)
		for(var key in obj)
			console.log('%s : %s',key,obj[key]);
		//객체 삭제: delete 객체변수.키값 혹은 객체변수["키값"]	
		delete obj.print;
		console.log('[속성 삭제후]');
		for(var key in obj)
			console.log('%s : %s',key,obj[key]);
		//전체 삭제:반복하면서 delete로 삭제하거나 obj={} 빈 객체를 할당
		//방법1]
		//for(var key in obj)
		//	delete obj[key];
		//방법2]
		obj = {};
		
		console.log('[전체 삭제후]');
		for(var key in obj)
			console.log('%s : %s',key,obj[key]);
		//2.{키값1:VALUE값1,키값2:VALUE값2,....}으로 객체 생성
		var obj2 ={name:'나길동',age:20,addr:'서울시 나산동'};
		console.log('[$.each()제이쿼리 함수를 이용해서 모든 값 꺼내오기]');
		$.each(obj2,function(key,value){
			console.log('%s : %s',key,value);
		});
		/*3.JSON배열 타입: {
	   		키값:[
	        {키값1:VALUE값1,키값2:VALUE값2,....},
	        {키값1:VALUE값1,키값2:VALUE값2,....},
	        {키값1:VALUE값1,키값2:VALUE값2,....},
	        ......
	       	]
    	}	  
		*/
		
		var obj3 ={members:[
			{name:'다길동',age:30,addr:'서울시 다산동'},
			{name:'라길동',age:20,addr:'서울시 라산동'},
			{name:'마길동',age:40,addr:'서울시 마산동'}
		]};
		console.log(typeof obj3);
		console.log(typeof obj3.members);
		console.log("회원 총 수:",obj3.members.length);
		console.log('이름:%s,나이:%s,주소:%s',obj3.members[0].name,obj3.members[0]['age'],obj3.members[0].addr);
		console.log('[for ~ in문]');
		for(var key in obj3)
			for(var index in obj3[key])
				for(var ky in obj3[key][index])
					console.log('%s : %s',ky,obj3[key][index][ky]);
		console.log('[$.each() 제이쿼리 함수]');
		$.each(obj3,function(key,value){//value는 [{},{},{}]
			$.each(value,function(index,element){
				$.each(element,function(k,v){
					console.log('%s : %s',k,v);
				})
				
			});//element는 {}
			
		});
		
		
		var jsonType={id:'kim',pwd:'1234'};
		console.log('아이디:%s,비번:%s',jsonType.id,jsonType.pwd);
		//JSON타입(object)을 string타입으로 변경:JSON.stringify(json객체)
		console.log('[JSON 객체]');
		console.log(typeof JSON);
		console.log(JSON);
		var jsonString=JSON.stringify(jsonType);
		console.log(typeof jsonString);
		console.log(jsonString);
		console.log(jsonString.id);//undefined
		 //string타입을 JSON타입으로 :JSON.parse(json형식의 문자열)
		console.log(typeof JSON.parse(jsonString));
		console.log("아이디:",JSON.parse(jsonString).id);
	});
</script>
</head>
<body>
	<fieldset>
		<legend>JSON(자바스크립트 객체 표기법)</legend>
	
	</fieldset>
</body>
</html>