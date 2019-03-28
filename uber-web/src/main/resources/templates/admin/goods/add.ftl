<#assign base=request.contextPath />
<div class="bjui-pageContent">
    <form action="${base}/admin/goods/save" data-toggle="validate" method="post">
        <div class="form-group">
            <label class="control-label x140">商品名称：</label>
            <input type="text" name="goodsName" value="" placeholder="商品名称" size="30" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x140">商品描述：</label>
            <textarea name="goodsDescription" style="width: 300px; height:80px;"></textarea>
        </div>

        <div class="form-group">
            <label class="control-label x140">一级类目：</label>
            <select name="category1Id" data-toggle="selectpicker" data-refurl="/admin/goods/secondCategory?parent_id={value}.html" data-nextselect="#second_category" class="show-tick" style="display: none;">
                <#if categoryList??>
                    <#list categoryList as enumvo>
                        <option value="${enumvo.id}">${enumvo.name}</option>
                    </#list>
                </#if>
            </select>
        </div>

        <div class="btn-group bootstrap-select show-tick" style="width: 70px;">
            <button type="button" class="btn dropdown-toggle selectpicker btn-default" data-toggle="dropdown" data-id="second_category" title="二级类目">
                <span class="filter-option pull-left">北京市</span>&nbsp;<span class="caret"></span>
            </button>
        </div>



        <div class="form-group">
            <label class="control-label x140">选择品牌：</label>
            <select name="branId" data-toggle="selectpicker"  class="show-tick" style="display: none;" data-width="200">
                <#if brandList??>
                    <#list brandList as enumvo>
                         <option value="${enumvo.id}">${enumvo.name}</option>
                    </#list>
                </#if>
            </select>
        </div>

        <div class="form-group">
            <label class="control-label x140">商城价(元)：</label>
            <input type="text" name="price" value="" placeholder="商城价" size="30" data-rule="required"/>
        </div>
        <div class="form-group">
            <label class="control-label x140">是否启用规格：</label>
            <input type="radio" name="isEnableSpec" value="0"  checked/>不启用
            <input type="radio" name="isEnableSpec" value="1" />启用
        </div>
    </form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close">取消</button></li>
        <li><button type="submit" class="btn-default">添加</button></li>
    </ul>
</div>
