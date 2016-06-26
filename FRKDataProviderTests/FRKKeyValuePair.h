//
// Created by Francois Courville on 2016-06-14.
// Copyright (c) 2016 Frankacy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FRKKeyValuePair : NSObject

@property (nonatomic, strong) id key;
@property (nonatomic, strong) id value;

+ (instancetype)newKeyValuePairWithKey:(id)key value:(id)value;

@end