//
//  preventivo.h
//  2858security
//
//  Created by Riccardo Rizzo on 12/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface preventivo : UIViewController <MFMailComposeViewControllerDelegate,UIGestureRecognizerDelegate,UITextViewDelegate>{
    IBOutlet UIImageView *preventivoImage;
    MFMailComposeViewController *mc;
}


@property (strong, nonatomic) IBOutlet UITextField *numOfRoom;
@property (strong, nonatomic) IBOutlet UISwitch *onOffExtern;
@property (strong, nonatomic) IBOutlet UISwitch *impiantoPresente;
@property (strong, nonatomic) IBOutlet UITextView *description;
@property (strong, nonatomic) IBOutlet UIView *preventivoView;

-(IBAction)sendPreventivo:(id)sender;
-(IBAction)returnToMainView:(id)sender;
@end
