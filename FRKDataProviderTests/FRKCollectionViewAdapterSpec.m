//
//  FRKCollectionViewAdapterSpec.m
//  FRKDataProvider
//
//  Created by Francois Courville on 2016-04-23.
//  Copyright © 2016 Frankacy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <OCMockito/OCMockito.h>

#import "FRKDataProvider.h"
#import "FRKCollectionViewAdapter.h"
#import "FRKCollectionViewDataPresenter.h"

SpecBegin(FRKCollectionViewAdapter)

describe(@"FRKCollectionViewAdapter", ^{
    __block id<FRKCollectionViewDataPresenter> presenter;
    __block id<FRKDataProvider> provider;
    __block FRKCollectionViewAdapter *subject;
    
    beforeEach(^{
        provider = mockProtocol(@protocol(FRKDataProvider));
        presenter = mockProtocol(@protocol(FRKCollectionViewDataPresenter));
        subject = [[FRKCollectionViewAdapter alloc] initWithProvider:provider
                                                           presenter:presenter];
    });
    
    it(@"should be a UICollectionViewDataSouce", ^{
        expect(subject).to.conformTo(@protocol(UICollectionViewDataSource));
    });
    
    context(@"when fetching section count", ^{
        pending(@"forwards the call to the data provider", ^{
            failure(@"not done yet");
        });
        
        pending(@"returns the value from the data provider", ^{
            failure(@"not created yet");
        });
    });
    
    context(@"when fetching count for section", ^{
        pending(@"forwards the call to the data provider", ^{
        });
        
        pending(@"returns the value from the data provider", ^{
        });
    });
    
    context(@"when fetching presentation data", ^{
        __block NSObject *givenItem;
        __block UICollectionView *givenCollectionView;
        __block NSIndexPath *givenIndexPath;
        
        beforeEach(^{
            givenItem = [NSObject new];
            givenCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[UICollectionViewLayout new]];
            givenIndexPath = [NSIndexPath indexPathForItem:42 inSection:1337];
            
            [given([provider itemAtIndexPath:givenIndexPath]) willReturn:givenItem];
        });
        
        it(@"should forward cellForRow to data presenter", ^{
            [subject collectionView:givenCollectionView cellForItemAtIndexPath:givenIndexPath];
            
            [verify(presenter) collectionView:givenCollectionView
                                  cellForItem:givenItem
                                  atIndexPath:givenIndexPath];
        });
        
        it(@"should return the cell created by the presenter", ^{
            UICollectionViewCell *cell = [UICollectionViewCell new];
            [given([presenter collectionView:givenCollectionView cellForItem:givenItem atIndexPath:givenIndexPath]) willReturn:cell];
            
            expect([subject collectionView:givenCollectionView
                                 cellForItemAtIndexPath:givenIndexPath]).to.equal(cell);
        });
    });
});

SpecEnd