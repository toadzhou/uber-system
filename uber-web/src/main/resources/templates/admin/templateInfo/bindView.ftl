<#include "/macro/base.ftl" />
div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/templateInfo/bindView" method="post">
    <@pageHeadr />
    <input type="hidden" name="isLeaf" value="0"/>
    <div class="bjui-searchBar">
        <label>名称：</label>
        <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

        <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
        <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

        <br />
        <br />
        <a href="${base}/admin/pluginInfo/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="sysUserInfo-add" data-options="{title:'添加', height:350}">新增图片</a>
    </div>
</form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>名称</th>
            <th>品牌</th>
            <th>价格</th>
            <th>状态</th>
            <th>长度</th>
            <th>宽度</th>
            <th>重量</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.name!}</td>
                    <td>${bean.brand!}</td>
                    <th>${bean.price!}</th>
                    <td><#list yesOrNoEnum as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list></td>
                    <td>${bean.width!}</td>
                    <td>${bean.height!}</td>
                    <td>${bean.weight!}</td>
                    <td>
                        <a href="${base}/admin/templateInfo/bind?id=${bean.id}&templateInfoId=${templateInfoId}" class="btn btn-orange" data-toggle="doajax" data-id="template-bind" data-options="{title:'查看', height:400}">绑定</a>
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
