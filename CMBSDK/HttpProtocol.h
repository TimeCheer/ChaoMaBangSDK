//
//  HttpProtocol.h
//  AdultShoppingMall
//  服务器请求
//  Created by jinbao on 14-4-28.
//  Copyright (c) 2014年 JIN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpProtocol : NSObject
+(HttpProtocol*)shardData;
-(id)getHttpStart:(NSString*)url DicContent:(NSDictionary*)parameterDic type:(NSString *)type;
@end
