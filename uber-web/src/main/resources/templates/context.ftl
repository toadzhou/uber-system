<#include "/macro/base.ftl" />
<div class="bjui-pageHeader" style="background: #FFF;padding: 0 5px">
    <div style="padding: 0 15px;">
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-blue" data-icon="plus"> 添加</button>
			<button type="button" class="btn btn-green" data-icon="edit"> 编辑</button>
			<button type="button" class="btn btn-orange" data-icon="undo"> 取消</button>
			<button type="button" class="btn btn-default" data-icon="save"> 保存</button>
		</div>
	</div>
</div>
<div class="bjui-pageContent">
	<div style="padding:0; height: 1900px;">
        <div class="row" style="padding: 0 8px;">
			<div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading">
						<h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>饼/漏斗图 </h3>
					</div>
					<div class="panel-body">
						<br><br><br><br><br><br><br><br><br><br>
					</div>
				</div>

			</div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i>饼/漏斗图 </h3>
                    </div>
                    <div class="panel-body">
                        <div style="mini-width:440px;height:230px"
                             data-toggle="echarts" data-type="pie" data-theme="blue"
                             data-url="http://localhost:8888/test/pie"></div>
                    </div>
                </div>

			</div>
		</div>

	</div>

</div>
