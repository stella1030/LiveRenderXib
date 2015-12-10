//
//  SZTextFieldXibView.h
//  ZT
//
//  Created by chen on 15/12/3.
//  Copyright © 2015年 上海证券有限责任公司. All rights reserved.
//

#import "SZXibView.h"
IB_DESIGNABLE
@interface SZTextFieldXibView : SZXibView

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (nonatomic) IBInspectable NSString* labelString;
@property (nonatomic) IBInspectable NSString*  placeholderString;
@property (nonatomic) IBInspectable BOOL readOnly;
@property (nonatomic) IBInspectable BOOL underline;

@end
