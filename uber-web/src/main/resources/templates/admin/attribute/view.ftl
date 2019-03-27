<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>所属分类(最小分类)：</label>${bean.categoryId}
        </p>
        <p>
            <label>分类名称：</label>${bean.attrName}
        </p>
        <p>
            <label> 0为类别:0手功输入;1为选择输入;2为多行文本输入：</label>${bean.attrInputType}
        </p>
        <p>
            <label>SKU属性; 0否; 1是：</label>${bean.attrType}
        </p>
        <p>
            <label>即选择输入,则attr_name对应的值的取值就是该这字段值 ：</label>${bean.attrValues}
        </p>
        <p>
            <label>性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品：</label>${bean.attrIndex}
        </p>
        <p>
            <label>属性排序,数字越大越靠前,如果数字一样则按id顺序：</label>${bean.sortOrder}
        </p>
        <p>
            <label>是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户：</label>${bean.isLinked}
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
