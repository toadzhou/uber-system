<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/requestInfo/list" method="post">
		<@pageHeadr />
        <div class="bjui-searchBar">
            <label>流水号：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;
            <label>乘客手机号：</label>
            <input type="text" name="phone" value="${bean.phone!}" class="form-control" size="12">&nbsp;
            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>
            <br />
            <br />
            <a href="${base}/admin/requestInfo/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="requestInfo-add" data-options="{title:'添加', height:300}">添加 </a>
        </div>
    </form>
</div>
<div class="bjui-pageContent tableContent">
    <table class="table table-bordered table-hover table-top" data-toggle="tablefixed" data-selected-multi="true">
        <thead>
        <tr>
            <th width="30">序号</th>
            <th>流水号</th>
            <th>手机</th>
            <th>状态</th>
            <th>是否加价</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
            <#if page??>
            <#list page.list as bean>
            <tr>
                <td align="center">${bean_index+1}</td>
                <td>${bean.serialNo}</td>
                <td>${bean.phone}</td>
                <td>
                    <#if bean.status==0>
                        挂起
                        <#elseif bean.status==1>
                                成功
                        <#elseif bean.status==2>
                                失败
                    </#if>
                </td>
                <td>
                    <#if bean.surge==1>
                        是
                        <#elseif bean.surge==0>
                            否
                    </#if>
                </td>
                <td>${bean.createTime?datetime}</td>
                <td>
                    <a href="${base}/admin/requestInfo/map?requestInfoId=${bean.id}" class="btn btn-red" data-toggle="dialog" data-icon="map" data-id="requestInfo-map" data-options="{title:'地图', height:500}">路线地图</a>
                </td>
            </tr>
            </#list>
            </#if>
        </tbody>
    </table>
</div>
<@pageFooter />

