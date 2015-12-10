//
//  SZTextFieldXibView.m
//  ZT
//
//  Created by chen on 15/12/3.
//  Copyright © 2015年 上海证券有限责任公司. All rights reserved.
//

#import "SZTextFieldXibView.h"

@interface SZTextFieldXibView()

@property (weak, nonatomic) IBOutlet UITextField *nameText;
@property (weak, nonatomic) IBOutlet UIView *underlineView;


@end

@implementation SZTextFieldXibView{
}

/*
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setReadOnly:(BOOL)readOnly{
    self.currentView.nameText.enabled = !readOnly;
}

- (void)setUnderline:(BOOL)underline{
    self.currentView.underlineView.hidden = !underline;
}

- (void)setLabelString:(NSString *)labelString{
    self.currentView.nameLabel.text = labelString;
}

- (void)setPlaceholderString:(NSString *)placeholderString{
    self.currentView.nameText.placeholder = placeholderString;
}

- (SZTextFieldXibView*)currentView{
    return (SZTextFieldXibView*)self.proxyView;
}



@end
