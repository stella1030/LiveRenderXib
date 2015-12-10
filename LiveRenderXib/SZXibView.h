//
//  XibView.h
//  TestAFNetworking
//
//  Created by chen on 15/12/3.
//  Copyright © 2015年 ding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZXibView : UIView
@property (weak, nonatomic) SZXibView* proxyView;
//- (void)setup;
- (id)loadXibView;
@end
