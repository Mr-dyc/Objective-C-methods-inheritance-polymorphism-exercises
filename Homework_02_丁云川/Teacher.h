//
//  Teacher.h
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.

//建立一个老师类，包含姓名、年龄、学生成员变量，实现其自定义初始化方法，并使其与学生类能互相引用，计算老师与学生年龄的差值；

#import <Foundation/Foundation.h>
#import "Student.h"

@interface Teacher : NSObject
{
    NSString *_name;//姓名
    NSInteger _age;//年龄
    Student *_student;//相互引用
    
}
//相互引用
-(void)setStudent:(Student *)student;
- (Student *)student;
//姓名
- (void)setName:(NSString *)name;
- (NSString *)name;
//年龄
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
//求差
- (NSInteger)valueOfAge:(Student *)student;




@end
