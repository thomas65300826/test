<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="canonical" href="http://www.aectrading.nl/-1">
<meta property="og:title"
	content="&#x5728;&#x7EBF;&#x4E0B;&#x5355;&#x20;&#x7C;&#x20;Aectrading.nl" />
<meta property="og:url" content="http://www.aectrading.nl/-1" />
<base href=<%=basePath%> />
<meta name="description" content="">
<title>在线下单 | Aectrading.nl</title>
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans%7COpen+Sans"
	media="screen" rel="stylesheet" type="text/css">
<link
	href="http://a.jwwb.nl/assets/css/frontend.css?bust=e93df29145196fa607a28770ca9be519"
	media="screen" rel="stylesheet" type="text/css">
<link
	href="http://temp-bfbacowbqpbhvmxnwabi.jouwweb.nl/internal_upload/public/y/f/m/temp-bfbacowbqpbhvmxnwabi/stijl.css?bust=1454426197"
	rel="stylesheet" type="text/css">


<link
	href="http://a.jwwb.nl/assets/favicon.ico?bust=3968f56488b72ab841ab4418903fb23b"
	rel="shortcut icon">
<link
	href="http://a.jwwb.nl/assets/favicon.ico?bust=3968f56488b72ab841ab4418903fb23b"
	rel="icon">
<link
	href="http://a.jwwb.nl/assets/favicon-152.png?bust=25471ed26678b45115f73f00c4d1c497"
	rel="apple-touch-icon-precomposed">
</head>


<body id="top"
	class="jw-header-is-text jw-is-frontend jw-is-no-sidebar jw-is-no-second-sidebar jw-is-no-slideshow jw-is-no-touch-device jw-is-no-touch-device jw-is-no-hero"
	data-jouwweb-website="635352" data-jouwweb-page="2330094"
	data-jouwweb-language="nl" data-jouwweb-backend="jouwweb.nl"
	data-template-threshold="960">
	This is my JSP page.
	<br>
	<form name="form" action="writeExcel" method="POST">
		<input type="submit" onclick="XXX()" value="显示等待信息" name="提交">
	</form>

	<div id="massage_box" onclick="hiddenMessage();">
		<div class="massage">
			<div class="header" onmousedown="MDown(massage_box);">
				<div style="display: inline; width: 150px; position: absolute">
					正在加载中 ... ...</div>
				<span
					onClick="massage_box.style.visibility='hidden'; mask.style.visibility='hidden'"
					style="float: right; display: inline; cursor: hand"><img
					src="images/guanbi.png" height="30px" width="30px" /> </span>
			</div>
			<div
				style="margin-top: 20px; margin-left: 20px; width: 128px; height: 128px; float: left;">
				<img src="images/cxz_ly.gif" />
			</div>
			<div
				style="margin-top: 50px; width: 136px; height: 128px; float: right;">
				查询请求已发送 <br /> 等待返回查询结果
			</div>
		</div>
	</div>
	<div id="mask" onclick="hiddenMessage();"></div>

	!!!!!!
	<div class="jw-background-wrapper">
		<div class="jw-background"></div>
		<div class="jw-body">
			<div class="bg-1"></div>
			<div class="bg-2"></div>
			<div class="wrapper">
				<header class="topbar jw-header-container">
				<div class="jw-header jw-header-text jw-header-text-toggle"
					data-stylable="true">
					<a id="jw-header-title" class="jw-header-title"
						href="http://www.aectrading.nl/"><span style="font-size: 85%;"><span
							style="color: #ffffff;">Asia-Euro Connect</span>&nbsp;</span> &nbsp; <span
						style="font-size: 70%;"><span style="color: #ff6600;">亚欧快递（贸易）公司</span>
					</span> </a>
				</div>
				<button class="jw-mobile-toggle">
					<span class="jw-mobile-bar"></span><span class="jw-mobile-bar"></span><span
						class="jw-mobile-bar"></span>
				</button>
				</header>
				<nav class="menu clear jw-menu-collapse">

				<ul id="jw-menu" class="jw-menu jw-menu-horizontal">
					<li class="jw-menu-item"><a id="jouwweb-page-2329933"
						class="jw-menu-link" href="http://www.aectrading.nl/">Home</a></li>
					<li class="jw-menu-item"><a id="jouwweb-page-2330478"
						class="jw-menu-link" href="http://www.aectrading.nl/-6">使用需知</a></li>
					<li class="jw-menu-item jw-menu-is-active"><a
						id="jouwweb-page-2330094"
						class="jw-menu-link  js-active-menu-item"
						href="http://localhost:8080/PostNLCustomerForm/index.jsp">在线下单</a>
					</li>
					<li class="jw-menu-item"><a id="jouwweb-page-2330034"
						class="jw-menu-link" href="http://www.aectrading.nl/-7">在线查询</a></li>
					<li class="jw-menu-item"><a id="jouwweb-page-2330459"
						class="jw-menu-link" href="http://www.aectrading.nl/-3">资料下载</a></li>
					<li class="jw-menu-item"><a id="jouwweb-page-2330473"
						class="jw-menu-link" href="http://www.aectrading.nl/-5">最新消息</a></li>
					<li class="jw-menu-item"><a id="jouwweb-page-2330472"
						class="jw-menu-link" href="http://www.aectrading.nl/-4">意见反馈</a></li>
					<li class="jw-menu-item"><a id="jouwweb-page-2332811"
						class="jw-menu-link" href="http://www.aectrading.nl/-2">常见问题</a></li>
				</ul>
				</nav>
				<div class="slideshow"></div>
				<div class="content-wrap">
					<div class="gradient"></div>
					<div class="content-area">
						<main>
						<div class="jw-section jw-section-content content">
							<div id="jw-breadrumbs" class="jw-breadcrumbs">
								<a id="jouwweb-page-2329933" href="http://www.aectrading.nl/">Home</a><span
									class="sep"> &raquo; </span><span class="js-active-menu-item">在线下单</span>
							</div>
							<div id="jw-element-23482115" style="width: 100%;"
								data-jw-element-id="23482115"
								class="jw-intent jw-tree-node jw-element  jw-tree-container  jw-vertical_split">
								<div id="jw-element-23482139" style="width: 100%;"
									data-jw-element-id="23482139"
									class="jw-intent jw-tree-node jw-element  jw-node-is-first-child jw-node-is-last-child jw-contact-form">
									<form method="POST">
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217494-&#x5BC4;&#x4EF6;&#x4EBA;">寄件人
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217494-&#x5BC4;&#x4EF6;&#x4EBA;"
													id="dynamic-form-61928-217494-&#x5BC4;&#x4EF6;&#x4EBA;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217497-&#x63D0;&#x8D27;&#x5730;&#x5740;">提货地址
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217497-&#x63D0;&#x8D27;&#x5730;&#x5740;"
													id="dynamic-form-61928-217497-&#x63D0;&#x8D27;&#x5730;&#x5740;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217498-&#x5BC4;&#x4EF6;&#x4EBA;&#x7535;&#x8BDD;">寄件人电话
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217498-&#x5BC4;&#x4EF6;&#x4EBA;&#x7535;&#x8BDD;"
													id="dynamic-form-61928-217498-&#x5BC4;&#x4EF6;&#x4EBA;&#x7535;&#x8BDD;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217499-&#x56DE;&#x5355;&#x90AE;&#x7BB1;">回单邮箱
												*</label>
											<div class="jw-element-form-content ">
												<input type="email"
													name="dynamic-form-61928-217499-&#x56DE;&#x5355;&#x90AE;&#x7BB1;"
													id="dynamic-form-61928-217499-&#x56DE;&#x5355;&#x90AE;&#x7BB1;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217508-&#x63D0;&#x8D27;&#x65E5;&#x671F;">提货日期
												* </label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217508-&#x63D0;&#x8D27;&#x65E5;&#x671F;"
													class="dynamic-form-date&#x20;jw-element-form-input-text"
													id="dynamic-form-61928-217508-&#x63D0;&#x8D27;&#x65E5;&#x671F;"
													value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-221580-AEC&#x4EE3;&#x6253;&#x5370;&#x8FD0;&#x5355;">AEC代打印运单
												*</label>
											<div class="jw-element-form-content ">
												<div class="jw-element-form-checkbox">
													<label><input type="radio"
														name="dynamic-form-61928-221580-AEC&#x4EE3;&#x6253;&#x5370;&#x8FD0;&#x5355;"
														id="dynamic-form-61928-221580-AEC&#x4EE3;&#x6253;&#x5370;&#x8FD0;&#x5355;"
														value="&#x662F;">是</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="radio"
														name="dynamic-form-61928-221580-AEC&#x4EE3;&#x6253;&#x5370;&#x8FD0;&#x5355;"
														value="&#x5426;">否</label>
												</div>
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217500-&#x5305;&#x88F9;1&#x6536;&#x4EF6;&#x4EBA;">包裹1收件人
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217500-&#x5305;&#x88F9;1&#x6536;&#x4EF6;&#x4EBA;"
													id="dynamic-form-61928-217500-&#x5305;&#x88F9;1&#x6536;&#x4EF6;&#x4EBA;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217503-&#x5305;&#x88F9;1&#x7535;&#x8BDD;">包裹1电话
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217503-&#x5305;&#x88F9;1&#x7535;&#x8BDD;"
													id="dynamic-form-61928-217503-&#x5305;&#x88F9;1&#x7535;&#x8BDD;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217501-&#x5305;&#x88F9;1&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x586B;&#x7701;&#x5E02;&#xFF09;">包裹1地址（不填省市）
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217501-&#x5305;&#x88F9;1&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x586B;&#x7701;&#x5E02;&#xFF09;"
													id="dynamic-form-61928-217501-&#x5305;&#x88F9;1&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x586B;&#x7701;&#x5E02;&#xFF09;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217507-&#x5305;&#x88F9;1&#x90AE;&#x7F16;">包裹1邮编
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217507-&#x5305;&#x88F9;1&#x90AE;&#x7F16;"
													id="dynamic-form-61928-217507-&#x5305;&#x88F9;1&#x90AE;&#x7F16;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217502-&#x5305;&#x88F9;1&#x7701;&#x5E02;">包裹1省市
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217502-&#x5305;&#x88F9;1&#x7701;&#x5E02;"
													id="dynamic-form-61928-217502-&#x5305;&#x88F9;1&#x7701;&#x5E02;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217504-&#x5305;&#x88F9;1&#x91CD;&#x91CF;">包裹1重量
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217504-&#x5305;&#x88F9;1&#x91CD;&#x91CF;"
													id="dynamic-form-61928-217504-&#x5305;&#x88F9;1&#x91CD;&#x91CF;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217505-&#x5305;&#x88F9;1&#x603B;&#x4EF7;&#x503C;&#xFF08;&#x5355;&#x4F4D;&#x9ED8;&#x8BA4;&#x6B27;&#x5143;&#xFF0C;&#x53EA;&#x586B;&#x6570;&#x5B57;&#x5373;&#x53EF;&#xFF09;">包裹1总价值（单位默认欧元，只填数字即可）
												*</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217505-&#x5305;&#x88F9;1&#x603B;&#x4EF7;&#x503C;&#xFF08;&#x5355;&#x4F4D;&#x9ED8;&#x8BA4;&#x6B27;&#x5143;&#xFF0C;&#x53EA;&#x586B;&#x6570;&#x5B57;&#x5373;&#x53EF;&#xFF09;"
													id="dynamic-form-61928-217505-&#x5305;&#x88F9;1&#x603B;&#x4EF7;&#x503C;&#xFF08;&#x5355;&#x4F4D;&#x9ED8;&#x8BA4;&#x6B27;&#x5143;&#xFF0C;&#x53EA;&#x586B;&#x6570;&#x5B57;&#x5373;&#x53EF;&#xFF09;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;">包裹1属性
												*</label>
											<div class="jw-element-form-content ">
												<div class="jw-element-form-checkbox">
													<label> <input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														id="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;"
														value="baby&#x20;products&#x5A74;&#x513F;&#x7528;&#x54C1;">baby
														products婴儿用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="life&#x20;articles&#x751F;&#x6D3B;&#x7528;&#x54C1;">life
														articles生活用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="cosmetics&#x5316;&#x5986;&#x54C1;">cosmetics化妆品</label>

												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="clothes&#x8863;&#x670D;">clothes衣服</label>

												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="shoes&#x978B;&#x5B50;">shoes鞋子</label>

												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="snacks&#x96F6;&#x98DF;">snacks零食</label>

												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221576-&#x5305;&#x88F9;1&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="used&#x20;personal-use&#x20;goods&#x4E2A;&#x4EBA;&#x4E8C;&#x624B;&#x7269;&#x54C1;">used
														personal-use goods个人二手物品</label>

												</div>
											</div>
										</div>



										<div class="jw-element-form-group">

											<label class="jw-element-form-label"
												for="dynamic-form-61928-217509-&#x5305;&#x88F9;2&#x6536;&#x4EF6;&#x4EBA;">包裹2收件人</label>

											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217509-&#x5305;&#x88F9;2&#x6536;&#x4EF6;&#x4EBA;"
													id="dynamic-form-61928-217509-&#x5305;&#x88F9;2&#x6536;&#x4EF6;&#x4EBA;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>

										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217519-&#x5305;&#x88F9;2&#x7535;&#x8BDD;">包裹2电话</label>

											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217519-&#x5305;&#x88F9;2&#x7535;&#x8BDD;"
													id="dynamic-form-61928-217519-&#x5305;&#x88F9;2&#x7535;&#x8BDD;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217520-&#x5305;&#x88F9;2&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;">包裹2地址（不含省市）</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217520-&#x5305;&#x88F9;2&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													id="dynamic-form-61928-217520-&#x5305;&#x88F9;2&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217521-&#x5305;&#x88F9;2&#x90AE;&#x7F16;">包裹2邮编</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217521-&#x5305;&#x88F9;2&#x90AE;&#x7F16;"
													id="dynamic-form-61928-217521-&#x5305;&#x88F9;2&#x90AE;&#x7F16;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217522-&#x5305;&#x88F9;2&#x7701;&#x5E02;">包裹2省市</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217522-&#x5305;&#x88F9;2&#x7701;&#x5E02;"
													id="dynamic-form-61928-217522-&#x5305;&#x88F9;2&#x7701;&#x5E02;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217523-&#x5305;&#x88F9;2&#x91CD;&#x91CF;">包裹2重量</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217523-&#x5305;&#x88F9;2&#x91CD;&#x91CF;"
													id="dynamic-form-61928-217523-&#x5305;&#x88F9;2&#x91CD;&#x91CF;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217524-&#x5305;&#x88F9;2&#x603B;&#x4EF7;&#x503C;">包裹2总价值</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217524-&#x5305;&#x88F9;2&#x603B;&#x4EF7;&#x503C;"
													id="dynamic-form-61928-217524-&#x5305;&#x88F9;2&#x603B;&#x4EF7;&#x503C;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;">包裹2属性</label>
											<div class="jw-element-form-content ">
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														id="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;"
														value="baby&#x20;products&#x5A74;&#x513F;&#x7528;&#x54C1;">baby
														products婴儿用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="life&#x20;articles&#x751F;&#x6D3B;&#x7528;&#x54C1;">life
														articles生活用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="cosmetics&#x5316;&#x5986;&#x54C1;">cosmetics化妆品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="clothes&#x8863;&#x670D;">clothes衣服</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="shoes&#x978B;&#x5B50;">shoes鞋子</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="snacks&#x96F6;&#x98DF;">snacks零食</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221577-&#x5305;&#x88F9;2&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="used&#x20;personal-use&#x20;goods&#x4E2A;&#x4EBA;&#x4E8C;&#x624B;&#x7269;&#x54C1;">used
														personal-use goods个人二手物品</label>
												</div>
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217792-&#x5305;&#x88F9;3&#x6536;&#x4EF6;&#x4EBA;">包裹3收件人</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217792-&#x5305;&#x88F9;3&#x6536;&#x4EF6;&#x4EBA;"
													id="dynamic-form-61928-217792-&#x5305;&#x88F9;3&#x6536;&#x4EF6;&#x4EBA;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217793-&#x5305;&#x88F9;3&#x7535;&#x8BDD;">包裹3电话</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217793-&#x5305;&#x88F9;3&#x7535;&#x8BDD;"
													id="dynamic-form-61928-217793-&#x5305;&#x88F9;3&#x7535;&#x8BDD;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217794-&#x5305;&#x88F9;3&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;">包裹3地址（不含省市）</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217794-&#x5305;&#x88F9;3&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													id="dynamic-form-61928-217794-&#x5305;&#x88F9;3&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217795-&#x5305;&#x88F9;3&#x90AE;&#x7F16;">包裹3邮编</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217795-&#x5305;&#x88F9;3&#x90AE;&#x7F16;"
													id="dynamic-form-61928-217795-&#x5305;&#x88F9;3&#x90AE;&#x7F16;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217796-&#x5305;&#x88F9;3&#x7701;&#x5E02;">包裹3省市</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217796-&#x5305;&#x88F9;3&#x7701;&#x5E02;"
													id="dynamic-form-61928-217796-&#x5305;&#x88F9;3&#x7701;&#x5E02;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217797-&#x5305;&#x88F9;3&#x91CD;&#x91CF;">包裹3重量</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217797-&#x5305;&#x88F9;3&#x91CD;&#x91CF;"
													id="dynamic-form-61928-217797-&#x5305;&#x88F9;3&#x91CD;&#x91CF;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217798-&#x5305;&#x88F9;3&#x603B;&#x4EF7;&#x503C;">包裹3总价值</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217798-&#x5305;&#x88F9;3&#x603B;&#x4EF7;&#x503C;"
													id="dynamic-form-61928-217798-&#x5305;&#x88F9;3&#x603B;&#x4EF7;&#x503C;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;">包裹3属性</label>
											<div class="jw-element-form-content ">
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														id="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;"
														value="baby&#x20;products&#x5A74;&#x513F;&#x7528;&#x54C1;">baby
														products婴儿用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="life&#x20;articles&#x751F;&#x6D3B;&#x7528;&#x54C1;">life
														articles生活用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="cosmetics&#x5316;&#x5986;&#x54C1;">cosmetics化妆品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="clothes&#x8863;&#x670D;">clothes衣服</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="shoes&#x978B;&#x5B50;">shoes鞋子</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="snacks&#x96F6;&#x98DF;">snacks零食</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221578-&#x5305;&#x88F9;3&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="used&#x20;personal-use&#x20;goods&#x4E2A;&#x4EBA;&#x4E8C;&#x624B;&#x7269;&#x54C1;">used
														personal-use goods个人二手物品</label>
												</div>
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217800-&#x5305;&#x88F9;4&#x6536;&#x4EF6;&#x4EBA;">包裹4收件人</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217800-&#x5305;&#x88F9;4&#x6536;&#x4EF6;&#x4EBA;"
													id="dynamic-form-61928-217800-&#x5305;&#x88F9;4&#x6536;&#x4EF6;&#x4EBA;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217801-&#x5305;&#x88F9;4&#x7535;&#x8BDD;">包裹4电话</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217801-&#x5305;&#x88F9;4&#x7535;&#x8BDD;"
													id="dynamic-form-61928-217801-&#x5305;&#x88F9;4&#x7535;&#x8BDD;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217802-&#x5305;&#x88F9;4&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;">包裹4地址（不含省市）</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217802-&#x5305;&#x88F9;4&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													id="dynamic-form-61928-217802-&#x5305;&#x88F9;4&#x5730;&#x5740;&#xFF08;&#x4E0D;&#x542B;&#x7701;&#x5E02;&#xFF09;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217803-&#x5305;&#x88F9;4&#x90AE;&#x7F16;">包裹4邮编</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217803-&#x5305;&#x88F9;4&#x90AE;&#x7F16;"
													id="dynamic-form-61928-217803-&#x5305;&#x88F9;4&#x90AE;&#x7F16;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217804-&#x5305;&#x88F9;4&#x7701;&#x5E02;">包裹4省市</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217804-&#x5305;&#x88F9;4&#x7701;&#x5E02;"
													id="dynamic-form-61928-217804-&#x5305;&#x88F9;4&#x7701;&#x5E02;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217805-&#x5305;&#x88F9;4&#x91CD;&#x91CF;">包裹4重量</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217805-&#x5305;&#x88F9;4&#x91CD;&#x91CF;"
													id="dynamic-form-61928-217805-&#x5305;&#x88F9;4&#x91CD;&#x91CF;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-217806-&#x5305;&#x88F9;4&#x603B;&#x4EF7;&#x503C;">包裹4总价值</label>
											<div class="jw-element-form-content ">
												<input type="text"
													name="dynamic-form-61928-217806-&#x5305;&#x88F9;4&#x603B;&#x4EF7;&#x503C;"
													id="dynamic-form-61928-217806-&#x5305;&#x88F9;4&#x603B;&#x4EF7;&#x503C;"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;">包裹4属性</label>
											<div class="jw-element-form-content ">
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														id="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;"
														value="baby&#x20;products&#x5A74;&#x513F;&#x7528;&#x54C1;">baby
														products婴儿用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="life&#x20;articles&#x751F;&#x6D3B;&#x7528;&#x54C1;">life
														articles生活用品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="cosmetics&#x5316;&#x5986;&#x54C1;">cosmetics化妆品</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="clothes&#x8863;&#x670D;">clothes衣服</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="shoes&#x978B;&#x5B50;">shoes鞋子</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="snacks&#x96F6;&#x98DF;">snacks零食</label>
												</div>
												<div class="jw-element-form-checkbox">
													<label><input type="checkbox"
														name="dynamic-form-61928-221579-&#x5305;&#x88F9;4&#x5C5E;&#x6027;&#x5B;&#x5D;"
														value="used&#x20;personal-use&#x20;goods&#x4E2A;&#x4EBA;&#x4E8C;&#x624B;&#x7269;&#x54C1;">used
														personal-use goods个人二手物品</label>
												</div>
											</div>
										</div>
										<div class="jw-element-form-group hidden">
											<label class="jw-element-form-label"
												for="dynamic-form-61928-submit">Laat dit veld leeg</label>
											<div class="jw-element-form-content ">
												<input type="text" name="captcha"
													id="dynamic-form-61928-submit"
													class="&#x20;jw-element-form-input-text" value="">
											</div>
										</div>
										<div class="jw-element-form-group">
											<div class="jw-element-form-content jw-element-form-offset">
												<div class="jw-element-form-checkbox">
													<label for="dynamic-form-61928-copy"><input
														type="hidden" name="copy" value="0"><input
														type="checkbox" name="copy" id="dynamic-form-61928-copy"
														value="1">Stuur mij een kopie</label>
												</div>
											</div>
										</div>



										<div class="jw-element-form-group">
											<button type="submit" name="submit"
												class="&#x20;jw-element-form-offset&#x20;jw-btn&#x20;jw-btn-sm&#x20;jw-btn-roundness-default&#x20;jw-btn-style-default&#x20;jw-btn__default-color"
												value="">Verzenden</button>
										</div>

									</form>



								</div>





							</div>



						</div>
						</main>



						<aside> </aside>

					</div>



					<footer>

					<div
						class="jw-section-is-pinnable jw-section jw-section-footer footer">
						<div class="jw-credits clear">
							<div id="jw-footer-text" class="jw-credits-owner jw-footer-text">
								<div class="jw-footer-text-content">&copy; 2016 Asia-Euro
									Connect</div>
							</div>
						</div>
					</div>
					</footer>

				</div>



			</div>

			<div id="jw-variable-loaded" style="display: none;"></div>

			<div id="jw-variable-values" style="display: none;">





				<span data-jw-variable-key="background-color"
					class="jw-variable-value-background-color"></span> <span
					data-jw-variable-key="background"
					class="jw-variable-value-background"></span> <span
					data-jw-variable-key="font-family"
					class="jw-variable-value-font-family"></span> <span
					data-jw-variable-key="paragraph-color"
					class="jw-variable-value-paragraph-color"></span> <span
					data-jw-variable-key="paragraph-link-color"
					class="jw-variable-value-paragraph-link-color"></span> <span
					data-jw-variable-key="paragraph-font-size"
					class="jw-variable-value-paragraph-font-size"></span> <span
					data-jw-variable-key="heading-color"
					class="jw-variable-value-heading-color"></span> <span
					data-jw-variable-key="heading-link-color"
					class="jw-variable-value-heading-link-color"></span> <span
					data-jw-variable-key="heading-font-size"
					class="jw-variable-value-heading-font-size"></span> <span
					data-jw-variable-key="heading-font-family"
					class="jw-variable-value-heading-font-family"></span> <span
					data-jw-variable-key="hero-font-family"
					class="jw-variable-value-hero-font-family"></span> <span
					data-jw-variable-key="sidebar-text-color"
					class="jw-variable-value-sidebar-text-color"></span> <span
					data-jw-variable-key="sidebar-text-link-color"
					class="jw-variable-value-sidebar-text-link-color"></span> <span
					data-jw-variable-key="sidebar-text-font-size"
					class="jw-variable-value-sidebar-text-font-size"></span> <span
					data-jw-variable-key="content-color"
					class="jw-variable-value-content-color"></span> <span
					data-jw-variable-key="menu-color"
					class="jw-variable-value-menu-color"></span> <span
					data-jw-variable-key="accent-color"
					class="jw-variable-value-accent-color"></span> <span
					style="font-family:SimSun;"></span>
</body>
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
</script> </span>

<span style="font-family:SimSun;"><style type="text/css">
#massage_box {
	position: absolute;
	left: expression((                 body.clientWidth-350)/2 );
	top: expression(body.scrollTop +(               
           body.clientHeight-this.offsetHeight)/2 );
	width: 350px;
	height: 130px;
	filter: dropshadow(color =                 #666666, offx =                 3,
		offy = 
		   
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
	height: expression(body.scrollHeight >                 body.clientHeight ? 
		          
              body.scrollHeight :          
                body.clientHeight);
	background: #666;
	filter: ALPHA(opacity =                 60);
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
</style> </span>
