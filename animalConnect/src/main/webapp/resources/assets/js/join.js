/**
 * 
 */

var check = false;

function formSubmit(){
	var form = document.joinForm;
		
		if(form.userEmail.value == ''){
			alert("아이디를 확인해주세요.");
			console.log("아이디"+form.userEmail.value);
			form.userEmail.focus();
			return false;
		}
		//이메일형식
		var reg2 =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!reg2.test(form.userEmail.value)){
			alert("이메일 형식에 맞게 작성해주세요");
			form.userEmail.focus();
			return false;
		}
		
		if(form.userPw.value==""){
			alert("패스워드 입력해주세요");
			form.userPw.focus();
			return false;
		}else{			
			var reg = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
			if(!reg.test(form.userPw.value)){
				alert("비밀번호는 8자 이상이어야하며, 소문자/숫자/특수문자 모두 포함해야 합니다");
				return false;
			}
			else if(form.userPw.value.search(/\s/)!= -1){
				alert("비밀번호는 공백없이 입력해주세요");
				return false;
			}
		}
		
		if(form.userPw.value != form.checkPw.value){
			alert("비밀번호를 확인해주세요");
			form.checkPw.focus();
			return false;
		}
		
		if(!form.check.checked){
			alert("이용약관에 동의하셔야 합니다.")
			return false;
		}
			

	form.submit();
}



//자동 '-'붙이기
var autoHypenPhone = function(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }

    return str;
}

var phoneNum = document.getElementById('userHp');

$("input[name='userHp']").keyup(function(event){
	var hp = $("input[name='userHp']").val();
	  this.value = autoHypenPhone( this.value ) ;  
});


