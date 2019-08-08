<#include "/macro/base.ftl" />
<div class="bjui-pageHeader">
    <form id="pagerForm" data-toggle="ajaxsearch" action="${base}/admin/templateInfo/selectPicture" method="post">
        <@pageHeadr />
        <br>
        <input type="hidden" name="templateInfoId" value="${templateInfoId!}"/>
        <div class="bjui-searchBar">
            <label>图片名称：</label>
            <input type="text" name="name" value="${bean.name!}" class="form-control" size="12">&nbsp;

            <button type="submit" class="btn-default" data-icon="search">查询</button>&nbsp;
            <a class="btn btn-orange" href="javascript:;" data-toggle="reloadsearch" data-clear-query="true" data-icon="undo">清空查询</a>

            <br />
            <br />
<#--            <a href="${base}/admin/pictureUnit/add" class="btn btn-default" data-toggle="dialog" data-icon="plus" data-id="admin-templateInfo" data-options="{title:'添加', height:350}">新增图片</a>-->
        </div>
    </form>
</div>
<div class="bjui-pageContent">
    <div class="row" style="padding: 0 8px;">
        <#if page??>
        <#list page.list as bean>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>${bean.name!} </h3>
                    </div>
                    <div class="panel-body">
                        <img src="${bean.urlPath!}" width="95%" height="130"/>
                    </div>
                    <div class="panel-footer">
                        <a href="${base}/admin/templateInfo/set?templateInfoId=${templateInfoId!}&imageId=${bean.id!}" class="btn btn-red btn-sm" data-toggle="doajax" data-id="admin-templateInfo" data-confirm-msg="确定要选定吗？">选定</a>
                    </div>
                </div>
            </div>
        </#list>
        </#if>
    </div>
</div>
<@pageFooter />
