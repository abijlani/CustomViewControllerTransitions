//
//  THViewController.m
//  CustomViewTransitions
//
//  Created by Workshop on 11/12/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "THViewController.h"
#import "THMenuViewController.h"
#import "THAnimator.h"
#import "THDynamicAnimator.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ( [[segue identifier] isEqualToString:@"options"] ) {
        THMenuViewController *menuViewController =  (THMenuViewController*)segue.destinationViewController;
        menuViewController.transitioningDelegate = self;
        menuViewController.modalPresentationStyle = UIModalPresentationCustom;
        
    }
}

- (id<UIViewControllerAnimatedTransitioning>) animationControllerForPresentedController:(UIViewController *)presented
                                                                   presentingController:(UIViewController *)presenting
                                                                       sourceController:(UIViewController *)source {
    
    THDynamicAnimator *animator = [[THDynamicAnimator alloc] init];
    animator.presenting = YES;
    return animator;
    
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    THDynamicAnimator *animator = [THDynamicAnimator new];
    return animator;
}



@end
