//
//  FRKCollectionViewAdapter.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FRKDataProvider.h"

@protocol FRKCollectionViewDataPresenter;

@interface FRKCollectionViewAdapter : NSObject <UICollectionViewDataSource, FRKDataProvider>

- (instancetype)initWithProvider:(id<FRKDataProvider>)provider
                       presenter:(id<FRKCollectionViewDataPresenter>)presenter;

- (void)registerCellsForCollectionView:(UICollectionView *)collectionView;

@end
