// JavaScript Document

window.onload = function () {

	
	var getmore = document.getElementById('get_more');
	//收缩内容
	var accord_cont1 = document.getElementById('accord_cont1');
	var accord_cont2 = document.getElementById('accord_cont2');
	var accord_cont3 = document.getElementById('accord_cont3');
	var accord_cont4 = document.getElementById('accord_cont4');
	var h3_cont1 = document.getElementById('h3_cont1');
	var h3_cont2 = document.getElementById('h3_cont2');
	var h3_cont3 = document.getElementById('h3_cont3');
	var h3_cont4 = document.getElementById('h3_cont4');
	var accord_cont = new Array(accord_cont1,accord_cont2,accord_cont3,accord_cont4);
	var h3_cont = new Array(h3_cont1,h3_cont2,h3_cont3,h3_cont4);
	
	var aProductImg=document.getElementsByClassName('real_product_img');

	//给每个元素添加自定义属性
	//alert(!true);
	for(var i=0;i<accord_cont.length;i++){
		accord_cont.displayFlag=false;
	}
	for(i=0;i<h3_cont.length;i++){
		h3_cont[i].num=i;
	}
	accord_cont[0].displayFlag=true;
	upsetDisplay(accord_cont);
	
	//根据displayFlagArr来更新显示状态
	function upsetDisplay(obj){
		for(var i=0;i<obj.length;i++){
			if(obj[i].displayFlag===true){
				obj[i].style.display="block";
				h3_cont[i].firstChild.style.background="url(img/acminus.png) no-repeat left top";
			}
			else{
				obj[i].style.display="none";
				h3_cont[i].firstChild.style.background="url(img/acplus.png) no-repeat left top";
			}
		}
	}
	//某个标题点击后更新其子内容的状态，并更新显示模式
	function change_displayFlag(){	
		accord_cont[this.num].displayFlag=!accord_cont[this.num].displayFlag;
		upsetDisplay(accord_cont);
	}
	
	//添加点击事件
	for(i=0;i<accord_cont.length;i++){
		h3_cont[i].onclick = change_displayFlag;
	}

	
	
	//显示更多，隐藏
	getmore.show_flag=false;
	var extend_info1 = document.getElementById('extend_info1');
	extend_info1.style.display="none";
	getmore.onclick = function(){
		if(getmore.show_flag===false){
			extend_info1.style.display="inline";
			getmore.innerHTML="[隐藏]";
			getmore.show_flag=true;
		}
		else{
			extend_info1.style.display="none";
			getmore.innerHTML="[显示更多]";
			getmore.show_flag=false;
		}
		
	};
	
	
	//图片悬浮变透明
	function ImageOverOpacity(){
		
		this.style.opacity='0.6';
	}	
	function ImageOutOpacity(){
		
		this.style.opacity='1';
	}	
	for(i=0;i<aProductImg.length;i++){
		
		aProductImg[i].onmouseover =ImageOverOpacity;
		aProductImg[i].onmouseout =ImageOutOpacity;	
		}
	
	


};