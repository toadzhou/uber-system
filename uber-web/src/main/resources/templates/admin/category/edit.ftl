<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/category/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>父节点Id：</label>
                <input type="text" name="parentId" value="${bean.parentId}" placeholder="父节点Id" size="20" />
            </p>
    		<p>
                <label>叶子结点: 0否 1是：</label>
                <input type="text" name="isLeaf" value="${bean.isLeaf}" placeholder="叶子结点: 0否 1是" size="20" />
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
