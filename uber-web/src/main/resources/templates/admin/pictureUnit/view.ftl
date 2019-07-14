<div class="bjui-pageContent">
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">名称：</label>${bean.name!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">状态：</label><#list yesOrNoEnum as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list>
        </div>
    </div>
    <br/>
    <br/>

    <div class="form-group">
        <div class="col-lg-12">
            <img src="${bean.urlPath!}" width="200" height="200"/>
        </div>
    </div>


</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
    </ul>
</div>