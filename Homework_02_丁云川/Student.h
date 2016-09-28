//
//  Student.h
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Teacher;//只能调用成员变量 类

@interface Student : NSObject
{
    //1、新创建一个Student类，该类包含几个成员变量（姓名 name，性别gender，年龄age，身份证号code，身高height）
    //成员变量
    //姓名
    NSString *_name;
    //性别
    NSString *_gender;
    //年龄
    NSInteger _age;
    //身份证号
    NSString *_code;
    //身高
    double _height;
    //老师
    Teacher *_teacher;
}
    //1.1给每个成员变量添加setter()和getter()方法；
//name的setter()和getter()声明
- (void)setName:(NSString *)name;
- (NSString *)name;
//gender的setter()和getter()声明
- (void)setGender:(NSString *)gender;
- (NSString *)gender;
//age的setter()和getter()声明
- (void)setAge:(NSInteger)age;
- (NSInteger)age;
//code的setter()和getter()声明
- (void)setCode:(NSString *)code;
- (NSString *)code;
//height的setter()和getter()声明
- (void)setHeight:(double)height;
- (double)height;

    //1.2添加自定义初始化方法和便利构造器方法；
-(id)initWithName:(NSString *)name
                     gender:(NSString *)gender
                        age:(NSInteger)age
                       code:(NSString *)code
                     height:(double)height;

+ (Student *)studentWithName:(NSString *)name
                      gender:(NSString *)gender
                         age:(NSInteger)age
                        code:(NSString *)code
                      height:(double)height;
    //1.3给学生类增加一个比较2名学生身高的方法，返回身高较高的那位；
+ (Student *)compareOfHeight:(Student *)student anotherStudent:(Student *)anotherStudent;
    //1.4添加一个学生的行为(方法)，打印输出该学生的爱好；
- (void)hobby;

//使老师与学生类能互相引用  声明
-(void)setTeacher:(Teacher *)teacher;
-(Teacher *)teacher;



@end
