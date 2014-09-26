//
//  DNModeViewController.m
//  DayAndNight
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "DNModeViewController.h"

@interface DNModeViewController ()

@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl *dayOrNightControl;

@end

@implementation DNModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
 * IBAction that is called when the segmented control 
 * is changed. Night = 1, Day = 0
 */

- (IBAction)dayOrNight:(UISegmentedControl *)sender
{
    if ([sender selectedSegmentIndex] == 1)
    {
        [self.navigationController.navigationBar setBarTintColor:[UIColor grayColor]];
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        
        [self.dayOrNightControl setBackgroundColor:[UIColor blackColor]];
        
        [self.dayOrNightControl setTintColor:[UIColor grayColor]];
        
        self.textLabel.textColor = [UIColor grayColor];
        
        self.view.backgroundColor = [UIColor blackColor];
    }
    
    if ([sender selectedSegmentIndex] == 0)
    {
        [self.navigationController.navigationBar setBarTintColor:[UIColor yellowColor]];
        [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        
        [self.dayOrNightControl setBackgroundColor:[UIColor blueColor]];
        
        [self.dayOrNightControl setTintColor:[UIColor whiteColor]];
        
        self.textLabel.textColor = [UIColor whiteColor];
        
        self.view.backgroundColor = [UIColor blueColor];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor orangeColor]];
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    self.navigationItem.title = @"White Title";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
