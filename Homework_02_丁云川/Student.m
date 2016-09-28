//
//  Student.m
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import "Student.h"

@implementation Student
//name的setter()和getter()实现
- (void)setName:(NSString *)name;{
    _name = name;
}
- (NSString *)name;{
    return _name;
}
//gender的setter()和getter()实现
- (void)setGender:(NSString *)gender;{
    _gender = gender;
}
- (NSString *)gender;{
    return _gender;
}
//age的setter()和getter()实现
- (void)setAge:(NSInteger)age;{
    _age = age;
}
- (NSInteger)age;{
    return _age;
}
//code的setter()和getter()实现
- (void)setCode:(NSString *)code;{
    _code = code;
}
- (NSString *)code;{
    return _code;
}
//height的setter()和getter()实现
- (void)setHeight:(double)height;{
    _height =height;
}
- (double)height;{
    return _height;
}
//自定义初始化方法
- (id)init{
    self = [super init];
    if (self) {
        _name = @"jim";
        _gender = @"man";
        _age = 22;
        _code = @"511023199511143879";
        _height = 170;
    }
    return self;
}
//自定义便利构造器方法
-(id)initWithName:(NSString *)name
           gender:(NSString *)gender
              age:(NSInteger)age
             code:(NSString *)code
           height:(double)height;
{
    self = [super init];
    if (self) {
        _name = name;
        _gender = gender;
        _age = age;
        _code = code;
        _height = height;
    }
    return self;
}

//1.3给学生类增加一个比较2名学生身高的方法，返回身高较高的那位；
+ (Student *)compareOfHeight:(Student *)student anotherStudent:(Student *)anotherStudent{
    Student *heigher = student.height > anotherStudent.height ? student : anotherStudent;
    return heigher;
}
//1.4添加一个学生的行为(方法)，打印输出该学生的爱好；
- (void)hobby;
{
    NSLog(@"%@'s hobby is basketball", _name);
}
//1.5重写description方法，打印该学生信息；
- (NSString *)description{
    NSString *string = [NSString stringWithFormat:@"name:%@,gender:%@,age:%ld,code:%@,height:%lf", _name, _gender, _age, _code, _height];
    return string;
}

//使老师与学生类能互相引用
-(void)setTeacher:(Teacher *)teacher{
    _teacher = teacher;
}
-(Teacher *)teacher{
    return _teacher;
    
}

@end
