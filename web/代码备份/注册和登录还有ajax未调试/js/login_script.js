// JavaScript Document
window.onload = function(){
	
	var oRegBtn = document.getElementById('btnReg');
	var oAForget = document.getElementById('forget');
	var oRemenber = document.getElementById('remenber');
	var oName = document.getElementById('name');
	var oPassword = document.getElementById('password');
	oRegBtn.onclick=check_login;
	oAForget.onclick=function(){
		
		showModalBox("找回密码功能尚未开发.");
	}
	
	//页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('name') && getCookie('password')){
      	oName.value = getCookie('name');
      	oPassword.value = getCookie('password');
		oRemenber.checked=true;
    }
	
	
	
	/*检查并提交登录表单*/
    function check_login(){
		//1.用户名
		var name = document.getElementById('name').value;
		
		if(name==''){
			showModalBox('用户名不能为空');
			document.getElementById('name').focus();
			return false;
		}
		else if(name.length>20||name.length<5){
			showModalBox(name.length+'用户名的长度应为5-20位');
			document.getElementById('name').value='';
			document.getElementById("name").focus();
			return false;
		}
		else if(/.*[\u4e00-\u9fa5]+.*$/.test(name)){
			showModalBox('密码不能含有汉字');
			document.getElementById('name').focus();
			return false;
		}
		
		//2.密码
		var password = document.getElementById('password').value;
		if(password==''){
			showModalBox('密码不能为空');
			document.getElementById('password').focus();
			return false;
		}
		else if(password.length>20||password.length<5){
			showModalBox(password.length+'密码的长度应为5-20位');
			document.getElementById('password').value='';
			document.getElementById('password').focus();
			return false;
		}
		else if(/.*[\u4e00-\u9fa5]+.*$/.test(password)){
			showModalBox('密码不能含有汉字');
			document.getElementById('password').focus();
			return false;
		}
		
		//表单格式正确。发送ajax请求

		if(oRemenber.checked){ //如果选择记住密码，则添加cookie,期限1天
			
			setCookie('name',oName.value,1); //保存帐号到cookie，有效期7天
			setCookie('password',oPassword.value,1); //保存密码到cookie，有效期7天

			//showModalBox('保存');
		}
		else{                 //否则清除cookie
			
			deleteCookie('name');
			deleteCookie('password');
			//showModalBox('清除');
		}

		//发送ajax请求
		
		
		
		return true;
	}
	
	
		/*cookie操作*/
	//1.设置cookie
	function setCookie(cname,cvalue,exdays)
	{
	  var d = new Date();
	  d.setTime(d.getTime()+(exdays*24*60*60*1000));
	  var expires = "expires="+d.toGMTString();
	  document.cookie = cname + "=" + cvalue + "; " + expires;
	}
	//2.获取cookie
	function getCookie(cname)
	{
	  var name = cname + "=";
	  var ca = document.cookie.split(';');
	  for(var i=0; i<ca.length; i++) 
	  {
		var c = ca[i].trim();
		if (c.indexOf(name)==0) return c.substring(name.length,c.length);
	  }
	  return "";
	}
	
	//3.清除指定cookie
  function deleteCookie(cname){
    setCookie(cname,null,-1);
  };
	
	
	
	
	
	/*模态框函数*/
	function showModalBox(info){
		var oModalBox = document.getElementById('modal_info_box');
		oModalBox.innerHTML=info;
		$('#myModal').modal('show');
		//showModalBox('test');
	}
};
