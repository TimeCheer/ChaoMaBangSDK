//
//  CMBAddonBaby.h
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBAddonBaby : NSObject

/**
 宝宝信息列表
 @param access_token OAuth授权必填参数
 @param uid 当前登录用户ID
 */

+ (NSDictionary *)get_baby_list:(NSString *)access_token uid:(NSString *)uid;

/**
 一个宝宝信息
 @param access_token OAuth授权必填参数
 @param uid 当前登录用户ID
 @param bid 宝宝编号ID
 */

+ (NSDictionary *)get_baby_one:(NSString *)access_token uid:(NSString *)uid bid:(NSString *)bid;

/**
 修改宝宝信息
 @param access_token OAuth授权必填参数
 @param uid 当前登录用户ID
 @param bid 宝宝编号ID
 @param baby_birthday 宝宝生日
 @param baby_nickname 宝宝姓名
 @param baby_sex 宝宝性别
 @param avatar 宝宝头像(base64编码)
 */

+ (NSDictionary *)edit_baby_info:(NSString *)access_token uid:(NSString *)uid bid:(NSString *)bid baby_birthday:(NSString *)baby_birthday baby_nickname:(NSString *)baby_nickname baby_sex:(NSString *)baby_sex avatar:(NSString *)avatar;

/**
 添加宝宝信息
 @param access_token OAuth授权必填参数
 @param uid 当前登录用户ID
 @param baby_birthday 宝宝生日
 @param baby_nickname 宝宝姓名
 @param baby_sex 宝宝性别
 @param avatar 宝宝头像(base64编码)
 */

+ (NSDictionary *)add_baby_info:(NSString *)access_token uid:(NSString *)uid baby_birthday:(NSString *)baby_birthday baby_nickname:(NSString *)baby_nickname baby_sex:(NSString *)baby_sex avatar:(NSString *)avatar;

@end
