//
//  ViewController.m
//  2858security
//
//  Created by Riccardo Rizzo on 23/04/14.
//  Copyright (c) 2014 Riccardo Rizzo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) runSpinAnimationOnView:(UIView*)view duration:(CGFloat)duration rotations:(CGFloat)rotations repeat:(float)repeat;
{
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 /* full rotation*/ * rotations * duration ];
    rotationAnimation.duration = duration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = repeat;
    
    [view.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //_img2858.alpha = 0.0;
	// Do any additional setup after loading the view, typically from a nib.
    
        CABasicAnimation* rotationAnimation;
        rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
        rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 ];//] /* full rotation*/ * 360.0 * 2.0 ];
        rotationAnimation.duration = 2.0;
        rotationAnimation.cumulative = YES;
        rotationAnimation.repeatCount = HUGE_VALF;
    
    
    
      //  [_img2858.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];

    
}


-(void)viewDidAppear:(BOOL)animated {
    CABasicAnimation *fadeInAndOut = [CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeInAndOut.duration = 4.0;
    fadeInAndOut.autoreverses = NO;
    fadeInAndOut.fromValue = [NSNumber numberWithFloat:0.0];
    fadeInAndOut.toValue = [NSNumber numberWithFloat:1.0];
    fadeInAndOut.repeatCount = 1;
    fadeInAndOut.fillMode = kCAFillModeBoth;
    [_img2858.layer  addAnimation:fadeInAndOut forKey:@"myanimation"];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
