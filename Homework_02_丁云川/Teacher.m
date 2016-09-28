//
//  Teacher.m
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
//姓名
- (void)setName:(NSString *)name{
    _name = name;
    
}
- (NSString *)name{
    return _name;
    
}
//年龄
- (void)setAge:(NSInteger)age{
    _age = age;
}
- (NSInteger)age{
    return _age;
    
}
//求差
- (NSInteger)valueOfAge:(Student *)student{
    
    return labs(self.age - student.age);
    
}
//相互引用
-(void)setStudent:(Student *)student{
    _student = student;
    
}
- (Student *)student{
    return _student;
    
}





@end
