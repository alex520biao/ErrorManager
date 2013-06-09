//
//  RequestErrorHelper.m
//  CloudAlbum
//
//  Created by alex on 13-5-31.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "RequestErrorHelper.h"


@implementation RequestErrorHelper

/*
 错误域（NSInteger）:_domain
 */
NSString* const CARequestErrorDomain = @"CARequestErrorDomain";//标志错误的域

+(NSError*)errorWithErrorCode:(CARequestErrorCode)errorCode{
    NSString *descriptionKey=@"CARequestErrorCodeUnknownError";
    if (errorCode==CARequestErrorCodeGroupForbidden) {
        descriptionKey=@"CARequestErrorCodeGroupForbidden";
    }
        
    //RequestError的本地化字符串处理
    NSBundle *requestErrorBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"RequestError" ofType:@"bundle"]];
    //详细描述 NSLocalizedDescriptionKey
    NSString *description = NSLocalizedStringFromTableInBundle(descriptionKey, @"RequestError", requestErrorBundle, nil);
    NSDictionary *userInfo=[NSDictionary dictionaryWithObjectsAndKeys:description,NSLocalizedDescriptionKey,nil];
    NSError *error=[NSError errorWithDomain:CARequestErrorDomain code:errorCode userInfo:userInfo];
    return error;
}




@end



