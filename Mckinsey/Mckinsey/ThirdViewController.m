//
//  ThirdViewController.m
//  Mckinsey
//
//  Created by Rakesh Mahato on 11/01/15.
//  Copyright (c) 2015 Rakesh Mahato. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"Butterfly"];
    
    CGFloat xPos = self.view.frame.size.width/2 - image.size.width/2;
    CGFloat yPos = self.view.frame.size.height/2 - image.size.height/2;

    self.imageView.frame = CGRectMake(xPos, yPos, image.size.width, image.size.height);
    
    // Do any additional setup after loading the view.
    
}
-(void)viewDidAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
