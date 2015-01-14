//
//  ViewController.m
//  Mckinsey
//
//  Created by Rakesh Mahato on 09/01/15.
//  Copyright (c) 2015 Rakesh Mahato. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface ViewController ()
{
    ThirdViewController* thirdVC;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addChildToScrollView];
}

// add Third View controller to scrollview
-(void)addChildToScrollView{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     thirdVC = [storyboard instantiateViewControllerWithIdentifier:@"Third"];
    thirdVC.view.frame = CGRectMake(0, 0, self.scrlView.frame.size.width, self.scrlView.frame.size.height);
    [self.scrlView addSubview:thirdVC.view];
    // If the subviews are to be resized.
   //[self setConstraintsLayout];
}

-(void)setConstraintsLayout{
    thirdVC.widthConstraint.constant = 200;
    thirdVC.heightContraint.constant = 200;
    thirdVC.leadingSpaceConstraint.constant = 60;
    thirdVC.TrailingSpaceConstraint.constant = 70;
    thirdVC.MarginSpaceConstraint.constant = 50 ;
    thirdVC.centreButterflyConstraint.constant = 1;
    thirdVC.centreLabelConstraint.constant = 140;
    thirdVC.topSpaceSuperViewConstraint.constant = 160;
    [thirdVC updateViewConstraints];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Prepare for segue method is used to transfer data beween scenes.

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Second"]) {
        SecondViewController *destination =
        [segue destinationViewController];
        
        destination.detailedText = @"Arrived from Scene 1";
    }
   
}

-(IBAction)returned:(UIStoryboardSegue *)segue {
    _firstScreenLbl.text = @"Returned from Scene 2";
}
@end
