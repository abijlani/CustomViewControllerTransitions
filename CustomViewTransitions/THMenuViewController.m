//
//  THMenuViewController.m
//  CustomViewTransitions
//
//  Created by Workshop on 11/12/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "THMenuViewController.h"

@interface THMenuViewController ()

@end

@implementation THMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (IBAction)cancelled:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
