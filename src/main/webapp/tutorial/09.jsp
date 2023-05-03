<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 객체</h1>
	<ul>
		<li>HTML에 발생하는 이벤트를 처리 하기 위해선 JS의 객체 형태를 이해해야한다.</li>
		<li></li>
		<li></li>
	</ul>
	
	<script type="text/javascript">
		let nick = function() {
			nick = "하이";
			
			console.log(nick);
			console.log(this.nick);
		}
	
		let obj = {
			nick : "luffy",
			talent : true,
			skill : [],
			introduce : function() {
				console.log("nick = ", this.nick, "(",this.talent,")");
			},
			sayHi : function() {
				let msg = this.makeMessage();
				console.log(msg)
			},
			
			makeMessage : () => "에헴!"
			
		};
		
		obj.sayHi();
		
		obj.makeMessage = function() {
			return "밥 주 세 요";
		}
		
		obj.sayHi();
		
		
		
		console.log(obj.nick);//
		
		obj.introduce();
		obj.introduce = function() {
			console.log(this.nick,",",this.talent);
		}
		obj.introduce();
		obj.addSkill = function(one) {
			this.skill.push(one);
		};
		obj.addSkill("고무고무총");
		console.log(obj.skill);
		
		let sample = {
				skill : ["막기", "돌던지기"]
		};
		
		sample.addSkill = obj.addSkill;
		sample.addSkill("발로차기");
		console.log(sample.skill);
		
		this.nick = "바이";
		
		const pick = obj.introduce;
		pick();
		nick();
		
		
		
	</script>
</body>
</html>