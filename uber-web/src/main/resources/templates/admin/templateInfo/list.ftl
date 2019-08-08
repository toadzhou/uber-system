<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/templateInfo/list" method="post">
        <@pageHeadr />
        <input type="hidden" name="isLeaf" value="0"/>
        <div class="bjui-searchBar">
            <label>模板名称：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
            <a href="${base}/admin/templateInfo/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="templateInfo-add" data-options="{title:'添加', height:350}">新增模版</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>名称</th>
            <th>状态</th>
            <th>价格(元)</th>
            <th>长度</th>
            <th>宽度</th>
            <th>计量单位</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.name!}</td>
                    <td><#list yesOrNoEnums as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list></td>
                    <td>${bean.showPrice!}</td>
                    <td>${bean.width!}</td>
                    <td>${bean.height!}</td>
                    <td><#list unitEnums as enumvo><#if bean.unit?? && bean.unit==enumvo.code>${enumvo.description}</#if></#list></td>
                    <td>
                        <a href="${base}/admin/templateInfo/view?id=${bean.id}" class="btn btn-green" data-toggle="dialog" data-id="templateInfo-edit" data-options="{title:'查看', height:400}">查看</a>
                        <a href="${base}/admin/templateInfo/selectPicture?templateInfoId=${bean.id}" class="btn btn-blue" data-toggle="dialog" data-id="templateInfo-new" data-options="{title:'选择模版图片', height:450, width:800}">选图</a>
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
