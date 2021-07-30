<%--
    Created by IntelliJ IDEA
    User: JudgeF
    Date: 2021-06-22
    Time: 下午 05:07
    To change this template use File | Settings | Live Templates
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>修改信息-宿舍维修</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="/css/Home.css">
    <link rel="stylesheet" href="/css/Font.css">
    <link rel="stylesheet" href="/css/pg_btn.css">
    <link rel="icon" href="/images/User.ico" sizes="32x32"/>
    <script type="text/javascript" src="/js/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="/lib/layui/layui.js"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
</head>

<body>
<%--中部--%>
<div class="x-body">
    <form class="layui-form" id="f_auto" action="/updateDormRepair" method="post">
        <input type="hidden" value="${sessionScope.d.r_id}" name="r_id" id="r_id"/>

        <div class="layui-form-item">
            <label for="d_id" class="layui-form-label">
                <span class="">宿舍编号</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_id" name="d_id"
                       autocomplete="off" value="${sessionScope.d.d_id}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="d_dormbuilding" class="layui-form-label">
                <span class="">宿舍楼</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="d_dormbuilding" name="d_dormbuilding"
                       autocomplete="off" value="${sessionScope.d.d_dormbuilding}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="r_name" class="layui-form-label">
                <span class="">维修人员</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="r_name" name="r_name"
                       autocomplete="off" value="${sessionScope.d.r_name}" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label for="reason" class="layui-form-label">
                <span class="">报修事由</span>
            </label>
            <div class="layui-input-inline">
                <input type="text" id="reason" name="reason"
                       autocomplete="off" value="${sessionScope.d.reason}" class="layui-input">
            </div>
        </div>

        <input type="hidden" value="${sessionScope.d.update_time}" name="update_time" id="update_time"/>

        <div class="layui-form-item" id="btn_xg">
            <button class="layui-btn" id="btn_on" lay-submit="" lay-filter="updateClass">
                修改
            </button>
        </div>
    </form>
</div>
</body>
</html>
