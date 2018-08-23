package com.roncoo.recharge.util.jni;

import org.apache.log4j.Logger;


public class FaceDetectionJNI {

    private final static Logger log = Logger.getLogger(FaceDetectionJNI.class);
    static {
        String os = System.getProperty("os.name");
        if(os.toLowerCase().startsWith("win")) {
            System.loadLibrary("FSDKFDServiceJNI");
        } else {
            System.loadLibrary("libarcsoft_fsdk_face_detection");
        }
    }
    private native String FSDK_FD_InitEngine(String appId, String sdkKey, int memSize, int orientPriority, int scanle, int maxFaceNum);
    private native String FSDK_FD_GetVersion();




    public FaceDetectionJNI(String appID, String sdkKey, int memSize, int orientPriority, int nscanle, int maxFaceNum) {
        log.debug("Init Params: " + appID + "," + sdkKey + "," + memSize + "," + orientPriority + ", " + nscanle + "," + maxFaceNum);
        String result = FSDK_FD_InitEngine(appID, sdkKey, memSize, orientPriority, nscanle, maxFaceNum);
        log.info("result:"+result);
    }
    public String FSDK_FD_GetVersion_Ext() {
        return FSDK_FD_GetVersion();
    }



}
