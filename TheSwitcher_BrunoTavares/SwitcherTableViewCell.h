//
//  SwitcherTableViewCell.h
//  TheSwitcher_BrunoTavares
//
//  Created by Bruno Tavares on 13/03/17.
//  Copyright © 2017 Bruno Tavares. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitcherTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *divisionLabel;
@property (strong, nonatomic) IBOutlet UISwitch *divisionSwitch;

@end
