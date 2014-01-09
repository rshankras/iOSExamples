//
//  ViewController.m
//  IOSExamples
//
//  Created by Ravi Shankar on 09/01/14.
//  Copyright (c) 2014 Ravi Shankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *cities;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Create the list of cities that will be displayed in the tableview
    
    cities = [[NSArray alloc] initWithObjects:@"Chennai",@"Mumbai",@"New Delhi", @"New York", @"London",@"Tokyo",@"Stockholm",@"Copenhagen",@"Manchester",@"Paris",nil];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [cities count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cities"];
    
    cell.textLabel.text = [cities objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cityName = [cities objectAtIndex:indexPath.row];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"City" message:cityName delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    
    [alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
