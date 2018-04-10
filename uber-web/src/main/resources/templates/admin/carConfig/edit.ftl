<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/carConfig/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>：</label>
                <input type="text" name="sonId" value="${bean.sonId}" placeholder="" size="20" />
            </p>
    		<p>
                <label>：</label>
                <input type="text" name="parentId" value="${bean.parentId}" placeholder="" size="20" />
            </p>
    		<p>
                <label>：</label>
                <input type="text" name="fullName" value="${bean.fullName}" placeholder="" size="20" />
            </p>
    		<p>
                <label>销售状态：</label>
                <input type="text" name="saleState" value="${bean.saleState}" placeholder="销售状态" size="20" />
            </p>
    		<p>
                <label>年份：</label>
                <input type="text" name="yearType" value="${bean.yearType}" placeholder="年份" size="20" />
            </p>
    		<p>
                <label>是否在产：</label>
                <input type="text" name="productionState" value="${bean.productionState}" placeholder="是否在产" size="20" />
            </p>
    		<p>
                <label>车型(紧凑)：</label>
                <input type="text" name="sizeType" value="${bean.sizeType}" placeholder="车型(紧凑)" size="20" />
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
