<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/carConfig/car_type_list" method="post">
		<@pageHeadr />
        <div class="bjui-searchBar">
            <input name="depth" value="3" type="hidden"/>
            <input name="parentId" value="${parentId!}" type="hidden"/>
            <label>车型名称：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <#--<a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>-->
            <br />
            <br />
            <a href="${base}/admin/carConfig/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="item-add" data-options="{title:'添加', height:500}">添加 </a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th width="30">logo</th>
            <th width="50">车型名称</th>
            <th width="40">简写</th>
            <th width="40">销售状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <#if page??>
            <#list page.list as bean>
            <tr>
                <td align="center">${bean_index+1}</td>
                <td><img src="${bean.logo!}" width="70" height="30"></td>
                <td>${bean.name!}</td>
                <td>${bean.initial!}</td>
                <td>${bean.saleState!}</td>
                <td>
                    <a href="${base}/admin/carConfig/car_style_list?parentId=${bean.sonId}&depth=4" class="btn btn-red" data-toggle="navtab" data-id="admin-carConfig-2">全部车款</a>
                </td>
            </tr>
            </#list>
            </#if>
        </tbody>
    </table>
</div>
<@pageFooter />