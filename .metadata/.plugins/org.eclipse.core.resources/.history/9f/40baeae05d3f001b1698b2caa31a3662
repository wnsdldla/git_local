/**
 * 
 */

/*

var i = (cnt-1);
var j = 0;
function addCareer(){
	var carrer = document.getElementById("carrer");
	for(var k=0; k < i+1; k++){
		document.getElementById("add"+k).style.visibility="hidden";
		//document.getElementById("del"+k).style.visibility="hidden";		
	}
	
	i++;
	var li = document.createElement("li");

	li.innerHTML="<input name=\"contents"+i+"\" value=\"\">  <input id=\"add"+i+"\" onclick=\"addCareer()\" type=\"button\" class=\"button small\" value=\"추가\"> " +
			"<input id=\"del"+i+"\" onclick=\"deletCareer()\" type=\"button\" class=\"button small\" value=\"삭제\"> "
	
	carrer.appendChild(li);
	
	j++;

	console.log(""+j);
}
function deletCareer(){
	var carrer = document.getElementById("carrer");
	var li = document.getElementById("carrer"+i)
	carrer.removeChild(li);
	i--;
	j--;
	if(j > 0){
		document.getElementById("add"+j).style.visibility="visible";
		document.getElementById("del"+j).style.visibility="visible";				
	}
	if(j == 0){
		document.getElementById("add").style.visibility="visible";
	}
}

*/
function searchNicname(){
	
	var nicname = $("input[name='nicname']").val();
	
	document.getElementById("pro").style.display = "none";
	document.getElementById("pageCnt").style.display = "none";
	document.getElementById("searhProNic").style.display = "";
	
	console.log(nicname);
	
	$.ajax({
	url: contextPath + "/profile/SearchProfile.pro?nicname="+nicname,
	type: 'get',
	dataType: 'text',
	success: function(result){
		console.log("성공");
			
		/*
		 * searchJSON.put("pro_address", p_vo.getPro_address());
		searchJSON.put("nicname", p_vo.getNicname());
		searchJSON.put("pro_img", p_vo.getPro_img());

		
		 * 
		 */
		
		const obj = JSON.parse(result);
		console.log(obj.pro_address);
		console.log(obj.nicname);
		console.log(obj.pro_img);
		console.log(obj.pro_email);
		
		var nicname = obj.nicname
		
		document.getElementById("proInform").innerHTML = "<span class=\"image left\">" +
				"<a id=\"proDetail\" href=\""+contextPath+"/profile/ProfileDetail.pro?req="+obj.pro_email+"\"style=\"text-decoration:none; font-size:15px\">" +
						"<img id=\"proimg\" src=\""+contextPath+"/app/profile_img/"+obj.pro_img+"\" style=\"height: 150px; width: 150px\"/>상세보기</a>" +
						"</span>닉 네 임 : "+obj.nicname+"<br> 활동주소 : "+obj.pro_address+"</p>";
		//document.getElementById("proimg").src = "/app/profile_img/" + obj.pro_img;
			
		
	
		
		
	},
	error: function(e){
		console.log("오류");
		console.log(e);
	}
	
	
	})
}



