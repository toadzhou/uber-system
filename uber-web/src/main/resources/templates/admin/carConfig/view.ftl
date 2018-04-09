<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>：</label>${bean.sonId}
        </p>
        <p>
            <label>：</label>${bean.parentId}
        </p>
        <p>
            <label>：</label>${bean.fullName}
        </p>
        <p>
            <label>销售状态：</label>${bean.saleState}
        </p>
        <p>
            <label>年份：</label>${bean.yearType}
        </p>
        <p>
            <label>是否在产：</label>${bean.productionState}
        </p>
        <p>
            <label>车型(紧凑)：</label>${bean.sizeType}
        </p>
    </div>
    <div class="formBar">
        <ul>
            <li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
        </ul>
    </div>
</div>
