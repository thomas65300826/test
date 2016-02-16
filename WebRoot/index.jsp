<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <span style="font-family:SimSun;"><body>
    This is my JSP page. <br>
    <form name = "form" action = "writeExcel" method="POST" >
     <input type="submit" onclick="XXX()" value="显示等待信息" name="提交">
    </form>
    
    <div id="massage_box" onclick="hiddenMessage();">  
            <div class="massage">  
                <div class="header" onmousedown="MDown(massage_box);">  
                    <div style="display: inline; width: 150px; position: absolute">  
                        正在加载中 ... ...  
                    </div>  
                    <span  
                        onClick="massage_box.style.visibility='hidden'; mask.style.visibility='hidden'"  
                        style="float: right; display: inline; cursor: hand"><img src="http://img.blog.csdn.net/20130619110313609" height="30px" width="30px"/></span>  
                </div>  
                <div  
                    style="margin-top: 20px; margin-left: 20px; width: 128px; height: 128px; float: left;">  
                    <img src="http://img.blog.csdn.net/20130619110245500" />  
                </div>  
                <div  
                    style="margin-top: 50px; width: 136px; height: 128px; float: right;">  
                    查询请求已发送  
                    <br />  
                    等待返回查询结果  
                </div>  
            </div>  
        </div>  
        <div id="mask" onclick="hiddenMessage();">  
        </div>  
  </body></span> 
</html>
<script> 
//取出传回来的参数error并与yes比较
  var success ='<%=request.getParameter("success")%>';
  if(success=='yes'){
   alert("提交成功!");
  }
</script>


<span style="font-family:SimSun;"><script type="text/javascript">  
function XXX() {  
    displayMessage();  
}  
  
function displayMessage() {  
    if (navigator.userAgent.indexOf("Firefox") == -1) {  
        var obj = document.getElementsByTagName('SELECT');  
        for ( var i = 0; i < obj.length; i++) {  
            if (obj[i].type.indexOf("select") != -1)  
                obj[i].style.visibility = 'hidden';  
        }  
        mask.style.visibility = 'visible';  
        massage_box.style.visibility = 'visible';  
    }  
}  
function hiddenMessage() {  
    mask.style.visibility = 'hidden';  
    massage_box.style.visibility = 'hidden';  
}  
var Obj = ''  
document.onmouseup = MUp  
document.onmousemove = MMove  
function MDown(Object) {  
    Obj = Object.id  
    document.all(Obj).setCapture()  
    pX = event.x - document.all(Obj).style.pixelLeft;  
    pY = event.y - document.all(Obj).style.pixelTop;  
}  
  
function MMove() {  
    if (Obj != '') {  
        document.all(Obj).style.left = event.x - pX;  
        document.all(Obj).style.top = event.y - pY;  
    }  
}  
  
function MUp() {  
    if (Obj != '') {  
        document.all(Obj).releaseCapture();  
        Obj = '';  
    }  
}  
</script></span>  

<span style="font-family:SimSun;"><style type="text/css">  
#massage_box {  
    position: absolute;  
    left: expression((             body.clientWidth-350)/ 2 );  
    top: expression(body.scrollTop +(             
         body.clientHeight-this.offsetHeight)/ 2 );  
    width: 350px;  
    height: 130px;  
    filter: dropshadow(color =             #666666, offx =             3, offy =   
                   3, positive =      
                2);  
    z-index: 2;  
    visibility: hidden  
}  
  
#mask {  
    position: absolute;  
    top: 0;  
    left: 0;  
    width: expression(body.clientWidth);  
    height: expression(body.scrollHeight >             body.clientHeight ?          
            body.scrollHeight :        
              body.clientHeight);  
    background: #666;  
    filter: ALPHA(opacity =             60);  
    z-index: 1;  
    visibility: hidden  
}  
  
.massage {  
    border: #036 solid;  
    border-width: 1 1 3 1;  
    width: 95%;  
    height: 95%;  
    background: #fff;  
    color: #036;  
    font-size: 12px;  
    line-height: 150%  
}  
  
.header {  
    background: #554295;  
    height: 10%;  
    font-family: Verdana, Arial, Helvetica, sans-serif;  
    font-size: 12px;  
    padding: 3 5 0 5;  
    color: #fff  
}  
</style></span>  