//
//  Animal.h
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
//动物类具有身高，体重，颜色等特征，进食，行走等动作
{
    double height;
    double weight;
    NSString *color;
}
- (void)eat;
- (void)move;
@end
