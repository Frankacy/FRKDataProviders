#import <Specta/Specta.h>
#import <OCHamcrest/OCHamcrest.h>
#import <OCMockito/OCMockito.h>
#import "FRKStaticListDataProvider.h"
#import "FRKKeyValuePair.h"

SpecBegin(FRKStaticListDataProvider)

    describe(@"FRKStaticListDataProvider", ^{
        __block FRKStaticListDataProvider *subject;
        __block NSArray *testData;
        __block NSDictionary *sharedSpecData;

        beforeAll(^{
            testData = @[ [NSObject new],
                    [NSObject new],
                    [NSObject new],
                    [NSObject new],
                    [NSObject new]];

            subject = [[FRKStaticListDataProvider alloc] initWithItems:testData];

            sharedSpecData = @{ @"subject" : subject,
                                @"data" : @[
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:0 inSection:0] value:testData[0]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:1 inSection:0] value:testData[1]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:2 inSection:0] value:testData[2]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:3 inSection:0] value:testData[3]]
                    ]
            };
        });

        beforeEach(^{
            subject = [[FRKStaticListDataProvider alloc] initWithItems:testData];
        });

        itShouldBehaveLike(@"FRKDataProvider", ^NSDictionary *{
            testData = @[ [NSObject new],
                    [NSObject new],
                    [NSObject new],
                    [NSObject new],
                    [NSObject new]];

            subject = [[FRKStaticListDataProvider alloc] initWithItems:testData];

            return @{ @"subject" : subject,
                      @"data" : @[
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:0 inSection:0] value:testData[0]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:1 inSection:0] value:testData[1]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:2 inSection:0] value:testData[2]],
                            [FRKKeyValuePair newKeyValuePairWithKey:[NSIndexPath indexPathForItem:3 inSection:0] value:testData[3]]]
            };
        });
    });

SpecEnd