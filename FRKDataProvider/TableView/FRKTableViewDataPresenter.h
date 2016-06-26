//
//  FRKTableViewDataPresenter.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FRKTableViewDataPresenter <NSObject>

- (void)registerCellsForTableView:(UITableView *)tableView;

- (UITableViewCell *)tableView:(UITableView *)tableView
                             cellForItem:(id)item
                             atIndexPath:(NSIndexPath *)indexPath;

@end
