//
//  FavouritesViewController.m
//  UINavigationAndButtons
//
//  Created by Daniel Kwiatkowski on 2015-04-16.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//


#import "FavouritesViewController.h"

@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favourites";
        self.tabBarItem.image = [UIImage imageNamed:@"Favourite_icon.png"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo.jpg"]];
    imageView.contentMode = UIViewContentModeTop;
    imageView.frame = self.view.frame;
    
    [self.view addSubview:imageView];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(60, 300, 200, 44);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [self.view addSubview:profileButton];
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
}

-(void) showProfile:(UIButton*) sender {
    NSLog(@"Profile Showed");
}

-(void)didReceiveMemoryWarning {
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
