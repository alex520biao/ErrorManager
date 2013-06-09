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

    NSError *error=[RequestErrorHelper errorWithErrorCode:CARequestErrorCodeGroupForbidden];    
    UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:error.localizedDescription
                                                      message:nil
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:@"OK", nil];
    [alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
