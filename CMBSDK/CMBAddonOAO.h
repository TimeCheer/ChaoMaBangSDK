//
//  CMBAddonOAO.h
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBAddonOAO : NSObject

/**
 分销店铺被用户领取优惠券列表接口
 @param access_token OAuth授权必填参数
 @param diststore_id 指定分销门店ID
 @param is_use 门店优惠券状态(0-未用,1-已用，不传默认全部)
 @param page_index 分页中的当前页(默认第1页)
 @param page_size 分页时每页显示的最大条数(默认为10)
 @param keyword 搜索标题、券号、券号ID(默认为不搜索)
 */

+ (NSDictionary *)get_diststore_list:(NSString *)access_token diststore_id:(NSString *)diststore_id is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword;

/**
 一条用户领取的门店优惠券详情接口
 @param access_token OAuth授权必填参数
 @param diststore_id 指定分销门店ID
 @param sn 门店优惠券券号，若id未传，此参数必须传
 @param id 门店优惠券生成券号ID，若sn码未传，此参数必须传
 */

+ (NSDictionary *)get_diststore_one:(NSString *)access_token diststore_id:(NSString *)diststore_id sn:(NSString *)sn id:(NSString *)dic_id;

/**
 设置一条用户领取的门店优惠券为已使用
 @param access_token OAuth授权必填参数
 @param diststore_id 指定分销门店ID
 @param sn 门店优惠券券号，若id未传，此参数必须传
 @param id 门店优惠券生成券号ID，若sn码未传，此参数必须传
 */

+ (NSDictionary *)set_diststore_done:(NSString *)access_token diststore_id:(NSString *)diststore_id sn:(NSString *)sn id:(NSString *)dic_id;

/**
 指定用户已领门店优惠券列表
 @param access_token OAuth授权必填参数
 @param uid 用户ID
 @param is_use 门店优惠券状态(0-未用,1-已用，不传默认全部)
 @param page_index 分页中的当前页(默认第1页)
 @param page_size 分页时每页显示的最大条数(默认为10)
 @param keyword 搜索标题、券号、券号ID(默认为不搜索)
 */

+ (NSDictionary *)get_diststore_list_done:(NSString *)access_token uid:(NSString *)uid is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword;

@end
