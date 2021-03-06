<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/carConfig/car_style_list" method="post">
		<@pageHeadr />
        <div class="bjui-searchBar">
            <input name="depth" value="4" type="hidden"/>
            <input name="parentId" value="${parentId}" type="hidden"/>
            <label>车款名称：</label>
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
            <#--<th width="30">logo</th>-->
            <th width="160">车款名称</th>
            <th width="40">简写</th>
            <th width="40">价格</th>
            <th width="40">年份</th>
            <th width="40">是否在产</th>
            <th width="40">销售状态</th>
            <th width="40">型号</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <#if page??>
            <#list page.list as bean>
            <tr>
                <td align="center">${bean_index+1}</td>
                <#--<td><img src="${bean.logo!}" width="30" height="30"></td>-->
                <td>${bean.name!}</td>
                <td>${bean.initial!}</td>
                <td>${bean.price!}</td>
                <td>${bean.yearType!}</td>
                <td>${bean.productionState!}</td>
                <td>${bean.saleState!}</td>
                <td>${bean.sizeType!}</td>
                <td>
                <#--<a title="确定要删除吗？" target="ajaxTodo" href="${base}/admin/carConfig/delete?id=${bean.id}" class="btnDel">删除</a>-->
                </td>
            </tr>
            </#list>
            </#if>
        </tbody>
    </table>
</div>
<@pageFooter />