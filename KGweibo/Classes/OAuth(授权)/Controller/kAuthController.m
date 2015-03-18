//
//  kOAuthController.m
//  kweibo
//
//  Created by Kengsir on 2/28/15.
//  Copyright (c) 2015 Kengsir. All rights reserved.
//

#import "kAuthController.h"
#import "AFNetworking.h"
#import "kAccount.h"

@interface kAuthController () <UIWebViewDelegate>

@end

@implementation kAuthController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 添加webview
    UIWebView *webview = [[UIWebView alloc]init];
    
    webview.frame = self.view.bounds;
    webview.delegate=self;
    [self.view addSubview:webview];
    
    //加载授权页面
    NSURL *url = [NSURL URLWithString:@"https://api.weibo.com/oauth2/authorize?client_id=3291614084&redirect_uri=http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webview loadRequest:request];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - webview代理方法
/**
 *  当webview发送一个请求之前都会先调用这个方法，询问代理可不可以加载这个请求
 *
 *  @param webView         <#webView description#>
 *  @param request         <#request description#>
 *  @param prepareForSegue <#prepareForSegue description#>
 *  @param segue           <#segue description#>
 *  @param sender          <#sender description#>
 *
 *  @return YES ： 可以加载页面 ， NO ： 不可以加载
 */
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    // 请求的url路径
    NSString *urlStr = request.URL.absoluteString;
    
    // [urlStr rangeOfString:@"code="] 查找 code＝ 在 urlStr 中的范围
    NSRange range = [urlStr rangeOfString:@"code="];


//if(range.location != NSNotFound){
    if(range.length){
        
        //截取code＝ 后面的请求token（经过用户授权成功的）
        // range.location 为 code= 在字符串中的位置
        int loc = range.location + range.length;
        NSString * code = [urlStr substringFromIndex:loc];
        
        
        // 发送请求给新浪，通过code换取一个accesstoken
        [self accessTokenWithCode : code];
      
    }
    return YES;
}

/**
 *  通过code换取一个accesstoken
 *
 */
-(void)accessTokenWithCode :(NSString *)code
{
    
    // 创建请求管理对象
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    
    // 封装请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"client_id"] = @"3291614084";
    params[@"client_secret"] = @"9246612d2d50777ee9df8f739d95d458";
    params[@"grant_type"] = @"authorization_code";
    params[@"code"] =  code;
    params[@"redirect_uri"] = @"http://www.baidu.com";
    
    [mgr POST:@"https://api.weibo.com/oauth2/access_token" parameters:params
     
      success:^(AFHTTPRequestOperation *operation, id responseObject) {
          
          // 将字典信息转换成模型
          kAccount *account = [kAccount accountWithDict:responseObject];
          
          // 存储accessToken信息
          NSString *doc = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
          NSString *file = [doc stringByAppendingPathComponent:@"account.data"];
          [NSKeyedArchiver archiveRootObject:account toFile:file];
          
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
          NSLog(@"请求失败 %@",error);
      }];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
