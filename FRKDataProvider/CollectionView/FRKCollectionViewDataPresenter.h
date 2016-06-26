//
//  FRKCollectionViewDataPresenter.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FRKCollectionViewDataPresenter <NSObject>

- (void)registerCellsForCollectionView:(UICollectionView *)collectionView;

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                             cellForItem:(id)item
                             atIndexPath:(NSIndexPath *)indexPath;

@end
