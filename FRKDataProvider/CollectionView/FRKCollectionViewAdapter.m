//
//  FRKCollectionViewAdapter.m
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import "FRKCollectionViewAdapter.h"
#import "FRKCollectionViewDataPresenter.h"
#import "FRKSectionInfoProvider.h"

@interface FRKCollectionViewAdapter ()

@property(nonatomic, strong) id<FRKDataProvider, FRKSectionInfoProvider> provider;
@property(nonatomic, strong) id<FRKCollectionViewDataPresenter> presenter;

@end

@implementation FRKCollectionViewAdapter

- (instancetype)initWithProvider:(id<FRKDataProvider>)provider
                       presenter:(id<FRKCollectionViewDataPresenter>)presenter {
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

- (void)registerCellsForCollectionView:(UICollectionView *)collectionView {
    [self.presenter registerCellsForCollectionView:collectionView];
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return [self.provider itemAtIndexPath:indexPath];
}

- (NSIndexPath *)indexPathForItem:(id)item {
    return [self.provider indexPathForItem:item];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.provider numberOfSections];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.provider numberOfItemsInSection:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self.provider itemAtIndexPath:indexPath];
    return [self.presenter collectionView:collectionView
                              cellForItem:item
                              atIndexPath:indexPath];
}

@end
