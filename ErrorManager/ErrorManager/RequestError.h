//
//  RequestErrorHelper.h
//  RequestErrorManager
//
//  Created by alex on 13-6-7.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 RequestErrorHelper用于定义和处理需要反馈给用户的错误。
 */


/*
 错误标示（NSString *）: errorCode
 错误域 CARequestErrorDomain
 */
typedef enum _CARequestErrorCode {
    CARequestErrorCodeUnknownError=1,    //未知错误
    
    //错误分组(200）
    CARequestErrorCodeGroupForbidden= 200,//此群已被封禁
    CARequestErrorCodeOther1= 201,//其他错误1
    CARequestErrorCodeOther2= 202,//其他错误2
    CARequestErrorCodeOther3= 203,//其他错误3
    
    //错误分组(300)
    CARequestErrorCodeOther4= 300,//其他错误4
    CARequestErrorCodeOther5= 301,//其他错误5
    CARequestErrorCodeOther6= 302,//其他错误6
} CARequestErrorCode;
UIKIT_EXTERN NSString *const CARequestErrorDomain;


@interface RequestError : NSObject

//获取完整错误对象
+(NSError*)errorWithErrorCode:(CARequestErrorCode)errorCode;

//只获取错误描述文本
+(NSString*)getRequestErrorStrWithCode:(CARequestErrorCode)errCode;

@end

