<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>商家Id：</label>${bean.sellerId}
        </p>
        <p>
            <label>商品名称(SPU名称)：</label>${bean.goodsName}
        </p>
        <p>
            <label>商品描述：</label>${bean.goodsDescription}
        </p>
        <p>
            <label>默认SKU：</label>${bean.defaultItemId}
        </p>
        <p>
            <label>是否上架(0否 1是)：</label>${bean.isMarketable}
        </p>
        <p>
            <label>所属品牌Id：</label>${bean.brandId}
        </p>
        <p>
            <label>一级类目Id：</label>${bean.category1Id}
        </p>
        <p>
            <label>二级类目Id：</label>${bean.category2Id}
        </p>
        <p>
            <label>三级类目Id：</label>${bean.category3Id}
        </p>
        <p>
            <label>小图：</label>${bean.smallImage}
        </p>
        <p>
            <label>分类模版Id：</label>${bean.typeTemplateId}
        </p>
        <p>
            <label>是否开启规格(0否 1是)：</label>${bean.isEnableSpec}
        </p>
        <p>
            <label>创建人：</label>${bean.createPerson}
        </p>
        <p>
            <label>创建时间：</label>${bean.createTime}
        </p>
        <p>
            <label>更新人：</label>${bean.updatePerson}
        </p>
        <p>
            <label>修改时间：</label>${bean.updateTime}
        </p>
    </div>
    <div class="formBar">
        <ul>
            <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
        </ul>
    </div>
</div>
