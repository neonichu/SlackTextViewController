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

describe(@"SLKTextViewController input", ^{
    __block SLKTextViewControllerTest *controller;

    beforeEach(^{
        controller = [[SLKTextViewControllerTest alloc] initWithTableViewStyle:UITableViewStylePlain];
        controller.view.frame = [UIScreen mainScreen].bounds;
    });

    it(@"can become first responder", ^{
        expect(controller).toNot.beNil();

        [controller.textView becomeFirstResponder];

        expect(controller.textView).toNot.beNil();
        expect(controller.view).to.haveValidSnapshot();
    });
});

describe(@"SLKTextViewController initialization", ^{
    it(@"has to be subclassed", ^{
        expect(^{
            [SLKTextViewController new];
        }).to.raiseAny();
    });

    it(@"can be initialized with a table view style", ^{
        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithTableViewStyle:UITableViewStylePlain];
        controller.view.frame = [UIScreen mainScreen].bounds;

        expect(controller.tableView).toNot.beNil();
        expect(controller.view).to.haveValidSnapshot();
    });

    it(@"can be initialized with a collection view layout", ^{
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];

        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithCollectionViewLayout:layout];
        controller.view.frame = [UIScreen mainScreen].bounds;

        expect(controller.collectionView).toNot.beNil();
        expect(controller.view).to.haveValidSnapshot();
    });

    it(@"can be initialized with a scroll view", ^{
        UIScrollView *scrollView = [UIScrollView new];

        SLKTextViewControllerTest *controller = [[SLKTextViewControllerTest alloc] initWithScrollView:scrollView];
        controller.view.frame = [UIScreen mainScreen].bounds;

        expect(controller.scrollView).toNot.beNil();
        expect(controller.view).to.haveValidSnapshot();
    });

});

SpecEnd
