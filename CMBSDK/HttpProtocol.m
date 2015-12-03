
#import "HttpProtocol.h"

static HttpProtocol *httProtocol=nil;
@implementation HttpProtocol

+(HttpProtocol*)shardData{
    if(httProtocol==nil)
        httProtocol=[[super alloc]init];
    return httProtocol;
}



-(id)getHttpStart:(NSString*)url DicContent:(NSDictionary*)parameterDic type:(NSString *)type{


    
    NSURL *cmbURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@",@"http://api.chaoma.me/",url] ];
    
    NSMutableString *parmStr = [NSMutableString string];
    NSArray *keys = [parameterDic allKeys];
    for (int i = 0; i<keys.count; i++) {
        if (i==0) {
            [parmStr appendFormat:@"%@=%@",keys[i],[parameterDic objectForKey:keys[i]]];
        }else{
            [parmStr appendFormat:@"&%@=%@",keys[i],[parameterDic objectForKey:keys[i]]];
        }
    }
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:cmbURL];
    NSData *pramData = [parmStr dataUsingEncoding:NSUTF8StringEncoding];
    [request setHTTPBody:pramData];
    [request setHTTPMethod:type];
    
    // 创建同步链接
    
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *aString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    

    aString = [aString stringByReplacingOccurrencesOfString:@":null"withString:@":\"\""];
    
    NSError *error;
    if(nil!=aString){
        NSDictionary *responDic=[NSJSONSerialization JSONObjectWithData:[aString dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&error];
        NSLog(@"pilabala%@",aString);
        if(responDic.count>0){
            return responDic;
        }
    }
    return nil;

}

@end
