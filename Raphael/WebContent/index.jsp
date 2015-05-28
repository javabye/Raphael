<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/raphael-min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		//在坐标（10,50）创建宽320，高200的画布
		var paper = Raphael(10, 50, 320, 200);
		// 在坐标（x = 50, y = 40）绘制半径为 10 的圆
		var circle = paper.circle(50, 40, 50);
		// 给绘制的圆圈填充红色 (#f00)
		circle.attr("fill", "gray");
		// 设置画笔（stroke）的颜色为白色
		circle.attr("stroke", "#fff");
	</script>
	<script type="text/javascript">
		var paper = Raphael(10,250,350,350);
		var circle = paper.circle(150, 150, 60);
		circle.animate({fill: "#223fa3", stroke: "#000", "stroke-width": 80, "stroke-opacity": 0.5}, 2000);
	</script>
	<div id="rapdiv" style="border: 1px red solid"></div>
	<script type="text/javascript">
		//在指定div中创建画布
		var paper = Raphael("rapdiv",200,200);
		var rect = paper.rect(150,100,20,30);
		rect.attr("fill", "gray");
	</script>
	
	<div id="raphael2" style="border: 1px red solid"></div>  
	<script>  
	    var paper=Raphael("raphael2",500,300);  
	    var t=paper.text(350,150,"Hello from 陈三");  
	    t.attr({"font-size":"30px","fill":"blue","stroke":"red","opacity":".5"});  
	</script>
	
	<!--
		除了修改对象属性，我们还可以变换(transform)对象，比如平移、旋转、缩放。
		Raphael 对象变换有四个命令：  
  
	    t – translate  
	    r – rotate  
	    s – scale  
	    m – matrix  
	  
	         下例中 t100,100r45t-100,0s.5 命令翻译过来就是：  
	  
	         对象水平方向平移100  
	         垂直方向平移100  
	         旋转45度  
	         水平方向往负方向平移100  
	         缩小图形到原来的一半  
	-->
	<div id="raphael3"></div>  
	<script>  
	(function(){  
	    var paper=Raphael("raphael3",200,200);  
	    var rect=paper.rect(50,50,100,100,5);  
	    rect.attr({"stroke-dasharray":"-"});  
	    rect.transform("t100,100r45t-100,0s.5");  
	})();  
	</script>
	
	<!-- 
		圆心的初始坐标(200,130)，半径100，填充红色，页面加载完成后，圆心坐标变成(cx,cy)，即(10,20)，半径缩为8，填充蓝色，
		这个变化过程时长为10e3毫秒，即10秒 – 如果你没有看到动画效果，那是因为动画已经结束，请刷新页面，然后跳转到这一部分。 
	-->
	<div id="raphael4"></div>  
	<script>  
		(function(){  
		    var paper=Raphael("raphael4",400,300);  
		    var circle=paper.circle(200,150,100);  
		    circle.attr({"fill":"red"});  
		    circle.animate({cx: 10, cy: 20, r: 8, "fill": "blue"}, 10e3);  
		})();  
	</script> 
	
	<!--  
		Raphael.js 还可以给对象绑定事件，比如单击、双击、拖动、鼠标移入、鼠标移出等。
	-->
	<div id="raphael5"></div>  
	<script>  
	(function(){  
	    var paper=Raphael("raphael5",400,300);  
	    var circle=paper.circle(200,150,100);  
	    circle.attr({"fill":"red"});  
	    circle.hover(function(){circle.attr({"fill":"green"});},function(){circle.attr({"fill":"red"});});//给 circle 对象绑定 hover 事件  
	})();  
	</script>
</body>
</html>