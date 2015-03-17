//
//  KGHomeViewControllerTableViewController.m
//  KGWeibo
//
//  Created by mob on 15/3/16.
//  Copyright (c) 2015年 kengsir. All rights reserved.
//

#import "KGHomeViewController.h"
#import "UIBarButtonItem+Extension.h"

@interface KGHomeViewController ()

@end

@implementation KGHomeViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    


// 添加左边导航栏控制器按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_friendsearch"        hightlightedImage:@"navigationbar_friendsearch_highlighted" target:self selector:@selector(searchFriend)];
    
// 添加右边导航栏按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"navigationbar_pop" hightlightedImage:@"navigationbar_pop_highlighted" target:self selector:@selector(pop)];
}

// barbuttonItem (left) 方法
- (void)searchFriend
{
    KGWLog(@"searchFriend");
}

-(void)pop
{
     KGWLog(@"pop");
}

                                                                                                                                                                                    
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 0;
}



@end
