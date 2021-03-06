//
//  RequestErrorHelper.m
//  CloudAlbum
//
//  Created by alex on 13-5-31.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "RequestError.h"


@implementation RequestError

/*
 错误域（NSInteger）:_domain
 */
NSString* const CARequestErrorDomain = @"CARequestErrorDomain";//标志错误的域

//获取完整错误对象
+(NSError*)errorWithErrorCode:(CARequestErrorCode)errorCode{
    NSString *descriptionKey=@"CARequestErrorCodeUnknownError";
    if (errorCode==CARequestErrorCodeGroupForbidden) {
        descriptionKey=@"CARequestErrorCodeGroupForbidden";
    }else if(errorCode==CARequestErrorCodeOther1){
        descriptionKey=@"CARequestErrorCodeOther1";
    }else if(errorCode==CARequestErrorCodeOther2){
        descriptionKey=@"CARequestErrorCodeOther2";
    }else if(errorCode==CARequestErrorCodeOther3){
        descriptionKey=@"CARequestErrorCodeOther3";
    }
    
    //RequestError的本地化字符串处理
    NSBundle *requestErrorBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"RequestError" ofType:@"bundle"]];
    //详细描述 NSLocalizedDescriptionKey
    NSString *description = NSLocalizedStringFromTableInBundle(descriptionKey, @"RequestError", requestErrorBundle, nil);
    if ([descriptionKey isEqualToString:@"CARequestErrorCodeUnknownError"]) {
        description=[description stringByAppendingFormat:@":%d",(int)errorCode];
    }
    NSDictionary *userInfo=[NSDictionary dictionaryWithObjectsAndKeys:description,NSLocalizedDescriptionKey,nil];
    NSError *error=[NSError errorWithDomain:CARequestErrorDomain code:errorCode userInfo:userInfo];
    return error;
}

//只获取错误描述文本
+(NSString*)getRequestErrorStrWithCode:(CARequestErrorCode)errCode{
    NSError *error=[RequestError errorWithErrorCode:errCode];
    return error.localizedDescription;
}




@end



