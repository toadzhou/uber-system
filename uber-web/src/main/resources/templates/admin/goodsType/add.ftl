<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/goodsType/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x140">商品类型名称：</label>
            <input type="text" name="name" value="" placeholder="商品类型名称" size="20" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x140">关联品牌：</label>
                <#if brandList??>
                    <#list brandList as enumvo>
                        <input type="checkbox" name="brandIdList" id="brandIdList" value="${enumvo.id}" data-toggle="icheck" data-label="${enumvo.name!}">
                    </#list>
                </#if>
        </div>
        <div class="form-group">
            <label class="control-label x140">属性分组(逗号隔开)：</label>
            <textarea name="attrGroup" style="width: 200px; height:80px;"></textarea>
        </div>

    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
