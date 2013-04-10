//
//  DetailViewController.m
//  123
//
//  Created by TOM on 4/10/13.
//  Copyright (c) 2013 TOM. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize photo = _photo;
@synthesize name = _name;
@synthesize age = _age;
@synthesize team = _team;

#pragma mark - Managing the detail item


- (void)configureView
{
    _photo.image = self.photo.image;
    _name.text = self.name.text;
    _age.text = self.age.text;
    _team.text = self.team.text;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Information", @"Information");
    }
    return self;
}
							
@end
