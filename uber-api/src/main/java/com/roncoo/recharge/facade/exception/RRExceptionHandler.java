package com.roncoo.recharge.facade.exception;

import com.roncoo.recharge.facade.base.Result;
import com.roncoo.recharge.facade.base.Results;
import com.roncoo.recharge.facade.bean.enums.ErrorCodeEnum;
import lombok.extern.slf4j.Slf4j;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * 异常处理器
 * 
 * @author xierongli
 * @email sunlightcs@gmail.com
 * @date 2016年10月27日 下午10:16:19
 */
@RestControllerAdvice
@Slf4j
public class RRExceptionHandler {
//	private Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 自定义异常
	 */
	@ExceptionHandler(RRException.class)
	@ResponseBody
	public Result handleRRException(RRException e){
		log.warn("errorCode："+e.getCode()+" errorMsg: "+e.getMessage());
		return Results.newFailedResult(e.getCode(),e.getMessage());
	}

	@ExceptionHandler(DuplicateKeyException.class)
	@ResponseBody
	public Result handleDuplicateKeyException(DuplicateKeyException e){
		log.error(e.getMessage(), e);
		return Results.newFailedResult(ErrorCodeEnum.DUPLICATE_SUBMIT.getCode(),e.getMessage());
	}

	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseBody
	public Result handleIllegalArgumentException(IllegalArgumentException e){
		log.error(e.getMessage(), e);
		return Results.newFailedResult(ErrorCodeEnum.PARAM_ERROR.getCode(),e.getMessage());
	}

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public Result handleException(Exception e){
		log.error(e.getMessage(), e);
		if(e instanceof RRException) {
			RRException rrException = (RRException)e;
			return Results.newFailedResult(rrException.getCode(), rrException.getMessage());
		}
		return Results.newFailedResult(ErrorCodeEnum.GLOBE_ERROR.getCode(),e.getMessage());
	}
}
