//
//  THAnimator.h
//  CustomViewTransitions
//
//  Created by Workshop on 11/12/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface THAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresented) BOOL presenting;

@end
