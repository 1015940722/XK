//$("#canshu").submit();
var startTime;
$(document).ready(function () {
	$("#subButton").click(function () {
		var temp = document.getElementById("qupload").value.split(".");
		var word = ['doc','docx','xls','ppt','pptx','pdf','txt'];
		var video = ['mpg','mpeg','avi','rm','rmvb','mov','wmv','asf','dat'];
		var code = ['py','c','cpp','py','java','html','css','htm','js']; 
		if(document.getElementById("qupload").value!=''&&document.getElementById("qtitle").value!=''){
			/*if(document.getElementById("qkind").value==0&&word.indexOf(temp[temp.length-1])==-1){alert('请上传正确文件');}
			else if(document.getElementById("qkind").value==1&&video.indexOf(temp[temp.length-1])==-1){alert('请上传正确文件');}
			else if(document.getElementById("qkind").value==2&&code.indexOf(temp[temp.length-1])==-1){alert('请上传正确文件');}
			else*/{
				var myDate = new Date();
				startTime = myDate.getTime();
				$(this).attr("disabled", true);
				document.getElementById("fileName").value = document.getElementById("qupload").value;
				$("#uploadForm").submit();
				$("#progress").show();
				$("#uploaded").css("width", "0%");
			//	postObj();
				getProgressBar();
			}
		}else{alert('请填写所需参数');}
	});
	$("#close").click(function(){$("#progress").hide();});
});
function postObj(){
	var obj={
			"title":$("#qtitle").val(),
			"author":$("#qauthor").val(),
			"fileName":$("#fileName").val(),
			"content":$("#qcontent").val(),
			"kind":$("#qkind").val(),
		};
		$.post("/dxbook/back/save.json",obj);
}
function getProgressBar() {
	var timestamp = (new Date()).valueOf();
	var bytesReadToShow = 0;
	var contentLengthToShow = 0;
	var bytesReadGtMB = 0;
	var contentLengthGtMB = 0;
	$.getJSON("getBar.json","",function(data){
		var qwe = data.toString();
		if (qwe == 100) {
			$("#close").show();
			$("#uploaded").css("width", "100%");
			$("div#info").html("上传已完成");
			window.clearTimeout(interval);
			$("#subButton").attr("disabled", false);
		} else {
			var percent = qwe + "%";
			$("#uploaded").css("width", percent);
			$("div#info").html("已完成" + precent);
		}
	});
	var interval = window.setTimeout("getProgressBar()", 1000);
}

