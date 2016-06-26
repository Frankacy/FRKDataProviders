//
// Created by Francois Courville on 2016-06-14.
// Copyright (c) 2016 Frankacy. All rights reserved.
//

#import "FRKKeyValuePair.h"


@implementation FRKKeyValuePair

+ (instancetype)newKeyValuePairWithKey:(id)key value:(id)value {
    FRKKeyValuePair *pair = [[FRKKeyValuePair alloc] init];
    pair.key = key;
    pair.value = value;

    return pair;
}

@end