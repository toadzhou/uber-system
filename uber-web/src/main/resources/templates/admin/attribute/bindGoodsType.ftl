<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/category/updateGoodsType" data-toggle="validate" method="post">
        <input type="hidden" name="id" value="${categoryId!}"/>
        <div class="form-group">
            <label class="control-label x85">商品类型：</label>
            <#if goodsTypeList??>
                <select name="goodsTypeId"  data-width="200" data-toggle="selectpicker"  class="show-tick" style="display: none;">
                        <#list goodsTypeList as enumvo>
                            <option value="${enumvo.id}">${enumvo.name}</option>
                        </#list>
                </select>
            </#if>
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">绑定</button></li>
    </ul>
</div>
