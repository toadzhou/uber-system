<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/pluginInfo/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x85">插件名称：</label>
            <input type="text" name="name" value="" placeholder="name" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">描述：</label>
            <input type="text" name="description" value="" placeholder="描述" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">价格：</label>
            <input type="text" name="price" value="" placeholder="价格" size="20" data-rule="required,email">
        </div>
        <div class="form-group">
            <label class="control-label x85">品牌：</label>
            <input type="text" name="brand" value="" placeholder="品牌" size="20" data-rule="required,mobile">
        </div>
        <div class="form-group">
            <label for="statusId" class="control-label x85">状态：</label>
            <#list statusIdEnums as enumvo>
                <input type="radio" id="statusId${enumvo.code}" name="status" value="${enumvo.code}" data-toggle="icheck" data-label="${enumvo.description}" size="20">
            </#list>
        </div>
        <div class="form-group">
            <label for="userType" class="control-label x85">计量单位：</label>
            <#list unitEnum as enumvo>
                <input type="radio" id="userType${enumvo.code}" name="unit" value="${enumvo.code}" data-toggle="icheck" data-label="${enumvo.description}" size="20">
            </#list>
        </div>
        <div class="form-group">
            <label class="control-label x85">宽度：</label>
            <input type="text" name="width" value="" placeholder="宽度" size="20" data-rule="required,mobile">
        </div>
        <div class="form-group">
            <label class="control-label x85">长度：</label>
            <input type="text" name="height" value="" placeholder="宽度" size="20" data-rule="required,mobile">
        </div>
        <div class="form-group">
            <label class="control-label x85">重量：</label>
            <input type="text" name="weight" value="" placeholder="宽度" size="20" data-rule="required,mobile">
        </div>
        <div class="form-group">
            <label class="control-label x85">备注：</label>
            <textarea name="remark" data-toggle="autoheight" cols="20"></textarea>
        </div>

    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>