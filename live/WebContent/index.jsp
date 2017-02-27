<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html lang="en"> 
<head> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>动维直播管理系统</title> 
<link href="/css/base.css" rel="stylesheet">
<link href="/css/platform.css" rel="stylesheet">
<link rel="stylesheet" href="/custom/easyui/easyui.css">
</head> 
<body>
    <div class="container">
        <div id="pf-hd">
            <div class="pf-logo">
                <img src="/images/main/main_logo.png" alt="logo">
            </div>
            
            <!-- 顶部菜单开始 -->
            <div class="pf-nav-wrap">
              <div class="pf-nav-ww">
                <ul class="pf-nav">
                  <li class="pf-nav-item project" data-menu="contract-mange">
                      <a href="${pageContext.request.contextPath}/homepage/findData.do?classify=0">
                          <span class="iconfont">&#xe646;</span>
                          <span class="pf-nav-title">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</span>
                      </a>
                  </li>
                  <li class="pf-nav-item project" data-menu="sys-manage">
                      <a href="${pageContext.request.contextPath}/homepage/findData.do?classify=1">
                          <span class="iconfont">&#xe63f;</span>
                          <span class="pf-nav-title">系统管理</span>
                      </a>
                  </li>
                  <li class="pf-nav-item manger" data-menu="org-manage">
                      <a href="${pageContext.request.contextPath}/homepage/findData.do?classify=2">
                          <span class="iconfont">&#xe60d;</span>
                          <span class="pf-nav-title">用户管理</span>
                      </a>
                  </li>
                  <li class="pf-nav-item static" data-menu="main-data">
                      <a href="${pageContext.request.contextPath}/homepage/findData.do?classify=3">
                          <span class="iconfont">&#xe61e;</span>
                          <span class="pf-nav-title">直播间管理</span>
                      </a>
                  </li>
                  <li class="pf-nav-item manger" data-menu="supplier-dev">
                      <a href="${pageContext.request.contextPath}/homepage/findData.do?classify=4">
                          <span class="iconfont">&#xe625;</span>
                          <span class="pf-nav-title">财务管理</span>
                      </a>
                  </li>
                </ul>
              </div>
              

              <a href="javascript:;" class="pf-nav-prev disabled iconfont">&#xe606;</a>
              <a href="javascript:;" class="pf-nav-next iconfont">&#xe607;</a>
            </div>
            <!-- 顶部菜单结束 -->


            <div class="pf-user">
                <div class="pf-user-photo">
                    <img src="/images/main/user.png" alt="">
                </div>
                <h4 class="pf-user-name ellipsis" id="uhname"></h4>
                <i class="iconfont xiala">&#xe607;</i>

                <div class="pf-user-panel">
                    <ul class="pf-user-opt">
                        <li>
                            <a href="javascript:;">
                                <i class="iconfont">&#xe60d;</i>
                                <span class="pf-opt-name">用户信息</span>
                            </a>
                        </li>
                        <li class="pf-modify-pwd">
                            <a href="#">
                                <i class="iconfont">&#xe634;</i>
                                <span class="pf-opt-name">修改密码</span>
                            </a>
                        </li>
                        <li class="pf-logout">
                            <a href="/homepage/logout.do">
                                <i class="iconfont">&#xe60e;</i>
                                <span class="pf-opt-name">退出</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>

		<!-- 侧栏菜单开始 -->
        <div id="pf-bd">
            <div id="pf-sider">
                <h2 class="pf-model-name">
                    <span class="iconfont">&#xe64a;</span>
                    <span class="pf-name">组织管理</span>
                    <span class="toggle-icon"></span>
                </h2>

                <ul class="sider-nav">
                
                <c:if test="${classify==0}">
                	<li class="current">
                        <a href="javascript:;">
                            <span class="iconfont sider-nav-icon">&#xe620;</span>
                            <span class="sider-nav-title">首页</span>
                            <i class="iconfont">&#xe642;</i>
                        </a>
                        <ul class="sider-nav-s">
                           <li class="active"><a class="J_menuItem" target="haha" href="/pages/workbench.html">系统首页</a></li>
                        </ul>
                     </li>
                </c:if>
                
				<c:forEach items="${plist}" var="list">
                     <li class="current">
                        <a href="javascript:;">
                            <span class="iconfont sider-nav-icon">&#xe620;</span>
                            <span class="sider-nav-title">${list.title}</span>
                            <i class="iconfont">&#xe642;</i>
                        </a>
                        <ul class="sider-nav-s">
                        <c:forEach items="${list.children}" var="sub">
                           <li class="active"><a class="J_menuItem" target="haha" href="${sub.url}">${sub.title}</a></li>
                           </c:forEach>
                        </ul>
                     	</li>
                     </c:forEach>
                 </ul> 
            </div>
			<!-- 侧栏菜单结束 -->
			<c:if test="${classify==0}">
                <div class="easyui-tabs1" style="width:100%;height:100%;">
                  <iframe class="page-iframe" src="/workbench.html" name="haha" frameborder="no"   border="no" height="100%" width="100%" scrolling="auto"></iframe>
                </div>
			</c:if>
			<c:if test="${classify==2}">
                <div class="easyui-tabs1" style="width:100%;height:100%;">
                  <iframe class="page-iframe" src="${pageContext.request.contextPath}/user/list.do" name="haha" frameborder="no"   border="no" height="100%" width="100%" scrolling="auto"></iframe>
                </div>
			</c:if>
			<c:if test="${classify==1}">
                <div class="easyui-tabs1" style="width:100%;height:100%;">
                  <iframe class="page-iframe" src="${pageContext.request.contextPath}/privilege/list.do" name="haha" frameborder="no"   border="no" height="100%" width="100%" scrolling="auto"></iframe>
                </div>
			</c:if>
			<c:if test="${classify==3}">
                <div class="easyui-tabs1" style="width:100%;height:100%;">
                  <iframe class="page-iframe" src="${pageContext.request.contextPath}/room/list.do" name="haha" frameborder="no"   border="no" height="100%" width="100%" scrolling="auto"></iframe>
                </div>
			</c:if>
			
			
            </div>
        </div>

		
        <div id="pf-ft">
            <div class="system-name">
              <i class="iconfont">&#xe6fe;</i>
              <span>信息管理系统&nbsp;v1.0</span>
            </div>
            <div class="copyright-name">
              <span>CopyRight&nbsp;2017&nbsp;&nbsp;easyui.com&nbsp;版权所有</span>
              <i class="iconfont" >&#xe6ff;</i>
            </div>
        </div>

    <script type="text/javascript" src="/custom/jquery.min.js"></script>
    <script type="text/javascript" src="/custom/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/menu.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>
    
      <script type="text/javascript">
        $(window).resize(function(){
          $('#pf-bd').height($(window).height()-76);
        }).resize();
        
      </script>
    

    
    <script type="text/javascript">
    $('.easyui-tabs1').tabs({
      tabHeight: 44,
      onSelect:function(title,index){
        var currentTab = $('.easyui-tabs1').tabs("getSelected");
        if(currentTab.find("iframe") && currentTab.find("iframe").size()){
            currentTab.find("iframe").attr("src",currentTab.find("iframe").attr("src"));
        }
      }
    })
    $(window).resize(function(){
          $('.tabs-panels').height($("#pf-page").height()-46);
          $('.panel-body').height($("#pf-page").height()-76)
    }).resize();

    var page = 0,
        pages = ($('.pf-nav').height() / 70) - 1;

    if(pages === 0){
      $('.pf-nav-prev,.pf-nav-next').hide();
    }
    $(document).on('click', '.pf-nav-prev,.pf-nav-next', function(){


      if($(this).hasClass('disabled')) return;
      if($(this).hasClass('pf-nav-next')){
        page++;
        $('.pf-nav').stop().animate({'margin-top': -70*page}, 200);
        if(page == pages){
          $(this).addClass('disabled');
          $('.pf-nav-prev').removeClass('disabled');
        }else{
          $('.pf-nav-prev').removeClass('disabled');
        }
        
      }else{
        page--;
        $('.pf-nav').stop().animate({'margin-top': -70*page}, 200);
        if(page == 0){
          $(this).addClass('disabled');
          $('.pf-nav-next').removeClass('disabled');
        }else{
          $('.pf-nav-next').removeClass('disabled');
        }
        
      }
    })

    // setTimeout(function(){
    //    $('.tabs-panels').height($("#pf-page").height()-46);
    //    $('.panel-body').height($("#pf-page").height()-76)
    // }, 200)
    </script>
    
    <script type="text/javascript">
		/*获取登录name*/
		$.get("${pageContext.request.contextPath}/homepage/getAdmin.do",
				function(data) {
					if (data == null || 'nologin'== data) {
						alert("请先登录再来吧！！");
						localtion.href = "/login.jsp";
					} else {
						$("#uhname").html(data);
					}
				});
	</script>
    
</body> 
</html>