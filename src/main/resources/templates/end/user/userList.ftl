<#assign base=request.contextPath />
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>用户列表</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${base}/static/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${base}/static/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${base}/static/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${base}/static/css/admin.css">
    <link rel="stylesheet" href="${base}/static/css/app.css">
</head>

<body data-type="generalComponents">


<header class="am-topbar am-topbar-inverse admin-header">
    <div class="am-topbar-brand">
        <a href="javascript:" class="tpl-logo">
            <img src="${base}/static/img/logo.png" alt="">
        </a>
    </div>
    <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

    </div>

    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

            <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:">
                    <span class="tpl-header-list-user-nick">${user.name!}</span><span class="tpl-header-list-user-ico"> <img
                        src="${base}/static/img/user01.png"></span>
                </a>
            <#--<ul class="am-dropdown-content">-->
            <#--<li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>-->
            <#--<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>-->
            <#--<li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>-->
            <#--</ul>-->
            </li>
            <li><a href="${base}/logOut" class="tpl-header-list-link"><span
                    class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
        </ul>
    </div>
</header>


<div class="tpl-page-container tpl-page-header-fixed">

    <div class="tpl-left-nav tpl-left-nav-hover">
        <div class="tpl-left-nav-title">
            设计师培训后台管理系统
        </div>
        <div class="tpl-left-nav-list">
            <ul class="tpl-left-nav-menu">
                <li class="tpl-left-nav-item">
                    <a href="${base}" class="nav-link">
                        <i class="am-icon-home"></i>
                        <span>首页</span>
                    </a>
                </li>
                <li class="tpl-left-nav-item">
                    <a href="chart.html" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-bar-chart"></i>
                        <span>最新课程&最新学习资源</span>
                    <#--<i class="tpl-left-nav-content tpl-badge-danger">-->
                    <#--12-->
                    <#--</i>-->
                    </a>
                </li>

                <li class="tpl-left-nav-item">
                    <a href="javascript:" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-cloud"></i>
                        <span>课程管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu">
                        <li>
                            <a href="${base}/endSys/class/add">
                                <i class="am-icon-angle-right"></i>
                                <span>添加课程</span>
                            <#--<i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>-->
                            </a>

                            <a href="${base}/endSys/class/all">
                                <i class="am-icon-angle-right"></i>
                                <span>所有课程</span>
                            <#--<i class="tpl-left-nav-content tpl-badge-success">-->
                            <#--18-->
                            <#--</i>-->
                            </a>
                        </li>
                    </ul>
                </li>

                <shiro:hasPermission name="用户管理">
                    <li class="tpl-left-nav-item">
                        <a href="javascript:" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-user"></i>
                            <span>用户管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                                <a href="${base}/endSys/addUser">
                                    <i class="am-icon-angle-right"></i>
                                    <span>添加用户</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="${base}/endSys/userList" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>用户列表</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </shiro:hasPermission>

                <li class="tpl-left-nav-item">
                    <a href="javascript:" class="nav-link tpl-left-nav-link-list">
                        <i class="am-icon-file"></i>
                        <span>资源管理</span>
                        <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                    </a>
                    <ul class="tpl-left-nav-sub-menu" style="display: none;">
                        <li>
                            <a href="${base}/endSys/Resource/add">
                                <i class="am-icon-angle-right"></i>
                                <span>添加资源</span>
                            </a>

                            <a href="${base}/endSys/Resource/all">
                                <i class="am-icon-angle-right"></i>
                                <span>资源列表</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            设计师培训后台管理系统
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">首页</a></li>
            <li><a href="#">Amaze UI CSS</a></li>
            <li class="am-active">文字列表</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-users"></span>用户列表
                </div>
            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">电话</th>
                                    <th class="table-type">姓名</th>
                                    <th class="table-author am-hide-sm-only">性别</th>
                                    <th class="table-date am-hide-sm-only">身份</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>

                                <tbody>

                    <#if users?exists>
                        <#list users as user>
                        <tr>
                            <td class="center">${user.id!}</td>
                            <td>${user.tel!}</td>
                            <td>${user.name!}</td>
                            <td>${user.sex!}</td>
                        <#--<#if -->
                            <td>${user.type!}</td>
                        <#--<td>-->
                        <#--<div>-->
                        <#--<button class="btn btn-warning btn-xs" onclick="getUserInfo('${user.loginName!}');">-->
                        <#--<i class="icon-wrench  bigger-110 icon-only"></i>-->
                        <#--修改-->
                        <#--</button>-->

                        <#--<button class="btn btn-error btn-xs" onclick="delUser('${user.loginName!}');">-->
                        <#--<i class="icon-trash  bigger-110 icon-only"></i>-->
                        <#--删除-->
                        <#--</button>-->
                        <#--</div>-->
                        <#--</td>-->

                            <td>
                                <div class="am-btn-toolbar">
                                    <a onclick=window.open("${base}/endSys/editUser/${user.id}")>
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                    class="am-icon-pencil-square-o"></span> 编辑
                                            </button>
                                        </div>
                                    </a>
                                </div>
                            </td>
                        </tr>
                        </#list>
                    </#if>

                            </table>
                            <div class="am-cf">

                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                            <hr>

                        </form>
                    </div>

                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>
    </div>
</div>


<script src="${base}/static/js/jquery.min.js"></script>
<script src="${base}/static/js/amazeui.min.js"></script>
<script src="${base}/static/js/app.js"></script>
</body>

</html>