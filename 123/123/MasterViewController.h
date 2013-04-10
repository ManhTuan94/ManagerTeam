//
//  MasterViewController.h
//  123
//
//  Created by TOM on 4/10/13.
//  Copyright (c) 2013 TOM. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController <UITableViewDataSource,UITextFieldDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
