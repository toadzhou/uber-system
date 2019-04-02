<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>商品卖点：</label>${bean.sellPoint}
        </p>
        <p>
            <label>库存数量：</label>${bean.stockNumber}
        </p>
        <p>
            <label>所属类目(最小类目Id)：</label>${bean.categoryId}
        </p>
        <p>
            <label>成本价：</label>${bean.costPrice}
        </p>
        <p>
            <label>市场价：</label>${bean.marketPrice}
        </p>
        <p>
            <label>是否默认 0否 ：</label>${bean.isDefault}
        </p>
    </div>
    <div class="formBar">
        <ul>
            <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
        </ul>
    </div>
</div>
