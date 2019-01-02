//
// Created by majiancheng on 2018/12/29.
// Copyright (c) 2018 majiancheng. All rights reserved.
//

#import "MCPlayerNormalTouchView.h"
#import "MCPlayerKitDef.h"

NSString *const kMCTouchTapAction = @"kMCTouchTapAction";
NSString *const kMCTouchSwipeAction = @"kMCTouchSwipeAction";

@interface MCPlayerNormalTouchView ()

@property(nonatomic, strong) UITapGestureRecognizer *tapGestureRecognizer;
@property(nonatomic, strong) UISwipeGestureRecognizer *swipeGestureRecognizer;

@end

@implementation MCPlayerNormalTouchView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    [self addGestureRecognizer:self.tapGestureRecognizer];
    [self addGestureRecognizer:self.swipeGestureRecognizer];
}

- (void)tapClick {
    MCLog(@"[MCTouchView]tap");
    if (self.callBack) {
        self.callBack(kMCTouchTapAction, nil);
    }
}

- (void)swipe {
    MCLog(@"[MCTouchView]swip");
}

- (UITapGestureRecognizer *)tapGestureRecognizer {
    if (!_tapGestureRecognizer) {
        _tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick)];
    }
    return _tapGestureRecognizer;
}

- (UISwipeGestureRecognizer *)swipeGestureRecognizer {
    if (!_swipeGestureRecognizer) {
        _swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipe)];
        _swipeGestureRecognizer.direction = UISwipeGestureRecognizerDirectionLeft
                | UISwipeGestureRecognizerDirectionRight
                | UISwipeGestureRecognizerDirectionDown
                | UISwipeGestureRecognizerDirectionUp;
    }
    return _swipeGestureRecognizer;
}

@end