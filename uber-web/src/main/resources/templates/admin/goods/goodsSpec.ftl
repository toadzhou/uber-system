<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/goods/goodsSpec" method="post">
        <@pageHeadr />
        <div class="bjui-searchBar">
            <label>规格名称：</label>
            <input type="text" name="title"  class="form-control" size="12"/>&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
            <a href="${base}/admin/goods/addSku" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="sysUserInfo-add" data-options="{title:'新增SKU', height:450, width:600}">新增SKU</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>标题</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.title!}</td>

                    <td>
                        <a href="${base}/admin/attribute/list?goodsId=${bean.id}" class="btn btn-green" data-toggle="navtab" data-id="goods-view" data-options="{title:'属性列表', height:350}">属性列表</a>
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
