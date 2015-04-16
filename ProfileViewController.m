//
//  ProfileViewController.m
//  UINavigationAndButtons
//
//  Created by Daniel Kwiatkowski on 2015-04-16.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed: @"Profile_icon.png"];
    }
    return self;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [profileButton setImage:[UIImage imageNamed:@"profile_name"] forState:UIControlStateNormal];
    [profileButton setImage:[UIImage imageNamed:@"profile_name"] forState:UIControlStateHighlighted];
    [profileButton setTitle:@"Profile Image" forState:UIControlStateNormal];
    
    profileButton.frame = CGRectMake(15, 15, 200, 189);
    
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showZoomedProfile:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) showZoomedProfile:(UIButton *)sender
{
    //animation
//    UIButton *zoomedProfileButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    zoomedProfileButton.frame = CGRectMake(15, 15, 200, 189);
//    self.frame = CGRectMake(0.0f, 0.0f, 200.0f, 150.0f);
//    [UIView beginAnimations:@"Zoom" context:NULL];
//    [UIView setAnimationDuration:0.5];
//    self.frame = CGRectMake(0.0f, 0.0f, 1024.0f, 768.0f);
//    [UIView commitAnimations];
    NSLog(@"Zoomed in on Profile");
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
