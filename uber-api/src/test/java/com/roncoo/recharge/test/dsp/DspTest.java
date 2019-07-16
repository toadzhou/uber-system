package com.roncoo.recharge.test.dsp;

import com.google.common.collect.Lists;
import com.roncoo.recharge.common.entity.DspSystemLog;
import com.roncoo.recharge.facade.service.DspSystemLogService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Collections;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * Description: dsp 测试相关
 *
 * @author xierongli
 * @create 2019-06-20 16:14
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class DspTest {

    private List<Long> groupIds = Lists.newArrayList();

    private List<Long> resourceIds = Lists.newArrayList();



    @Autowired
    private DspSystemLogService dspSystemLogService;

    public void init(){
        groupIds.add(1L);
        groupIds.add(2L);
        groupIds.add(3L);
        groupIds.add(4L);

    }

    @Test
    public void randomInsert(){
        init();


        for(int i=0; i<100; i++){
            Collections.shuffle(groupIds);
            DspSystemLog dspSystemLog = new DspSystemLog();
            dspSystemLog.setGroupId(groupIds.get(0));
        }

    }



}
