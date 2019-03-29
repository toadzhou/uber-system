<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/attribute/list" method="post">
        <@pageHeadr />
        <input type="hidden" name="goodsTypeId" value="${bean.goodsTypeId!}"/>
        <div class="bjui-searchBar">
            <label>属性名称：</label>
            <input type="text" name="attrName" value="${bean.attrName!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
            <a href="${base}/admin/attribute/add?goodsTypeId=${bean.goodsTypeId!}" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="attribute-add" data-options="{title:'添加属性', height:350}">添加属性</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>属性名称</th>
            <th>SKU属性</th>
            <th>属性录入方式</th>
            <th>可选值列表</th>
            <th>排序</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.attrName!}</td>
                    <td>
                        <#if bean.attrType == 1>
                                <font color="green">是</font>
                            <#else >
                                <font color="red">否</font>
                        </#if>
                    </td>
                    <td>${bean.attrTypeText!}</td>
                    <td>${bean.attrValues!}</td>
                    <td>${bean.sortOrder!}</td>
                    <td>
                        <a href="${base}/admin/attribute/edit?id=${bean.id}" class="btn btn-blue" data-toggle="dialog" data-id="brand-view" data-options="{title:'编辑', height:350}">编辑</a>
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
