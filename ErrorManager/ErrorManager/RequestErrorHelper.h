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
 错误标示（NSString *）: _code
 */
typedef enum _CARequestErrorCode {
    /*CARequestErrorDomain 错误域*/
    CARequestErrorCodeConnectionFailure = 1, //网络连接不通
    CARequestErrorCodeASIRequestTimedOut= 2, //访问超时
    CARequestErrorCodeUnknownError=3,    //未知错误
    CARequestErrorCodeGroupForbidden= 4,//此群已被封禁
} CARequestErrorCode;

@interface RequestErrorHelper : NSObject

+(NSError*)errorWithErrorCode:(CARequestErrorCode)errorCode;

@end

