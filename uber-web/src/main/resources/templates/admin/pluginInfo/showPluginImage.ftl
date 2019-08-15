<#include "/macro/base.ftl" />
<div class="bjui-pageContent">
    <div class="row" style="padding: 0 8px;">
        <#list list as bean>
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>${bean.name!} </h3>
                    </div>
                    <div class="panel-body">
                        <img src="${bean.urlPath!}" width="95%" height="130"/>
                    </div>
                    <div class="panel-footer">
                        <a href="${base}/admin/pluginInfo/set?pluginInfoId=${pluginInfoId!}&imageId=${bean.id!}" class="btn btn-red btn-sm" data-toggle="doajax" data-id="admin-pluginInfo" data-confirm-msg="确定要选定吗？">选定</a>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>

