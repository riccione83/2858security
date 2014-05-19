//
//  Utils.h
//  2858security
//
//  Created by Riccardo Rizzo on 10/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


#import "webBrowser.h"

@interface Utils : UIViewController{
    bool led;

    IBOutlet UIButton *ledBtn;

}


- (void)torchOnOff: (BOOL) onOff;
-(IBAction)setTorch:(id)sender;
-(IBAction)returnToMainView:(id)sender;


@property (weak, nonatomic) IBOutlet UIView *viewPreview;
@property (weak, nonatomic) IBOutlet UILabel *lblStatus;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *bbitemStart;

@end
