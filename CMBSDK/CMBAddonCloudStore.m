//
//  CMBAddonCloudStore.m
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import "CMBAddonCloudStore.h"
#import "HttpProtocol.h"
@implementation CMBAddonCloudStore

+ (NSDictionary *)get_store:(NSString *)access_token uid:(NSString *)uid{

    NSDictionary *dic=[[NSDictionary alloc] initWithObjectsAndKeys:access_token,@"access_token",uid,@"uid",nil];
    id data=[[HttpProtocol shardData] getHttpStart:@"addon/baby/baby/query" DicContent:dic type:@"POST"];
    return  data;

}

@end
