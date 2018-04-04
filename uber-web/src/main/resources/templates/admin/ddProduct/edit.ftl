<#assign base=request.contextPath /> 
<div class="pageContent">
	<form action="${base}/admin/ddProduct/update" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
		<div class="pageFormContent" layoutH="58">
            <input type="hidden" name="id" value="${bean.id}"/>
    		<p>
                <label>产品名称：</label>
                <input type="text" name="productName" value="${bean.productName}" placeholder="产品名称" size="20" />
            </p>
    		<p>
                <label>产品代码：</label>
                <input type="text" name="productCode" value="${bean.productCode}" placeholder="产品代码" size="20" />
            </p>
    		<p>
                <label>最低可申请额度(单位：元)：</label>
                <input type="text" name="amountMin" value="${bean.amountMin}" placeholder="最低可申请额度(单位：元)" size="20" />
            </p>
    		<p>
                <label>最高可申请额度（单位：元）：</label>
                <input type="text" name="amountMax" value="${bean.amountMax}" placeholder="最高可申请额度（单位：元）" size="20" />
            </p>
    		<p>
                <label>放款周期：单位天：</label>
                <input type="text" name="loanTerm" value="${bean.loanTerm}" placeholder="放款周期：单位天" size="20" />
            </p>
    		<p>
                <label>缩略图：</label>
                <input type="text" name="iconUrl" value="${bean.iconUrl}" placeholder="缩略图" size="20" />
            </p>
    		<p>
                <label>还款方式: 1.等额本息  2.到期还本付息 3.其他：</label>
                <input type="text" name="repayType" value="${bean.repayType}" placeholder="还款方式: 1.等额本息  2.到期还本付息 3.其他" size="20" />
            </p>
    		<p>
                <label>最低利率（单位：%）：</label>
                <input type="text" name="interestMin" value="${bean.interestMin}" placeholder="最低利率（单位：%）" size="20" />
            </p>
    		<p>
                <label>最大利率（单位：%）：</label>
                <input type="text" name="interestMax" value="${bean.interestMax}" placeholder="最大利率（单位：%）" size="20" />
            </p>
    		<p>
                <label>利率单位: 年(year) 月(month) 日(day)：</label>
                <input type="text" name="interestUnit" value="${bean.interestUnit}" placeholder="利率单位: 年(year) 月(month) 日(day)" size="20" />
            </p>
    		<p>
                <label>最低期限：</label>
                <input type="text" name="termMin" value="${bean.termMin}" placeholder="最低期限" size="20" />
            </p>
    		<p>
                <label>最大期限：</label>
                <input type="text" name="termMax" value="${bean.termMax}" placeholder="最大期限" size="20" />
            </p>
    		<p>
                <label>期限单位:  年(year) 月(month) 日(day)：</label>
                <input type="text" name="termUnit" value="${bean.termUnit}" placeholder="期限单位:  年(year) 月(month) 日(day)" size="20" />
            </p>
    		<p>
                <label>申请资格：</label>
                <input type="text" name="applyCondition" value="${bean.applyCondition}" placeholder="申请资格" size="20" />
            </p>
    		<p>
                <label>申请材料：</label>
                <input type="text" name="applyMaterial" value="${bean.applyMaterial}" placeholder="申请材料" size="20" />
            </p>
    		<p>
                <label>认证配置: json格式存储：</label>
                <input type="text" name="authConfig" value="${bean.authConfig}" placeholder="认证配置: json格式存储" size="20" />
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
