<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/company/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x85">公司名称：</label>
            <input type="text" name="companyName" value="" placeholder="公司名称" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">法人姓名：</label>
            <input type="text" name="ownerName" value="" placeholder="法人姓名" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">联系方式：</label>
            <input type="text" name="phone" value="" placeholder="联系方式" size="20" data-rule="required,email">
        </div>

        <div class="form-group">
            <label class="control-label x85">地址：</label>
            <textarea name="address" data-toggle="autoheight" cols="20"></textarea>
        </div>
<#--        <div class="form-group">-->
<#--            <label for="statusId" class="control-label x85">状态：</label>-->
<#--            <#list statusIdEnums as enumvo>-->
<#--                <input type="radio" id="statusId${enumvo.code}" name="statusId" value="${enumvo.code}" data-toggle="icheck" data-label="${enumvo.desc}" size="20">-->
<#--            </#list>-->
<#--        </div>-->
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>