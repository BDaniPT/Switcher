//
//  DivisionViewController.m
//  TheSwitcher_BrunoTavares
//
//  Created by Bruno Tavares on 13/03/17.
//  Copyright © 2017 Bruno Tavares. All rights reserved.
//

#import "DivisionViewController.h"

@interface DivisionViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *lightImageView;
@property (strong, nonatomic) IBOutlet UILabel *divisionDescriptionLabel;
@property (strong, nonatomic) IBOutlet UILabel *divisionStateLabel;

@end

@implementation DivisionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.divisionStateLabel.text = self.stateString;
    [self.lightImageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"light_image_%@", self.stateString]]];
    self.divisionDescriptionLabel.text = [NSString stringWithFormat:@"Your %@ light is", self.divisionName];
    self.title = self.divisionName;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
