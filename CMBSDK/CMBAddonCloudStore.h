//
//  CMBAddonCloudStore.h
//  CMBSDK
//
//  Created by Lance on 15/12/3.
//  Copyright © 2015年 TianQing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMBAddonCloudStore : NSObject

/**
 用户对应店铺信息
 @param access_token OAuth授权必填参数
 @param uid 当前登录用户ID
 */

+ (NSDictionary *)get_store:(NSString *)access_token uid:(NSString *)uid;

@end
