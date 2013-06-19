//
//  ViewController.m
//  ErrorManager
//
//  Created by alex on 13-6-7.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "ViewController.h"
#import "RequestErrorHelper.h"
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
        error=[RequestErrorHelper errorWithErrorCode:CARequestErrorCodeGroupForbidden];
    }else if (btn.tag==1){
        error=[RequestErrorHelper errorWithErrorCode:CARequestErrorCodeOther2];
    }else if (btn.tag==2){
        error=[RequestErrorHelper errorWithErrorCode:CARequestErrorCodeOther2];
    }else if (btn.tag==3){
        error=[RequestErrorHelper errorWithErrorCode:CARequestErrorCodeOther3];
    }
    
    
    if (error.code==CARequestErrorCodeGroupForbidden) {
        //此处可以单独判断错误类型
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
