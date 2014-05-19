//
//  services.h
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "service.h"

@interface services : UIViewController <UITableViewDataSource,UITableViewDelegate> {
   
    
    IBOutlet UITableView *tw;
    
    NSInteger rowSelected;
}

-(IBAction)returnToMainView:(id)sender;
-(IBAction)gotoWebSite:(id)sender;

@property (strong,nonatomic) NSArray *services;
@end
