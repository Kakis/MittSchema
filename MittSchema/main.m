//
//  main.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentService.h"
#import "EnglishCourse.h"
#import "MathCourse.h"
#import "AppDevCourse.h"
#import "Student.h"
#import "Course.h"
#import "Admin.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        ///////////////////////////////////////////// Init of Admin //////////////////////////////////////////////
        
        Admin *admin = [[Admin alloc] initWithUserName:@"admin"
                                              password:@"superduperhemligt"];
        
        
        ////////////////////////////////// Init of Students in StudentService ///////////////////////////////////
        
        Student *student1 = [[Student alloc] initWithLastName:@"Hagfeldt"
                                                    firstName:@"Jens"
                                                       course:@"appdev"];
        
        Student *student2 = [[Student alloc] initWithLastName:@"Bergkvist"
                                                    firstName:@"Kristoffer"
                                                       course:@"appdev"];
        
        Student *student3 = [[Student alloc] initWithLastName:@"SjöstrandGereholt"
                                                    firstName:@"Amelie"
                                                       course:@"math"];
        
        Student *student4 = [[Student alloc] initWithLastName:@"Hemmingsson"
                                                    firstName:@"Joanna"
                                                       course:@"english"];
        
        StudentService *students = [[StudentService alloc] init];
        
        [students addStudent:student1];
        [students addStudent:student2];
        [students addStudent:student3];
        [students addStudent:student4];
        
        
        //////////////////////////////////////////// Init of Courses /////////////////////////////////////////////
        
        EnglishCourse *English = [[EnglishCourse alloc] initWithCourseName:@"english"
                                                     teacher:@"Tom"
                                                        time:@"2001-03-24"
                                                   classroom:@"sal 203"
                                                  assignment:@"chapter 3"
                                                     message:@"Exersizes to do: "];
        
        
        MathCourse *Math = [[MathCourse alloc] initWithCourseName:@"math"
                                                          teacher:@"Anders"
                                                             time:@"2001-03-24"
                                                        classroom:@"sal 405"
                                                       assignment:@"chapter 4"
                                                          message:@"Exersizes to do: "];
        
        AppDevCourse *Appdev = [[AppDevCourse alloc] initWithCourseName:@"appdev"
                                                    teacher:@"Anders"
                                                       time:@"2001-03-24"
                                                  classroom:@"sal 4120"
                                                 assignment:@"chapter 5"
                                                    message:@"Exersizes to do: "];
        
//        Course *Appdev = [[Course alloc] initWithCourseName:@"appdev"
//                                                    teacher:@"Anders"
//                                                       date:@"2001-03-24"
//                                                  classroom:@"sal 4120"
//                                                 assignment:@"chapter 5"
//                                                    message:@"Exersizes to do: "];
        
        
        /////////////////////////////////////////////////  Logs //////////////////////////////////////////////////
        
        NSLog(@"The %@ has password: [%@]",[admin userName],[admin password]);
        
        puts("");
        
        [student1 dayTasks];
        [English writeMessage];
        
        puts("");
        
        [student2 dayTasks];
        [Math writeMessage];
        
        puts("");
        
        [student3 dayTasks];
        [Appdev writeMessage];
        
        //puts("\n   removing a student   \n");
        //
        //[students removeStudent:student4 withId:@"8110212D-AF76-4945-A321-B21721A82873"];
        //NSLog(@"Student %@ %@ was removed", student4.firstName, student4.lastName);
        
    }
    return 0;
}

