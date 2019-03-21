<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/girl/list" method="post">
        <@pageHeadr />
        <div class="bjui-searchBar">
            <label>标题：</label>
            <input type="text" name="name" value="${bean.title!}" class="form-control" size="12">&nbsp;
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>
            <br />
            <br />
            <a href="${base}/admin/driver/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="driver-add" data-options="{title:'添加', height:300}">添加 </a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>标题</th>
            <th>用户ID</th>
            <th>收录时间</th>
            <th>浏览数</th>
            <th>回复数</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.title}</td>
                    <td>${bean.user_id}</td>
                    <td>${bean.pick_up_time}</td>
                    <td>${bean.view_number}</td>
                    <td>${bean.reply_number}</td>
                    <td>
                        <a href="${base}/admin/girl/view?id=${bean.user_id}" class="btn btn-blue" data-toggle="dialog" data-id="sysUserInfo-view" data-options="{title:'查看', height:350}">查看 </a>
                        <#--<a href="${base}/admin/driver/delete?id=${bean.id}" class="btn btn-red" data-toggle="doajax" data-id="driver-delete" data-confirm-msg="确定要删除吗？">删除</a>-->
                        <#--<a href="${base}/admin/driver/map?driverId=${bean.id}" class="btn btn-red" data-toggle="dialog" data-icon="map" data-id="driver-map" data-options="{title:'地图', height:300}">位置</a>-->
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />

