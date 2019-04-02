<#assign base=request.contextPath />
<div class="pageContent">
	<form action="${base}/admin/goodsItem/save" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
        <div class="pageFormContent" layoutH="58">
    		<p>
                <label>商品卖点：</label>
                <input type="text" name="sellPoint" value="" placeholder="商品卖点" size="20" />
            </p>
    		<p>
                <label>库存数量：</label>
                <input type="text" name="stockNumber" value="" placeholder="库存数量" size="20" />
            </p>
    		<p>
                <label>所属类目(最小类目Id)：</label>
                <input type="text" name="categoryId" value="" placeholder="所属类目(最小类目Id)" size="20" />
            </p>
    		<p>
                <label>成本价：</label>
                <input type="text" name="costPrice" value="" placeholder="成本价" size="20" />
            </p>
    		<p>
                <label>市场价：</label>
                <input type="text" name="marketPrice" value="" placeholder="市场价" size="20" />
            </p>
    		<p>
                <label>是否默认 0否 ：</label>
                <input type="text" name="isDefault" value="" placeholder="是否默认 0否 " size="20" />
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
                <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
            </ul>
        </div>
	</form>
</div>
