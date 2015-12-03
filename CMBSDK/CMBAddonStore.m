//
//  CMBAddonStore.m
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import "CMBAddonStore.h"
#import "HttpProtocol.h"
@implementation CMBAddonStore

+ (NSDictionary *)get_diststore_list:(NSString *)access_token diststore_id:(NSString *)diststore_id is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",is_use,@"is_use",page_index,@"page_index",page_size,@"page_size",keyword,@"keyword",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"aaddon/coupon/diststoreVoucherCode/query" DicContent:dic type:@"POST"];
    return  data;

}

+ (NSDictionary *)get_diststore_one:(NSString *)access_token diststore_id:(NSString *)diststore_id voucher_code:(NSString *)voucher_code voucher_id:(NSString *)voucher_id{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",voucher_code,@"voucher_code",voucher_id,@"voucher_id",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/diststoreVoucherCode/get" DicContent:dic type:@"POST"];
    return  data;

}

+ (NSDictionary *)set_diststore_done:(NSString *)access_token diststore_id:(NSString *)diststore_id voucher_code:(NSString *)voucher_code voucher_id:(NSString *)voucher_id{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",voucher_code,@"voucher_code",voucher_id,@"voucher_id",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/diststoreVoucherCode/setState" DicContent:dic type:@"POST"];
    return  data;

}

+ (NSDictionary *)get_user_list:(NSString *)access_token uid:(NSString *)uid is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",is_use,@"is_use",page_index,@"page_index",page_size,@"page_size",keyword,@"keyword",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/UserVoucher/query" DicContent:dic type:@"POST"];
    return  data;
    
}

@end
