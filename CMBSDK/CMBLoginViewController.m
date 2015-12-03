//
//  CMBLoginViewController.m
//  ChaoMaBangDemo
//
//  Created by Lance on 15/11/30.
//  Copyright © 2015年 Lance. All rights reserved.
//

#import "CMBLoginViewController.h"
#import "ItemButton.h"
@interface CMBLoginViewController ()<UIWebViewDelegate>

@end

@implementation CMBLoginViewController

- (void)viewWillAppear:(BOOL)animated{

    NSURL *url =[NSURL URLWithString:_url];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    NSLog(@"你好吗%@",_url);
    [_CMBWebView loadRequest:request];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登录";
    
    ItemButton *rightButton = [[ItemButton alloc]init];
    [rightButton addTarget:self action:@selector(cancel)
          forControlEvents:UIControlEventTouchUpInside];
    [rightButton setTitle:@"取消" forState:UIControlStateNormal];
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.leftBarButtonItem = item1;
    
    // Do any additional setup after loading the view from its nib.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{

    NSString * url = request.URL.absoluteString ;
    NSLog(@"再给我两分钟%@",url);
    if (![url containsString:@"code="]) {
        
//        [self dismissViewControllerAnimated:YES completion:nil];
        return YES;
        
    }else{
    
        NSRange rangeCode = [url rangeOfString:@"code="];
        NSRange rangeState = [url rangeOfString:@"state="];
        
        NSRange range = NSMakeRange(rangeCode.location+5,rangeState.location - rangeCode.location - 6);
        NSString *token = [url substringWithRange:range];
        NSLog(@"想问你，敢不敢记得我模样%@",token);
        
        NSDictionary *dict = [NSDictionary dictionaryWithObject:token forKey:@"token"];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"loginSuccessed" object:nil userInfo: dict];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
//
    }
    
    return YES;

}

- (void)cancel{

    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
