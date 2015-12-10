//
//  UIXView.m
//  TestAFNetworking
//
//  Created by chen on 15/12/3.
//  Copyright © 2015年 ding. All rights reserved.
//

#import "SZXibView.h"
@interface SZXibView(){
    
}
@end
@implementation SZXibView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        if ([self.subviews count]==0) {
            SZXibView* view = [self loadXibView];
            view.frame = self.bounds;
            view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            self.proxyView = view;
            [self addSubview:view];
        }
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        SZXibView* view = [self loadXibView];
        view.frame = self.bounds;
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.proxyView = view;
        [self addSubview:view];
    }
    return self;
}

//- (nullable id) awakeAfterUsingCoder:(NSCoder *)aDecoder{
//    if ([self.subviews count]==0) {
//        SZXibView* view = [self loadXibView];
//        
//        [view setTranslatesAutoresizingMaskIntoConstraints:false];
//        id contraints = self.constraints;
//        [self removeConstraints:contraints];
//        [view addConstraints:contraints];
//        
//        view.proxyView = view;
//        return view;
//    }
//    return self;
//}

- (id)loadXibView{
    NSBundle* bundle = [NSBundle bundleForClass:[self class]];
    return [bundle loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][0];
}

@end
