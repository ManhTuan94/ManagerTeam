//
//  MasterViewController.m
//  123
//
//  Created by TOM on 4/10/13.
//  Copyright (c) 2013 TOM. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSDictionary* dic;
    NSArray* names;
    NSArray* ages;
    NSArray* photos;
    NSArray* teams;
     DetailViewController* subView ;
}

@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Master", @"Master");
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"DreamTeam";
	NSString* path  = [[NSBundle mainBundle] pathForResource:@"team" ofType:@"plist"];
    dic = [[NSDictionary alloc] initWithContentsOfFile:path];
    names = [dic objectForKey:@"Name"];
    ages = [dic objectForKey:@"Age"];
    photos = [dic objectForKey:@"Photo"];
    teams = [dic objectForKey:@"Team"];
    subView = [DetailViewController  new];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.navigationController pushViewController:subView animated:YES];
    subView.photo.image = [UIImage imageNamed:[photos objectAtIndex:indexPath.row]];
    subView.name.text = [names objectAtIndex:indexPath.row];
    subView.age.text = [ages objectAtIndex:indexPath.row];
    subView.team.text = [teams objectAtIndex:indexPath.row];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return names.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DreamTeam"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DreamTeam"];
    }
    cell.textLabel.text =  [names objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed: [photos objectAtIndex:indexPath.row]];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
@end
