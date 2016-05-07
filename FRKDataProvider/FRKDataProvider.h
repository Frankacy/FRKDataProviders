//
//  FRKDataProvider.h
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FRKDataProvider <NSObject>

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
- (void)loadDataWithCompletion:(void(^)())completion;

@end
