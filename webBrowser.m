//
//  webBrowser.m
//  2858security
//
//  Created by Riccardo Rizzo on 12/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "webBrowser.h"

@interface webBrowser ()

@end

@implementation webBrowser

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
    // Do any additional setup after loading the view.
    if(_webSelected!=nil)
    {
        [self gotoWebSite:_webSelected];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)gotoWebSite:(NSString *)web{
    NSString *urlAddress = web;
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //self.myWebView = tempWebview;
    [browser loadRequest:requestObj];
  //  [tempWebview release];
  //  browser.delegate=self;
}
@end
