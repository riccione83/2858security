//
//  report.h
//  2858security
//
//  Created by Riccardo Rizzo on 24/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface report : UIViewController <MFMailComposeViewControllerDelegate> {
    IBOutlet UITextField *name;
    IBOutlet UITextField *address;
    IBOutlet UITextField *company;
    IBOutlet UITextField *contact;
    IBOutlet UITextView *description;
}

-(IBAction)returnToMainView:(id)sender;
-(IBAction)sendTechnicalQuestion:(id)sender;

@end
