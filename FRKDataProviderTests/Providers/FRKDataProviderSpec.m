#import <Specta/Specta.h>
#import <OCHamcrest/OCHamcrest.h>
#import "FRKDataProvider.h"
#import "FRKKeyValuePair.h"

SharedExamplesBegin(FRKDataProvider)

sharedExamplesFor(@"FRKDataProvider", ^(NSDictionary *data) {
    __block id<FRKDataProvider> subject;
    __block NSArray<FRKKeyValuePair *> *testData;

    beforeEach(^{
        subject = data[@"subject"];
        testData = data[@"data"];
    });

    it(@"should call its completion handler after loading data", ^{
        __block BOOL wasCalled = NO;
        void (^completion)() = ^{
            wasCalled = YES;
        };
        assertWithTimeout(5, thatEventually(@(wasCalled)), isTrue());
        [subject loadDataWithCompletion:completion];
    });

    it(@"should return the correct object for index path", ^{
        for(FRKKeyValuePair *testDatum in testData) {
            assertThat([subject itemAtIndexPath:testDatum.key], is(testDatum.value));
        }
    });

    it(@"should return the correct index path for object", ^{
        for(FRKKeyValuePair *testDatum in testData) {
            assertThat([subject indexPathForItem:testDatum.value], is(testDatum.key));
        }
    });
});

SharedExamplesEnd
