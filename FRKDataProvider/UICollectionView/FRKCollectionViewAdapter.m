//
//  FRKCollectionViewAdapter.m
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import "FRKCollectionViewAdapter.h"
#import "FRKCollectionViewDataPresenter.h"
#import "FRKDataProvider.h"

@interface FRKCollectionViewAdapter ()

@property(nonatomic, strong) id<FRKDataProvider> provider;
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

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    id item = [self.provider itemAtIndexPath:indexPath];
    return [self.presenter collectionView:collectionView
                              cellForItem:item
                              atIndexPath:indexPath];
}

@end