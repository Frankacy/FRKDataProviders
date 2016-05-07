//
//  FRKStaticListDataProvider.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FRKDataProvider.h"
#import "FRKSectionInfoProvider.h"

@interface FRKStaticListDataProvider : NSObject <FRKDataProvider, FRKSectionInfoProvider>

- (instancetype)initWithItems:(NSArray *)items;

@end
