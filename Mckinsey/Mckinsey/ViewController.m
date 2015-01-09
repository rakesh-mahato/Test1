//
//  ViewController.m
//  Mckinsey
//
//  Created by Rakesh Mahato on 09/01/15.
//  Copyright (c) 2015 Rakesh Mahato. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Prepare for segue method is used to transfer data beween scenes.

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
   SecondViewController *destination =
    [segue destinationViewController];
    
    destination.detailedText = @"Arrived from Scene 1";
}

-(IBAction)returned:(UIStoryboardSegue *)segue {
    _firstScreenLbl.text = @"Returned from Scene 2";
}
@end
