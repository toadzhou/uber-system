<div class="bjui-pageContent">
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">商品模版名称：</label>${bean.name!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">品牌：</label>${bean.brand!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-4">
            <label class="control-label">长度：</label>${bean.width!}
        </div>
        <div class="col-lg-4">
            <label class="control-label">宽度：</label>${bean.height!}
        </div>
        <div class="col-lg-4">
            <label class="control-label">重量：</label>${bean.weight!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-12">
            <label class="control-label">描述：</label>${bean.description!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">状态：</label><#list statusIdEnums as enumvo><#if bean.status?? && bean.status==enumvo.code>${enumvo.description}</#if></#list>
        </div>
    </div>

</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
    </ul>
</div>