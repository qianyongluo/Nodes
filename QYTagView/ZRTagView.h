//
//  ZRTagView.h
//  QYTagView
//
//  Created by Adele on 15/11/18.
//  Copyright (c) 2015年 lqy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZRTag : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) CGFloat preferredMinWidth;//最小宽度
@property (nonatomic) CGFloat preferredMaxHeight;//最大高度
@property (nonatomic, strong) UIColor *bgColor;
@property (nonatomic, strong) UIColor *selectBgColor;
@property (nonatomic, strong) UIFont *font;
@property (nonatomic) CGFloat padding;//
@property (nonatomic) UIEdgeInsets insetsPadding;

@end

@interface ZRTagButton : UIButton
@property (nonatomic, readonly, strong) ZRTag *zr_tag;
+ (instancetype)buttonWithTag:(ZRTag *)tag;

@end

@interface ZRTagView : UIView

@property (nonatomic, strong) NSMutableArray *allTags;
@property (nonatomic, strong) NSMutableArray *buttonTags;

@property (nonatomic) NSInteger preferredMaxLine;//最大行数

- (void)addTag:(ZRTag *)tag;
- (void)setTags:(NSArray *)tags;

- (void)removeAllTags;


@end
