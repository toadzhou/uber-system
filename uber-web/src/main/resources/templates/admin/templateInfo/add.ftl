<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/templateInfo/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x85">模版名称：</label>
            <input type="text" name="name" value="" placeholder="项目-产品-编号" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">长度：</label>
            <input type="text" name="width" value="" placeholder="长度" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">宽度：</label>
            <input type="text" name="height" value="" placeholder="宽度" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label class="control-label x85">价格(元)：</label>
            <input type="text" name="price" value="" placeholder="价格" size="20" data-rule="required">
        </div>
        <div class="form-group">
            <label for="userType" class="control-label x85">计量单位：</label>
            <#list unitEnums as enumvo>
                <input type="radio" id="userType${enumvo.code}" name="unit" value="${enumvo.code}" data-toggle="icheck" data-label="${enumvo.description}" size="20">
            </#list>
        </div>

    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>