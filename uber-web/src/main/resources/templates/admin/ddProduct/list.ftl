<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/ddProduct/list" method="post">
		<@pageHeadr />
        <div class="bjui-searchBar">
            <label>产品名称：</label>
            <input type="text" name="productName" value="${bean.productName!}" class="form-control" size="12">&nbsp;
            <label>产品代码：</label>
            <input type="text" name="productCode" value="${bean.productCode!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>
            <br />
            <br />
            <a href="${base}/admin/ddProduct/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="item-add" data-options="{title:'添加', height:500}">添加 </a>
        </div>
    </form>
</div>

<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
            <thead>
                <tr>
                    <th width="30">序号</th>
                    <th>产品名称</th>
                    <th>产品代码</th>
                    <th>最低额度(元)</th>
                    <th>最高额度（元）</th>
                    <th>放款周期</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <#if page??>
                <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.productName}</td>
                    <td>${bean.productCode}</td>
                    <td>${bean.amountMin}</td>
                    <td>${bean.amountMax}</td>
                    <td>${bean.loanTerm}</td>
                    <td>
                        <a title="查看" target="dialog" href="${base}/admin/ddProduct/view?id=${bean.id}" class="btnView">查看 </a>
                        <a title="编辑" target="dialog" href="${base}/admin/ddProduct/edit?id=${bean.id}" class="btnEdit">修改 </a>
                        <a title="确定要删除吗？" target="ajaxTodo" href="${base}/admin/ddProduct/delete?id=${bean.id}" class="btnDel">删除</a>
                    </td>
                </tr>
                </#list>
                </#if>
            </tbody>
        </table>
</div>
<@pageFooter />
