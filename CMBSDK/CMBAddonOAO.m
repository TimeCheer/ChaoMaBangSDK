//
//  CMBAddonOAO.m
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import "CMBAddonOAO.h"
#import "HttpProtocol.h"
@implementation CMBAddonOAO

+ (NSDictionary *)get_diststore_list:(NSString *)access_token diststore_id:(NSString *)diststore_id is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",is_use,@"is_use",page_index,@"page_index",page_size,@"page_size",keyword,@"keyword",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/diststoreCouponCode/query" DicContent:dic type:@"POST"];
    return  data;
    
}

+ (NSDictionary *)get_diststore_one:(NSString *)access_token diststore_id:(NSString *)diststore_id sn:(NSString *)sn id:(NSString *)dic_id{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",sn,@"sn",dic_id,@"id",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/diststoreCouponCode/get" DicContent:dic type:@"POST"];
    return  data;
    
}

+ (NSDictionary *)set_diststore_done:(NSString *)access_token diststore_id:(NSString *)diststore_id sn:(NSString *)sn id:(NSString *)dic_id{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",diststore_id,@"diststore_id",sn,@"sn",dic_id,@"id",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/diststoreCouponCode/setUsed" DicContent:dic type:@"POST"];
    return  data;

}

+ (NSDictionary *)get_diststore_list_done:(NSString *)access_token uid:(NSString *)uid is_use:(NSString *)is_use page_index:(NSString *)page_index page_size:(NSString *)page_size keyword:(NSString *)keyword{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",is_use,@"is_use",page_index,@"page_index",page_size,@"page_size",keyword,@"keyword",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/coupon/UserVoucher/query" DicContent:dic type:@"POST"];
    return  data;

}


@end
