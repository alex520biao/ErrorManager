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
    CARequestErrorCodeUnknownError=1,    //未知错误
    CARequestErrorCodeGroupForbidden= 2,//此群已被封禁
    CARequestErrorCodeOther1= 3,//其他错误1
    CARequestErrorCodeOther2= 4,//其他错误2
    CARequestErrorCodeOther3= 5,//其他错误3
} CARequestErrorCode;

@interface RequestErrorHelper : NSObject

+(NSError*)errorWithErrorCode:(CARequestErrorCode)errorCode;

@end

