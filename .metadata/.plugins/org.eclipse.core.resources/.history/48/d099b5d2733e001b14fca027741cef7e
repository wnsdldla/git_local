/**
 * 
 */

var check = false;

function formSubmit(){
	var form = document.updateForm;

		
		if(form.new_pw.value==""){
			alert("비밀번호를 입력해주세요");
			form.new_pw.focus();
			return false;
		}else{			
			var reg = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
			if(!reg.test(form.new_pw.value)){
				alert("비밀번호는 8자 이상이어야하며, 소문자/숫자/특수문자 모두 포함해야 합니다");
				return false;
			}
			else if(form.new_pw.value.search(/\s/)!= -1){
				alert("비밀번호는 공백없이 입력해주세요");
				return false;
			}
		}
		
		if(form.new_pw.value != form.new_checkPw.value){
			alert("비밀번호를 확인해주세요");
			form.new_checkPw.focus();
			return false;
		}
		
	form.submit();
}


