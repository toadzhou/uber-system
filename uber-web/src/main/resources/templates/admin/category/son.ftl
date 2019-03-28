<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch"  action="${base}/admin/category/son" method="post">
        <@pageHeadr />
        <input type="hidden" name="isLeaf" value="1"/>
        <input type="hidden" name="parentId" value="${bean.parentId}">
        <div class="bjui-searchBar">
            <label>类目名称：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
            <a href="${base}/admin/category/addSon?parentId=${bean.parentId}" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="sysUserInfo-add" data-options="{title:'添加', height:350}">新增二级类目 </a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th width="60">类目图片</th>
            <th>类目名称</th>
            <th>级别</th>
            <th>排序值</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td align="center"><img src="${bean.image!}" width="60" height="60"/></td>
                    <td>${bean.name!}</td>
                    <td>二级</td>
                    <td>${bean.sort!}</td>
                    <td>
                        <#--<a href="${base}/admin/attribute/list?categoryId=${bean.id}" class="btn btn-red" data-toggle="navtab" data-id="admin-attribute">属性列表</a>-->
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
