//
//  CMBAddonStore.h
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBAddonStore : NSObject

/**
 分销店铺被用户领取优惠券列表接口
 @param access_token OAuth授权必填参数
 @param diststore_id 当前操作供应商优惠券的门店ID
 @param voucher_state 供应店优惠券状态(0-未用,1-已用，不传默认全部)
 @param page_index 分页中的当前页(默认第1页)
 @param page_size 分页时每页显示的最大条数(默认为10)
 @param keyword 搜索标题、券号、券号ID(默认为不搜索)
 */

+ (NSDictionary *)get_diststore_list:(NSString *)access_token diststore_id:(NSString *)diststore_id is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword;

/**
 一条用户领取的供应商优惠券详情接口
 @param access_token OAuth授权必填参数
 @param diststore_id 指定分销门店ID
 @param voucher_code 供应商优惠券券号，若voucher_id未传，此参数必须传
 @param voucher_id 供应商优惠券生成券号ID，若voucher_code未传，此参数必须传

 */

+ (NSDictionary *)get_diststore_one:(NSString *)access_token diststore_id:(NSString *)diststore_id voucher_code:(NSString *)voucher_code voucher_id:(NSString *)voucher_id;

/**
 设置一条用户领取的供应商优惠券状态
 @param access_token OAuth授权必填参数
 @param diststore_id 指定分销门店ID
 @param voucher_code 供应商优惠券券号，若voucher_id未传，此参数必须传
 @param voucher_id 供应商优惠券生成券号ID，若voucher_code未传，此参数必须传
 */

+ (NSDictionary *)set_diststore_done:(NSString *)access_token diststore_id:(NSString *)diststore_id voucher_code:(NSString *)voucher_code voucher_id:(NSString *)voucher_id;

/**
 指定用户已领供应商优惠券列表
 @param access_token OAuth授权必填参数
 @param uid 用户ID
 @param is_use 门店优惠券状态(0-未用,1-已用，不传默认全部)
 @param page_index 分页中的当前页(默认第1页)
 @param page_size 分页时每页显示的最大条数(默认为10)
 @param keyword 搜索标题、券号、券号ID(默认为不搜索)
 */

+ (NSDictionary *)get_user_list:(NSString *)access_token uid:(NSString *)uid is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword;

@end
