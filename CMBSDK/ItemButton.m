//
//  ItemButton.m
//  jinHuoBao
//
//  Created by Lance on 15/11/10.
//  Copyright © 2015年 Lance. All rights reserved.
//

#import "ItemButton.h"

@implementation ItemButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.titleLabel.font=[UIFont systemFontOfSize:17];
        [self setTitleColor:[UIColor colorWithRed:249/255.0 green:95/255.0 blue:114/255.0 alpha:1.0] forState:UIControlStateNormal];
        self.frame=CGRectMake(0, 0, 35, 20);
    }
    return self;
}

@end
