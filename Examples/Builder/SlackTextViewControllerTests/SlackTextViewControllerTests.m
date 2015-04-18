//
//  SlackTextViewControllerTests.m
//  SlackTextViewControllerTests
//
//  Created by Ignacio Romero Z. on 3/20/15.
//  Copyright (c) 2015 Slack. All rights reserved.
//

#import <Expecta/Expecta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import <Specta/Specta.h>
#import <SlackTextViewController/SLKTextViewController.h>

@interface SLKTextViewControllerTest : SLKTextViewController
@end

@implementation SLKTextViewControllerTest
@end

#pragma mark -

SpecBegin(SLKTextViewController)

describe(@"SLKTextViewController initialization", ^{
    it(@"has to be subclassed", ^{
        expect(^{
            [SLKTextViewController new];
        }).to.raiseAny();
    });

    it(@"can be initialized with a table view style", ^{
        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithTableViewStyle:UITableViewStylePlain];
        expect(controller.tableView).toNot.beNil();
    });

    it(@"can be initialized with a collection view layout", ^{
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithCollectionViewLayout:layout];
        expect(controller.collectionView).toNot.beNil();
    });

    it(@"can be initialized with a scroll view", ^{
        UIScrollView *scrollView = [UIScrollView new];
        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithScrollView:scrollView];
        expect(controller.scrollView).toNot.beNil();
    });

});

SpecEnd
