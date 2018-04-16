<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/passenger/list" method="post">
		<@pageHeadr />
        <div class="bjui-searchBar">
            <label>姓名：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;
            <label>手机号：</label>
            <input type="text" name="phone" value="${bean.phone!}" class="form-control" size="12">&nbsp;
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>
            <br />
            <br />
            <a href="${base}/admin/passenger/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="passenger-add" data-options="{title:'添加', height:300}">添加 </a>
        </div>
    </form>
</div>

<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>姓名</th>
            <th>手机</th>
            <th>邮箱</th>
            <th>注册时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <#if page??>
            <#list page.list as bean>
            <tr>
                <td align="center">${bean_index+1}</td>
                <td>${bean.name}</td>
                <td>${bean.phone}</td>
                <td>${bean.email}</td>
                <td>${bean.createTime?datetime}</td>
                <td>
                    <a href="${base}/admin/passenger/delete?id=${bean.id}" class="btn btn-red" data-toggle="doajax" data-id="passenger-delete" data-confirm-msg="确定要删除吗？">删除</a>
                    <#--<a href="${base}/admin/passenger/list?passengerId=${bean.id}" class="btn btn-green" data-toggle="navtab" data-id="admin-passenger">所属车辆</a>-->
                    <#--<a href="${base}/admin/passenger/map?passengerId=${bean.id}" class="btn btn-red" data-toggle="dialog" data-icon="map" data-id="passenger-map" data-options="{title:'地图', height:300}">位置</a>-->
                </td>
            </tr>
            </#list>
            </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
