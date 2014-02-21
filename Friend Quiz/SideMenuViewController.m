//
//  SideMenuViewController.m
//  Friend Quiz
//
//  Created by Christian Retureta on 2014-02-13.
//  Copyright (c) 2014 Christian Retureta. All rights reserved.
//

#import "SideMenuViewController.h"
#import "SettingsViewController.h"
#import "MyProfileViewController.h"

@interface SideMenuViewController ()

@end

@implementation SideMenuViewController{
    
    
    NSArray *menuItems;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    menuItems = [[NSArray alloc]init];
    menuItems = @[@"Your Status", @"Settings", @"My Profile", @"My Awards", @"Help"];
	// Do any additional setup after loading the view.
    
   // [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellIdentifier"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [menuItems objectAtIndex:indexPath.row];
    
  //  static NSString *CellIdentifier = @"Cell";
    
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
    }
    
   // UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [menuItems objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
  
    if( [segue.identifier isEqualToString:@"sw_front"])
    {
        
        SettingsViewController *destViewController = [segue destinationViewController];
         
         
         }
    /*if(indexPath.row == 0)
    {
        
        
        //Implement the Settings
        
        NSLog(@"You chose the status cell");
    }
    
    else if (indexPath.row == 1 ){
        
        SettingsViewController *destView = (SettingsViewController *)segue.destinationViewController;
        
        NSLog(@"You chose the settings menu!!");
        
        [self performSegueWithIdentifier:@"settingsSegue" sender:self];
        
        
    }
     
     */
    /*
    if ([segue.identifier isEqualToString:@"settingsSegue"]){
        
        SettingsViewController *destViewController = (SettingsViewController *)segue.destinationViewController;
        
        
    }
    
     */
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
 //  [self performSegueWithIdentifier:@"settingsSegue" sender:self];
    
   // [self performSegueWithIdentifier:@"settingsSegue" sender:self];
    
    
    /*
    if(indexPath.row ==1 ){
        
        NSLog(@"You selected the Settings Row");
        
 
 //       SettingsViewController *svc = [[SettingsViewController alloc]init];
        
       // UIStoryboardSegue *segue = [[UIStoryboardSegue alloc]initWithIdentifier:nil  source:self destination:svc];
        
        
        
       // svc = (SettingsViewController *)segue.destinationViewController;
        
     //   [self presentViewController:svc animated:YES completion:nil];
        
     //   [self.navigationController pushViewController:svc animated:YES];
   
    }
    
    */
    
    
}
@end
