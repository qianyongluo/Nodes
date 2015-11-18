//
//  ZRTagView.m
//  QYTagView
//
//  Created by Adele on 15/11/18.
//  Copyright (c) 2015年 lqy. All rights reserved.
//

#import "ZRTagView.h"

@implementation ZRTagView

@end


@implementation ZRTag

- (instancetype)init{
    self = [super init];
    if (self) {
        _insetsPadding = UIEdgeInsetsMake(6, 4, 6, 4);
        _titleColor = [UIColor blackColor];
        _borderWidth =  .5;
        _borderColor = [UIColor lightGrayColor];
        _cornerRadius = 2.f;
        _font = [UIFont systemFontOfSize:14.f];
    }
    return self;
}

- (UIColor *)bgColor{
    if (!_bgColor) {
        _bgColor = [UIColor clearColor];
    }
    return _bgColor;
}

- (UIColor *)titleColor{
    if (!_titleColor) {
        _titleColor = [UIColor clearColor];
    }
    return _titleColor;
}

- (UIColor *)selectBgColor{
    if (!_selectBgColor) {
        _selectBgColor = [UIColor clearColor];
    }
    return _selectBgColor;
}

- (UIColor *)borderColor{
    if (!_borderColor) {
        _borderColor = [UIColor clearColor];
    }
    return _borderColor;
}

- (UIFont *)font{
    if (!_font) {
        _font = [UIFont systemFontOfSize:14.f];
    }
    return _font;
}

@end

@interface ZRTagButton ()

@property (nonatomic, strong) ZRTag *zr_tag;

@end

@implementation ZRTagButton
+ (instancetype)buttonWithTag:(ZRTag *)tag{
    ZRTagButton *button = [[ZRTagButton alloc] init];
    button.zr_tag = tag;
    button.layer.cornerRadius = tag.cornerRadius;
    button.layer.borderColor = tag.borderColor.CGColor;
    button.layer.borderWidth = tag.borderWidth;
    [button setTitle:tag.title forState:UIControlStateNormal];
    [button setTitleColor:tag.titleColor forState:UIControlStateNormal];
    button.backgroundColor = tag.bgColor;
    button.titleLabel.font = tag.font;
    CGRect btnFrame;
    btnFrame.size.height = tag.preferredMaxHeight;
    CGSize size = [tag.title sizeWithAttributes:@{NSFontAttributeName:tag.font}];
    CGFloat pw = floorf(size.width) + tag.insetsPadding.left + tag.insetsPadding.right;
    //    CGFloat ph = floorf(size.height) + tag.insetsPadding.top + tag.insetsPadding.bottom;
    btnFrame.size.width = pw<tag.preferredMinWidth?tag.preferredMinWidth:pw;
    //    btnFrame.size.height = ph > tag.preferredMaxHeight?tag.preferredMaxHeight:ph;
    if (tag.preferredMaxHeight > 0) {
        btnFrame.size.height = tag.preferredMaxHeight;
    }
    button.frame = btnFrame;
    return button;
}
@end