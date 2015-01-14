//
//  ThirdViewController.h
//  Mckinsey
//
//  Created by Rakesh Mahato on 11/01/15.
//  Copyright (c) 2015 Rakesh Mahato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController{
   
}
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* leadingSpaceConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* TrailingSpaceConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* topSpaceSuperViewConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* MarginSpaceConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* heightContraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* widthConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* centreButterflyConstraint;
@property(nonatomic,strong) IBOutlet NSLayoutConstraint* centreLabelConstraint;
@end
