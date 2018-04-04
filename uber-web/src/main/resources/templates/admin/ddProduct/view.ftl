<#assign base=request.contextPath /> 
<div class="pageContent">
    <div class="pageFormContent" layoutH="58">
        <p>
            <label>产品名称：</label>${bean.productName}
        </p>
        <p>
            <label>产品代码：</label>${bean.productCode}
        </p>
        <p>
            <label>最低可申请额度(单位：元)：</label>${bean.amountMin}
        </p>
        <p>
            <label>最高可申请额度（单位：元）：</label>${bean.amountMax}
        </p>
        <p>
            <label>放款周期：单位天：</label>${bean.loanTerm}
        </p>
        <p>
            <label>缩略图：</label>${bean.iconUrl}
        </p>
        <p>
            <label>还款方式: 1.等额本息  2.到期还本付息 3.其他：</label>${bean.repayType}
        </p>
        <p>
            <label>最低利率（单位：%）：</label>${bean.interestMin}
        </p>
        <p>
            <label>最大利率（单位：%）：</label>${bean.interestMax}
        </p>
        <p>
            <label>利率单位: 年(year) 月(month) 日(day)：</label>${bean.interestUnit}
        </p>
        <p>
            <label>最低期限：</label>${bean.termMin}
        </p>
        <p>
            <label>最大期限：</label>${bean.termMax}
        </p>
        <p>
            <label>期限单位:  年(year) 月(month) 日(day)：</label>${bean.termUnit}
        </p>
        <p>
            <label>申请资格：</label>${bean.applyCondition}
        </p>
        <p>
            <label>申请材料：</label>${bean.applyMaterial}
        </p>
        <p>
            <label>认证配置: json格式存储：</label>${bean.authConfig}
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
