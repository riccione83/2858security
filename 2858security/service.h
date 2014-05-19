//
//  service.h
//  2858security
//
//  Created by Riccardo Rizzo on 03/05/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "services.h"

@interface service : UIViewController {
    IBOutlet UITextView *description;
    IBOutlet UIImageView *foto;
    
    NSString *desc1;
    NSString *desc2;
    NSString *desc3;
    NSString *desc0;
}

@property (nonatomic) NSInteger serviceSelected;

-(IBAction)returnToMainView:(id)sender;
-(void)generaDescrizioni;

@end
