//
//  HttpRequest.m
//  ChaoMaBangDemo
//
//  Created by Lance on 15/11/30.
//  Copyright © 2015年 Lance. All rights reserved.
//
#import "CMBLoginViewController.h"
#import "CMBOauth.h"
#import "HttpProtocol.h"

@implementation HttpRequest

+ (void)login:(NSString *)client_id redirect_uri:(NSString *)redirect_uri response_type:(NSString *)response_type scope:(NSString *)scope state:(NSString *)state{

    NSString *url = [NSString stringWithFormat:@"http://api.chaoma.me/oauth2/authorize?client_id=%@&redirect_uri=%@&response_type=%@&state=%@&scope=%@",client_id,redirect_uri,response_type,state,scope];
    CMBLoginViewController *cmb = [[CMBLoginViewController alloc]init];
    cmb.url = url;
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:cmb];
    [nav.navigationBar setTitleTextAttributes:@{
                                                  NSForegroundColorAttributeName:[UIColor colorWithRed:249/255.0 green:95/255.0 blue:114/255.0 alpha:1.0]
                                                  }];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:nav animated:YES completion:nil];

}

+ (NSDictionary *)get_access_token:(NSString *)client_id client_secret:(NSString *)client_secret redirect_uri:(NSString *)redirect_uri grant_type:(NSString *)grant_type code:(NSString *)code{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:client_id,@"client_id",client_secret,@"client_secret",redirect_uri,@"redirect_uri",grant_type,@"grant_type",code,@"code",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"oauth2/token" DicContent:dic type:@"POST"];
    return  data;

}

@end
