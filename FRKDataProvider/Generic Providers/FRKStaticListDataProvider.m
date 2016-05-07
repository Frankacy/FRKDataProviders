//
//  FRKStaticListDataProvider.m
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import "FRKStaticListDataProvider.h"
#import <UIKit/UIKit.h>

@interface FRKStaticListDataProvider ()

@property(nonatomic, strong) NSArray *items;

@end

@implementation FRKStaticListDataProvider

- (instancetype)initWithItems:(NSArray *)items {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _items = items;
    
    return self;
}

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}

- (void)loadDataWithCompletion:(void (^)())completion {
    completion();
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.item];
}

@end
