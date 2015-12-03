//
//  CMBAddonBaby.m
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import "CMBAddonBaby.h"
#import "HttpProtocol.h"
@implementation CMBAddonBaby

+ (NSDictionary *)get_baby_list:(NSString *)access_token uid:(NSString *)uid{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/baby/baby/query" DicContent:dic type:@"POST"];
    return  data;
    
}

+ (NSDictionary *)get_baby_one:(NSString *)access_token uid:(NSString *)uid bid:(NSString *)bid{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",bid,@"bid",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/baby/baby/get" DicContent:dic type:@"POST"];
    return  data;
    
}

+ (NSDictionary *)edit_baby_info:(NSString *)access_token uid:(NSString *)uid bid:(NSString *)bid baby_birthday:(NSString *)baby_birthday baby_nickname:(NSString *)baby_nickname baby_sex:(NSString *)baby_sex avatar:(NSString *)avatar{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",bid,@"bid",baby_birthday,@"",baby_nickname,@"baby_nickname",baby_sex,@"baby_sex",avatar,"avatar",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/baby/baby/edit" DicContent:dic type:@"POST"];
    return  data;
    
}

+ (NSDictionary *)add_baby_info:(NSString *)access_token uid:(NSString *)uid baby_birthday:(NSString *)baby_birthday baby_nickname:(NSString *)baby_nickname baby_sex:(NSString *)baby_sex avatar:(NSString *)avatar{
    
    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",baby_birthday,@"",baby_nickname,@"baby_nickname",baby_sex,@"baby_sex",avatar,"avatar",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/baby/baby/add" DicContent:dic type:@"POST"];
    return  data;
    
}


@end
