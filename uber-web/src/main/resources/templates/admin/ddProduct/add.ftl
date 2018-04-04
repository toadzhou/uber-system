<#assign base=request.contextPath />
<div class="pageContent">
	<form action="${base}/admin/ddProduct/save" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, dialogAjaxDone);">
        <div class="pageFormContent" layoutH="58">
    		<p>
                <label>产品名称：</label>
                <input type="text" name="productName" value="" placeholder="产品名称" size="20" />
            </p>
    		<p>
                <label>产品代码：</label>
                <input type="text" name="productCode" value="" placeholder="产品代码" size="20" />
            </p>
    		<p>
                <label>最低可申请额度(单位：元)：</label>
                <input type="text" name="amountMin" value="" placeholder="最低可申请额度(单位：元)" size="20" />
            </p>
    		<p>
                <label>最高可申请额度（单位：元）：</label>
                <input type="text" name="amountMax" value="" placeholder="最高可申请额度（单位：元）" size="20" />
            </p>
    		<p>
                <label>放款周期：单位天：</label>
                <input type="text" name="loanTerm" value="" placeholder="放款周期：单位天" size="20" />
            </p>
    		<p>
                <label>缩略图：</label>
                <input type="text" name="iconUrl" value="" placeholder="缩略图" size="20" />
            </p>
    		<p>
                <label>还款方式: 1.等额本息  2.到期还本付息 3.其他：</label>
                <input type="text" name="repayType" value="" placeholder="还款方式: 1.等额本息  2.到期还本付息 3.其他" size="20" />
            </p>
    		<p>
                <label>最低利率（单位：%）：</label>
                <input type="text" name="interestMin" value="" placeholder="最低利率（单位：%）" size="20" />
            </p>
    		<p>
                <label>最大利率（单位：%）：</label>
                <input type="text" name="interestMax" value="" placeholder="最大利率（单位：%）" size="20" />
            </p>
    		<p>
                <label>利率单位: 年(year) 月(month) 日(day)：</label>
                <input type="text" name="interestUnit" value="" placeholder="利率单位: 年(year) 月(month) 日(day)" size="20" />
            </p>
    		<p>
                <label>最低期限：</label>
                <input type="text" name="termMin" value="" placeholder="最低期限" size="20" />
            </p>
    		<p>
                <label>最大期限：</label>
                <input type="text" name="termMax" value="" placeholder="最大期限" size="20" />
            </p>
    		<p>
                <label>期限单位:  年(year) 月(month) 日(day)：</label>
                <input type="text" name="termUnit" value="" placeholder="期限单位:  年(year) 月(month) 日(day)" size="20" />
            </p>
    		<p>
                <label>申请资格：</label>
                <input type="text" name="applyCondition" value="" placeholder="申请资格" size="20" />
            </p>
    		<p>
                <label>申请材料：</label>
                <input type="text" name="applyMaterial" value="" placeholder="申请材料" size="20" />
            </p>
    		<p>
                <label>认证配置: json格式存储：</label>
                <input type="text" name="authConfig" value="" placeholder="认证配置: json格式存储" size="20" />
            </p>
    		<p>
                <label>创建人：</label>
                <input type="text" name="createPerson" value="" placeholder="创建人" size="20" />
            </p>
    		<p>
                <label>创建时间：</label>
                <input type="text" name="createTime" value="" placeholder="创建时间" size="20" />
            </p>
    		<p>
                <label>更新人：</label>
                <input type="text" name="updatePerson" value="" placeholder="更新人" size="20" />
            </p>
    		<p>
                <label>修改时间：</label>
                <input type="text" name="updateTime" value="" placeholder="修改时间" size="20" />
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
