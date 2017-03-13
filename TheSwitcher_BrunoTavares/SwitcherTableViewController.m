//
//  SwitcherTableViewController.m
//  TheSwitcher_BrunoTavares
//
//  Created by Bruno Tavares on 13/03/17.
//  Copyright © 2017 Bruno Tavares. All rights reserved.
//

#import "SwitcherTableViewController.h"
#import "SwitcherTableViewCell.h"
#import "DivisionViewController.h"

#define numberOfSections 1
#define cellReuseIdentifier @"switcherTableViewCell"

@interface SwitcherTableViewController ()

@property (strong, nonatomic) NSArray *divisions;

@end

@implementation SwitcherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.divisions = @[@"Kitchen", @"Living room", @"Master bedroom", @"Guest's bedroom"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return numberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.divisions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SwitcherTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseIdentifier forIndexPath:indexPath];
    
    cell.divisionLabel.text = [self.divisions objectAtIndex:indexPath.row];
    [cell.divisionSwitch setOn:NO];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 75;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 0.1;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([segue.identifier isEqualToString:@"showDivisionSegue"]) {
        
        SwitcherTableViewCell *selectedCell = (SwitcherTableViewCell *) sender;
        DivisionViewController *divisionViewController = [segue destinationViewController];
        
        if (selectedCell.divisionSwitch.on) {
            
            divisionViewController.stateString = @"ON";
            
        } else {
            
            divisionViewController.stateString = @"OFF";
        }
        
        divisionViewController.divisionName = selectedCell.divisionLabel.text;
    }
}


@end
