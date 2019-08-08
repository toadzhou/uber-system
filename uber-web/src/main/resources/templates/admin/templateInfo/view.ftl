<div class="bjui-pageContent">
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">模版名称：</label>${bean.name!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">长度：</label>${bean.width!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">宽度：</label>${bean.height!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">计量单位：</label><#list unitEnums as enumvo><#if bean.unit?? && bean.unit==enumvo.code>${enumvo.description}</#if></#list>
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">状态：</label><#list yesOrNoEnums as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list>
        </div>
        <div class="col-lg-6">
            <label class="control-label">价格：</label>${bean.price!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">

    </div>

</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
    </ul>
</div>