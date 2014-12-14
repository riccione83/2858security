//
//  webBrowser.h
//  2858security
//
//  Created by Riccardo Rizzo on 12/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webBrowser : UIViewController{
    IBOutlet UIWebView *browser;
}

-(IBAction)returnToMainView:(id)sender;
-(void)gotoWebSite:(NSString *)web;

@property (nonatomic) NSString* webSelected;
@end
