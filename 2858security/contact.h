//
//  contact.h
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface contact : UIViewController <MFMailComposeViewControllerDelegate> {
    
}

-(IBAction)returnToMainView:(id)sender;
-(IBAction)contactByEmail:(id)sender;
-(IBAction)contactByPhone:(id)sender;

@end
