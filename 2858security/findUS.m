//
//  findUS.m
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "findUS.h"

@interface findUS ()

@end

@implementation findUS

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    _myMap = [MKMapView alloc];
    
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myMap.mapType = MKMapTypeHybrid;
    _myMap.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _myMap.delegate = self;
    
    //Add 2858 position on map
    CLLocationCoordinate2D loc;
    
    loc.latitude=37.512324;
    loc.longitude=15.031796;
    float zoomLevel = 0.001;
    MKCoordinateRegion region = MKCoordinateRegionMake(loc, MKCoordinateSpanMake(zoomLevel,zoomLevel));
    
    [_myMap setRegion:[_myMap regionThatFits:region] animated:TRUE];
    
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    point.coordinate = loc;
    point.title = @"2858 Security S.r.l.";
    point.subtitle=@"C.so Carlo Marx, 57 - Misterbianco (CT)";
    
    [_myMap addAnnotation:point];
    [_myMap selectAnnotation:point animated:TRUE];

}

-(IBAction)startNavigation:(id)sender{
    
    CLLocationCoordinate2D loc;
    
    loc.latitude=37.512324;
    loc.longitude=15.031796;
    
    MKDirectionsRequest *request = [[MKDirectionsRequest alloc]init];
    
    request.source = [MKMapItem mapItemForCurrentLocation];
    
    MKPlacemark *destination = [[MKPlacemark alloc] initWithCoordinate:loc addressDictionary:nil];
    
    request.destination = [[MKMapItem alloc] initWithPlacemark:destination];
    
    request.transportType = MKDirectionsTransportTypeAutomobile;
    
     MKDirections *directions = [[MKDirections alloc] initWithRequest:request];
    [directions calculateDirectionsWithCompletionHandler:^(MKDirectionsResponse *response, NSError *error) {
        //Display direction
        if(response!=nil)
        [MKMapItem openMapsWithItems:@[response.source,response.destination] launchOptions:@{MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving}];
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)returnToMainView:(id)sender{
    [self dismissViewControllerAnimated:true completion:nil];
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
