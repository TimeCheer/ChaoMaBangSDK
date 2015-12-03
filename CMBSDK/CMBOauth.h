//
//  HttpRequest.h
//  ChaoMaBangDemo
//
//  Created by Lance on 15/11/30.
//  Copyright © 2015年 Lance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HttpRequest : NSObject


/**
 请求用户授权Token
 @param client_id 申请应用时分配的AppKey
 @param redirect_uri 授权回调地址
 @param response_type 授权类型
 @param scope 申请scope权限所需参数
 @param state 分享内容的预览图像URL
 */

+ (void)login:(NSString *)client_id redirect_uri:(NSString *)redirect_uri response_type:(NSString *)response_type scope:(NSString *)scope state:(NSString *)state;

/**
 access_token接口
 @param client_id 申请应用时分配的AppKey
 @param redirect_uri 授权回调地址
 @param grant_type 授权类型
 @param code 申请scope权限所需参数
 @note oAuth2登陆后可请求
 */

+ (NSDictionary *)get_access_token:(NSString *)client_id client_secret:(NSString *)client_secret redirect_uri:(NSString *)redirect_uri grant_type:(NSString *)grant_type code:(NSString *)code;

@end
