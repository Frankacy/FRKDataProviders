//
//  FRKTableViewAdapter.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FRKDataProvider.h"

@protocol FRKSectionInfoProvider;
@protocol FRKTableViewDataPresenter;

@interface FRKTableViewAdapter : NSObject <UITableViewDataSource, FRKDataProvider>

- (instancetype)initWithProvider:(id<FRKDataProvider, FRKSectionInfoProvider>)provider
                       presenter:(id<FRKTableViewDataPresenter>)presenter;

@end
