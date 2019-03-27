<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/attribute/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>所属分类(最小分类)：</label>
                <input type="text" name="categoryId" value="${bean.categoryId}" placeholder="所属分类(最小分类)" size="20" />
            </p>
    		<p>
                <label>分类名称：</label>
                <input type="text" name="attrName" value="${bean.attrName}" placeholder="分类名称" size="20" />
            </p>
    		<p>
                <label> 0为类别:0手功输入;1为选择输入;2为多行文本输入：</label>
                <input type="text" name="attrInputType" value="${bean.attrInputType}" placeholder=" 0为类别:0手功输入;1为选择输入;2为多行文本输入" size="20" />
            </p>
    		<p>
                <label>SKU属性; 0否; 1是：</label>
                <input type="text" name="attrType" value="${bean.attrType}" placeholder="SKU属性; 0否; 1是" size="20" />
            </p>
    		<p>
                <label>即选择输入,则attr_name对应的值的取值就是该这字段值 ：</label>
                <input type="text" name="attrValues" value="${bean.attrValues}" placeholder="即选择输入,则attr_name对应的值的取值就是该这字段值 " size="20" />
            </p>
    		<p>
                <label>性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品：</label>
                <input type="text" name="attrIndex" value="${bean.attrIndex}" placeholder="性是否可以检索;0不需要检索; 1关键字检索2范围检索,该属性应该是如果检索的话,可以通过该属性找到有该属性的商品" size="20" />
            </p>
    		<p>
                <label>属性排序,数字越大越靠前,如果数字一样则按id顺序：</label>
                <input type="text" name="sortOrder" value="${bean.sortOrder}" placeholder="属性排序,数字越大越靠前,如果数字一样则按id顺序" size="20" />
            </p>
    		<p>
                <label>是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户：</label>
                <input type="text" name="isLinked" value="${bean.isLinked}" placeholder="是否关联,0 不关联 1关联; 如果关联, 那么用户在购买该商品时,具有有该属性相同的商品将被推荐给用户" size="20" />
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
