<div class="bjui-pageContent">
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">公司名称：</label>${bean.name!}
        </div>
        <div class="col-lg-6">
            <label class="control-label">法人姓名：</label>${bean.ownerName!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">联系方式：</label>${bean.phone!}
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group">
        <div class="col-lg-12">
            <label class="control-label">地址：</label>${bean.address!}
        </div>
    </div>
    <br/>
    <br/>

    <div class="form-group">
        <div class="col-lg-6">
            <label class="control-label">状态：</label><#list statusIdEnums as enumvo><#if bean.statusId?? && bean.statusId==enumvo.code>${enumvo.desc}</#if></#list>
        </div>
    </div>

</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
    </ul>
</div>