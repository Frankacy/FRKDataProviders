//
//  FRKTableViewAdapter.m
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import "FRKTableViewAdapter.h"
#import "FRKTableViewDataPresenter.h"
#import "FRKDataProvider.h"
#import "FRKSectionInfoProvider.h"

@interface FRKTableViewAdapter ()

@property(nonatomic, strong) id<FRKDataProvider, FRKSectionInfoProvider> provider;
@property(nonatomic, strong) id<FRKTableViewDataPresenter> presenter;

@end

@implementation FRKTableViewAdapter

- (instancetype)initWithProvider:(id<FRKDataProvider, FRKSectionInfoProvider>)provider
                       presenter:(id<FRKTableViewDataPresenter>)presenter {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _provider = provider;
    _presenter = presenter;
    
    return self;
}

- (void)loadDataWithCompletion:(void(^)())completion {
    [self.provider loadDataWithCompletion:completion];
}

- (void)registerCellsForTableView:(UITableView *)tableView {
    [self.presenter registerCellsForTableView:tableView];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.provider;
}

- (NSIndexPath *)indexPathForItem:(id)item {
    return [self.provider indexPathForItem:item];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.provider numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.provider numberOfItemsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self itemAtIndexPath:indexPath];
    return [self.presenter tableView:tableView cellForItem:item atIndexPath:indexPath];
}

@end
