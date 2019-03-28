<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/goods/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>商家Id：</label>
                <input type="text" name="sellerId" value="${bean.sellerId}" placeholder="商家Id" size="20" />
            </p>
    		<p>
                <label>商品名称(SPU名称)：</label>
                <input type="text" name="goodsName" value="${bean.goodsName}" placeholder="商品名称(SPU名称)" size="20" />
            </p>
    		<p>
                <label>商品描述：</label>
                <input type="text" name="goodsDescription" value="${bean.goodsDescription}" placeholder="商品描述" size="20" />
            </p>
    		<p>
                <label>默认SKU：</label>
                <input type="text" name="defaultItemId" value="${bean.defaultItemId}" placeholder="默认SKU" size="20" />
            </p>
    		<p>
                <label>是否上架(0否 1是)：</label>
                <input type="text" name="isMarketable" value="${bean.isMarketable}" placeholder="是否上架(0否 1是)" size="20" />
            </p>
    		<p>
                <label>所属品牌Id：</label>
                <input type="text" name="brandId" value="${bean.brandId}" placeholder="所属品牌Id" size="20" />
            </p>
    		<p>
                <label>一级类目Id：</label>
                <input type="text" name="category1Id" value="${bean.category1Id}" placeholder="一级类目Id" size="20" />
            </p>
    		<p>
                <label>二级类目Id：</label>
                <input type="text" name="category2Id" value="${bean.category2Id}" placeholder="二级类目Id" size="20" />
            </p>
    		<p>
                <label>三级类目Id：</label>
                <input type="text" name="category3Id" value="${bean.category3Id}" placeholder="三级类目Id" size="20" />
            </p>
    		<p>
                <label>小图：</label>
                <input type="text" name="smallImage" value="${bean.smallImage}" placeholder="小图" size="20" />
            </p>
    		<p>
                <label>分类模版Id：</label>
                <input type="text" name="typeTemplateId" value="${bean.typeTemplateId}" placeholder="分类模版Id" size="20" />
            </p>
    		<p>
                <label>是否开启规格(0否 1是)：</label>
                <input type="text" name="isEnableSpec" value="${bean.isEnableSpec}" placeholder="是否开启规格(0否 1是)" size="20" />
            </p>
    		<p>
                <label>创建人：</label>
                <input type="text" name="createPerson" value="${bean.createPerson}" placeholder="创建人" size="20" />
            </p>
    		<p>
                <label>创建时间：</label>
                <input type="text" name="createTime" value="${bean.createTime}" placeholder="创建时间" size="20" />
            </p>
    		<p>
                <label>更新人：</label>
                <input type="text" name="updatePerson" value="${bean.updatePerson}" placeholder="更新人" size="20" />
            </p>
    		<p>
                <label>修改时间：</label>
                <input type="text" name="updateTime" value="${bean.updateTime}" placeholder="修改时间" size="20" />
            </p>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">修改</button></div></div></li>
                <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
            </ul>
        </div>
	</form>
</div>
