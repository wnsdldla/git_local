/**
 * 
 */

var check = true;

function formSubmit(){
	var form = document.proJoinForm;
		
		if(form.proEmail.value == '' || !check){
			alert("아이디를 확인해주세요.");
			form.proEmail.focus();
			return false;
		}
		//이메일형식
		var reg2 =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!reg2.test(form.proEmail.value)){
			alert("이메일 형식에 맞게 작성해주세요");
			form.proEmail.focus();
			return false;
		}
		
		if(form.proPw.value==""){
			alert("패스워드 입력해주세요");
			form.proPw.focus();
			return false;
		}else{			
			var reg = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
			if(!reg.test(form.proPw.value)){
				alert("비밀번호는 8자 이상이어야하며, 소문자/숫자/특수문자 모두 포함해야 합니다");
				return false;
			}
			else if(form.proPw.value.search(/\s/)!= -1){
				alert("비밀번호는 공백없이 입력해주세요");
				return false;
			}
		}
		
		if(form.proPw.value != form.proCheckPw.value){
			alert("비밀번호를 확인해주세요");
			form.proCheckPw.focus();
			return false;
		}
		
//		if(form.proAddress ==""){
//			alert("주소를 입력해주세요");
//			form.proAddress.focus();
//			return false;
//		}
		
		if(!form.check.checked){
			alert("이용약관에 동의하셔야 합니다.");
			return false;
		}
		var maps = "";
		if($("input[name='newwText1']").val() != null){
			maps += $("input[name='newwText1']").val();
		}else{
			alert("주소를 입력해주세요");
			return false;
		}
		if($("input[name='newwText2']").val() != null){
			maps += ","+$("input[name='newwText2']").val();
		}
		if($("input[name='newwText3']").val() != null){
			maps +=","+ $("input[name='newwText3']").val();
		}
		if($("input[name='newwText4']").val() != null){
			maps +=","+ $("input[name='newwText4']").val();
		}
		
		$("input[name='maps']").val(maps);
		
		console.log("val() : "+$("input[name='newwText1']").val());
		console.log("value : "+$("input[name='newwText1']").value);
		console.log(maps);
		console.log($("input[name='maps']").val());
	form.submit();
}

function checkId(id){
	check = false;
	console.log(id);
	if(id == ""){
		$("#idCheck_text").text("아이디를 작성해주세요.");
	}else{
		$.ajax({
			url: contextPath + "/member/ProMemberCheckIdOk.me?pro_nicname="+id,
			type: 'get',
			dataType: 'text',
			success: function(data){
				if(data.trim() == "ok"){
					check = true;
					$("#idCheck_text").text("사용할 수 있는 닉네임 입니다.");
				}else{
					$("#idCheck_text").text("중복된 닉네임 입니다.");
				}
			},
			error: function(){
				console.log("오류");
			}
		})
	}
}
//$("input[name='pro_nicname']").keyup(function(event){
//	var id = $("input[name='pro_nicname']").val();
//	checkId(id);
//});


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

var phoneNum = document.getElementById('proHp');

$("input[name='proHp']").keyup(function(event){
	var hp = $("input[name='proHp']").val();
	  console.log(this.value);
	  this.value = autoHypenPhone( this.value ) ;  
});

var i = 0;
function checkMap(si,gun){    
	if(i<4){
		
	
	i++;
	var newText = document.getElementById("newText");
	var input = document.createElement("input");
	input.setAttribute("name","newwText"+i);
	input.setAttribute("value", si+" "+gun);
	input.setAttribute("readonly", true);
	
	input.style.display="block";
	
	input.style.border="none";
	newText.appendChild(input);
	} else{
		var newText = document.getElementById("newText");
		var input = document.createElement("input");
		input.setAttribute("name","newwText6");
		input.setAttribute("value", "추가할 수 없습니다.");
		input.setAttribute("readonly", true);
		
		input.style.display="block";
		
		input.style.border="none";
		newText.appendChild(input);
		document.getElementById("map").setAttribute("type","hidden");
	}
	console.log(input);
}

$('document').ready(function() {
	 var area0 = ["서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
	  var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	   var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
	   var area3 = ["대덕구","동구","서구","유성구","중구"];
	   var area4 = ["광산구","남구","동구","북구","서구"];
	   var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
	   var area6 = ["남구","동구","북구","중구","울주군"];
	   var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
	   var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
	   var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
	   var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
	   var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
	   var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
	   var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
	   var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
	   var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
	   var area16 = ["서귀포시","제주시","남제주군","북제주군"];

	 

	 // 시/도 선택 박스 초기화

	 $("select[name^=sido]").each(function() {
	  $selsido = $(this);
	  $.each(eval(area0), function() {
	   $selsido.append("<option value='"+this+"'>"+this+"</option>");
	  });
	  $selsido.next().append("<option value=''></option>");
	 });

	 

	 // 시/도 선택시 구/군 설정

	 $("select[name^=sido]").change(function() {
	  var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
	  var $gugun = $(this).next(); // 선택영역 군구 객체
	  $("option",$gugun).remove(); // 구군 초기화

	  if(area == "area0")
	   $gugun.append("<option value=''></option>");
	  else {
	   $.each(eval(area), function() {
	    $gugun.append("<option value='"+this+"'>"+this+"</option>");
	   });
	  }
	 });


	});