//
//  ViewController.m
//  ErrorManager
//
//  Created by alex on 13-6-7.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"
#import "RequestError.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)erroorAction:(UIButton*)btn{
    NSError *error=nil;
    if(btn.tag==0){
        error=[RequestError errorWithErrorCode:200];//服务端返回错误码200
    }else if (btn.tag==1){
        error=[RequestError errorWithErrorCode:201];//服务端返回错误码201
    }else if (btn.tag==2){
        error=[RequestError errorWithErrorCode:202];//服务端返回错误码202
    }else if (btn.tag==3){
        error=[RequestError errorWithErrorCode:203];//服务端返回错误码203
    }else if (btn.tag==4){
        error=[RequestError errorWithErrorCode:500];//500为客户端未知错误码
    }

    //判断NSError的错误域
    if ([error.domain isEqualToString:CARequestErrorDomain]) {
        //......
    }
    
    //判断NSError的code
    if (error.code==CARequestErrorCodeGroupForbidden) {
        //......
    }
    
    //获取本地化的错误提示信息
    NSLog(@"%@",error.localizedDescription);
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:error.localizedDescription
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:@"OK", nil];
    [alertView show];
}

@end
