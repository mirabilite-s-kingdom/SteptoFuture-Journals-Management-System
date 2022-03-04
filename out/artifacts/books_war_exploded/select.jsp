<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page
	import="com.rain.bean.AdminBean,com.rain.dao.AdminDao,com.rain.bean.BookBean,com.rain.dao.BookDao"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="ax-vertical-centered">
<head>
<meta charset="UTF-8">
<title>期刊馆管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="static/css/bootstrap.min.css">
<link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
<link rel="stylesheet" href="static/css/bootstrap-admin-theme.css">
<script src="static/js/bootstrap.min.js"></script>
<script src="static/jQuery/jquery-3.1.1.min.js"></script>
<script src="static/js/bootstrap-dropdown.min.js"></script>
<script src="static/js/reader.js"></script>
<script src="static/js/readerUpdateInfo.js"></script>
<script src="static/js/readerUpdatePwd.js"></script>
<style>
body {
	background-image: url("03.jpg");
}
</style>
</head>

<script src="static/js/jquery.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>

<body class="bootstrap-admin-with-small-navbar">
	<!-- 判断是否已经登录 -->
	<%
		AdminBean admin = new AdminBean();
		String aid = (String) session.getAttribute("aid");
		AdminDao admindao = new AdminDao();
		admin = admindao.get_AidInfo2(aid);
	%>
	<nav
		class="navbar navbar-inverse navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small"
		role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="collapse navbar-collapse main-navbar-collapse">
						<a class="navbar-brand" href="index.jsp"><strong>欢迎使用期刊馆管理系统</strong></a>
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" role="button"
								class="dropdown-toggle" data-hover="dropdown"> <i
									class="glyphicon glyphicon-user"></i> 欢迎您，<%out.write(admin.getName());%>
										(<%=session.getAttribute("aid")%>)
									<i class="caret"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#updateinfo" data-toggle="modal">个人资料</a></li>
									<li role="presentation" class="divider"></li>
									<li><a href="#updatepwd" data-toggle="modal">修改密码</a></li>
									<li role="presentation" class="divider"></li>
									<li><a href="/login.jsp">退出</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<!-- left, vertical navbar & content -->
		<div class="row">
			<!-- left, vertical navbar -->
			<div class="col-md-2 bootstrap-admin-col-left">
				<ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
					<li><a href="/select.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 期刊查询</a></li>
					<li><a href="/borrow.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 借阅信息</a></li>
					<li><a href="/history.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 借阅历史</a></li>
				</ul><br><br>
				<ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
					<li><a href="/bdtimes.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 热门推荐</a></li>
					<li><a href="/brtimes.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 最佳读者</a></li>
				</ul><br><br>
				<ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
					<li><a href="/feedback.jsp"><i
							class="glyphicon glyphicon-chevron-right"></i> 问题反馈</a></li>
				</ul>
			</div>

			<!-- content -->
			<div class="col-md-10">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default bootstrap-admin-no-table-panel">
							<div class="panel-heading">
								<div class="text-muted bootstrap-admin-box-title">查询</div>
							</div>
							<div
								class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
								<form class="form-horizontal" action="/selectServlet"
									method="post">
									<input type="hidden" name="tip" value="2">
									<div class="col-lg-8 form-group">
										<label class="col-lg-4 control-label" for="query_bname">期刊信息</label>
										<div class="col-lg-8">
											<input class="form-control" id="bookName" name="name"
												type="text" value=""> <label class="control-label"
												for="query_bname" style="display: none;"></label>
										</div>
									</div>
									<div class="col-lg-4 form-group">
										<button type="submit" class="btn btn-primary" id="btn_query">查询</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						<table id="data_list" class="table table-hover table-bordered"
							cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>期刊号</th>
									<th>期刊类型</th>
									<th>期刊名称</th>
									<th>作者1</th>
									<th>作者2</th>
									<th>出版社</th>
									<th>内容</th>
									<th>年</th>
									<th>卷</th>
									<th>期</th>
									<th>关键字1</th>
									<th>关键字2</th>
									<th>关键字3</th>
									<th>关键字4</th>
									<th>关键字5</th>
									<%--<th>期刊价格</th>--%>
									<%--<th>借阅价格</th>--%>
									<%--<th>逾期金额</th>--%>
									<th>借阅状态</th>
									<th>操作</th>

								</tr>
							</thead>

							<!---在此插入信息-->
							<!---在此插入信息-->
							<%
								ArrayList<BookBean> bookdata = new ArrayList<BookBean>();
								bookdata = (ArrayList<BookBean>) request.getAttribute("data");
								if (bookdata == null) {
									BookDao bookdao = new BookDao();
									bookdata = (ArrayList<BookBean>) bookdao.get_ListInfo();
								}
	
								for (BookBean bean : bookdata) {
							%>
							<tbody>
							<td><%=bean.getCard()%></td>
							<td><%=bean.getType()%></td>
							<td><%=bean.getName()%></td>
							<td><%=bean.getAutho()%></td>
							<td><%=bean.getAutho2()%></td>
							<td><%=bean.getPress()%></td>
							<td><%=bean.getContent()%></td>
							<td><%=bean.getYear()%></td>
							<td><%=bean.getColunm()%></td>
							<td><%=bean.getItem()%></td>
							<td><%=bean.getKey1()%></td>
							<td><%=bean.getKey2()%></td>
							<td><%=bean.getKey3()%></td>
							<td><%=bean.getKey4()%></td>
							<td><%=bean.getKey5()%></td>
								<td>
								<%
								int state = bean.getState();
								if(state==1){
								%>
								可借阅
								<%}else{ %>
								已被借阅
								<%} %>
								</td>
								<td><button type="button" class="btn btn-info btn-xs"
					data-toggle="modal" onclick="borrowbook(<%=bean.getBid()%>,<%=bean.getBorrowPrice()%>,<%=bean.getState()%>,<%=admin.getBalance()%>)">借阅</button>
								</td>
							</tbody>
							<%
								}
							%>
						</table>
					</div>
				</div>
				<script type="text/javascript">
			    function borrowbook(bid,borrowPrice,state,balance) {
			    	
			    	if(state==0){
			    		alert("该期刊已被借阅");
			    		return;
			    	}else if(balance<=0||borrowPrice>balance){
			    		alert("账户余额不足,请充值");
			    		return;
			    	}else{
			    	
			    	
			    		con=confirm("是否借阅?"); 
				    	if(con==true){
				    		location.href = "/borrowServlet?tip=1&show=1&bid="+bid+"&borrowPrice="+borrowPrice;
				    	}
			    	
			   		}
			    }
			    </script>
			</div>
		</div>
	</div>

	<!-------------------------------------------------------------->

	<form class="form-horizontal" method="post"
		action="/AdminServlet">
		<!--保证样式水平不混乱-->
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="updatepwd" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">修改密码</h4>
					</div>
					<div class="modal-body">

						<!--正文-->
						<input type="hidden" name="tip" value="1">
						<input type="hidden" name="url" value="select">
						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">原密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="password"
									id="oldPwd" placeholder="请输入原密码"> <label
									class="control-label" for="oldPwd" style="display: none"></label>
							</div>
						</div>

						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">新密码</label>
							<div class="col-sm-7">
								<input type="password" class="form-control" name="password2"
									id="newPwd" placeholder="请输入新密码"> <label
									class="control-label" for="newPwd" style="display: none"></label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary">修改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</form>
	<!-------------------------------------------------------------->

	<!-------------------------个人资料模糊框------------------------------------->

	<form class="form-horizontal" method="post"
		action="/AdminServlet">
		<!--保证样式水平不混乱-->
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="updateinfo" tabindex="-1" role="dialog"
			aria-labelledby="ModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="ModalLabel">个人资料</h4>
					</div>
					<div class="modal-body">

						<!--正文-->
						<input type="hidden" name="tip" value="2"> <input
							type="hidden" name="url" value="select">
						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">真实姓名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="name" name="name"
									placeholder="请输入您的真实姓名" value='<%out.write(admin.getName());%>'>
								<label class="control-label" for="name" style="display: none"></label>
							</div>
						</div>

						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">手机号</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="phone" name="phone"
									placeholder="请输入您的手机号" value='<%out.write(admin.getPhone());%>'>
								<label class="control-label" for="phone" style="display: none"></label>
							</div>
						</div>

						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">邮箱</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="请输入您的邮箱" value='<%out.write(admin.getEmail());%>'>
								<label class="control-label" for="email" style="display: none"></label>
							</div>
						</div>
						<div class="form-group">
							<label for="firstname" class="col-sm-3 control-label">账户余额</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="balance" name="balance"
									value='<%out.write(""+admin.getBalance());%>'>
								<label class="control-label" for="email" style="display: none"></label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary">修改</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</form>
</body>
</html>