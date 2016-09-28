//
//  main.m
//  Homework_02_丁云川
//
//  Created by rimi on 16/1/26.
//  Copyright © 2016年 Ding YunChuan. All rights reserved.
/*
1、新创建一个Student类，该类包含几个成员变量（姓名 name，性别gender，年龄age，身份证号code，身高height）
1）给每个成员变量添加setter()和getter()方法；
2）添加自定义初始化方法和便利构造器方法；
3）给学生类增加一个比较2名学生身高的方法，返回身高较高的那位；
4）添加一个学生的行为(方法)，打印输出该学生的爱好；
5）重写description方法，打印该学生信息；
建立一个老师类，包含姓名、年龄、学生成员变量，实现其自定义初始化方法，并使其与学生类能互相引用，计算老师与学生年龄的差值；

2、编写动物世界中的继承树
➢	动物类具有身高，体重，颜色等特征，进食，行走等动作
➢	编写食肉动物和食草动物两个类，继承自动物类，重写父类的方法
➢	编写老虎，狮子等食肉动物类，找出应该继承的父类，并且重写父类的方法
➢	编写牛羊等食草动物，找出应该继承的父类，并且重写父类的方法

*/
#import <Foundation/Foundation.h>
#import "Student.h"
#import "Teacher.h"
#import "Animal.h"
#import "Carnivore.h"
#import "LionAndTiger.h"
#import "Herbivore.h"
#import "CattleAndSheep.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //自定义初始方法
        Student *student = [[Student alloc] init];
        Student *anotherStudent = [[Student alloc] initWithName:@"tears" gender:@"man" age:21 code:@"315534532413414" height:178];
    //给学生类增加一个比较2名学生身高的方法，返回身高较高的那位
        Student *heigher = [Student compareOfHeight:student anotherStudent:anotherStudent];
        NSLog(@"身高高的那位是%@", heigher.name);
    //添加一个学生的行为(方法)，打印输出该学生的爱好；
        [student hobby];
    //重写description方法，打印该学生信息；
        NSLog(@"student---%@", student);
        
    
        Teacher *teacher = [[Teacher alloc]init];
        teacher.age = 40;
    //使老师与学生类能互相引用
        teacher.student = student;
        student.teacher = teacher;
    //计算老师与学生年龄的差值
        NSInteger value = [teacher valueOfAge:anotherStudent];
        NSLog(@"老师与学生的年龄差：%ld",value);

    
        
        //动物
        Animal *aniaml = [[Animal alloc]init];
        [aniaml eat];
        [aniaml move];
        
        Carnivore *carnivore = [[Carnivore alloc]init];
        [carnivore eat];
        [carnivore move];
        
        Herbivore *herbivore = [[Herbivore alloc]init];
        [herbivore eat];
        [herbivore move];
        
        LionAndTiger *lion = [[LionAndTiger alloc]init];
        [lion eat];
        [lion move];
        
        CattleAndSheep *sheep = [[CattleAndSheep alloc]init];
        [sheep eat];
        [sheep move];
 
        

        NSLog(@"Hello, World!");
    }
    return 0;
}
