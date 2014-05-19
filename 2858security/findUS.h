//
//  findUS.h
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface findUS : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate> {
    
}

@property (nonatomic,strong) IBOutlet MKMapView * myMap;

-(IBAction)returnToMainView:(id)sender;
-(IBAction)startNavigation:(id)sender;

@end
