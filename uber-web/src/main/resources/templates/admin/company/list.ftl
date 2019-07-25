<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/company/list" method="post">
        <@pageHeadr />
        <input type="hidden" name="isLeaf" value="0"/>
        <div class="bjui-searchBar">
            <label>公司名称：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
            <a href="${base}/admin/company/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="sysUserInfo-add" data-options="{title:'添加', height:350}">新增图片</a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>名称</th>
            <th>电话</th>
            <th>状态</th>
            <th>法人姓名</th>
            <th>地址</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <#if page??>
            <#list page.list as bean>
                <tr>
                    <td align="center">${bean_index+1}</td>
                    <td>${bean.name!}</td>
                    <td>${bean.phone!}</td>
                    <td><#list yesOrNoEnum as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list></td>
                    <td>${bean.ownerName!}</td>
                    <td>${bean.address!}</td>
                    <td>
                        <a href="${base}/admin/company/view?id=${bean.id}" class="btn btn-green" data-toggle="dialog" data-id="sysUserInfo-edit" data-options="{title:'查看', height:400}">查看</a>
                    </td>
                </tr>
            </#list>
        </#if>
        </tbody>
    </table>
</div>
<@pageFooter />
