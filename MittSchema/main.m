//
//  main.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentService.h"
#import "Lesson.h"
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
        
        Student *student3 = [[Student alloc] initWithLastName:@"Sjöstrand Gereholt"
                                                    firstName:@"Amelie"
                                                       course:@"appdev"];
        
        StudentService *students = [[StudentService alloc] init];
        
        [students addStudent:student1];
        [students addStudent:student2];
        [students addStudent:student3];
        
        [students saveToFile:@"/Users/Jens/Desktop/students.json"];
        
        
        //////////////////////////////////////////// Init of Courses /////////////////////////////////////////////
        
//        Course *Appdev = [[Course alloc] initWithCourseName:@"appdev"];
//        
//        Course *Math = [[Course alloc] initWithCourseName:@"math"];
//        
//        Course *English = [[Course alloc] initWithCourseName:@"english"];
//        
//        
//        CourseService *courses = [[CourseService alloc] init];
//        
//        [courses addCourse:Appdev];
//        [courses addCourse:Math];
//        [courses addCourse:English];
        
    
        //////////////////////////////////////////// Init of Lessons /////////////////////////////////////////////
        
        Lesson *Appdev1 = [[Lesson alloc] initWithLessonName:@"appdev1"
                                                  classroom:@"sal 32"
                                                    teacher:@"Tom"
                                                  lessonDay:@"monday"
                                                  startTime:@"09.00"
                                                    endTime:@"10.00"
                                                 assignment:@"read chapter: Collection classes"];
        
        Lesson *Appdev2 = [[Lesson alloc] initWithLessonName:@"appdev2"
                                                  classroom:@"sal 32"
                                                    teacher:@"Tom"
                                                   lessonDay:@"tuesday"
                                                  startTime:@"09.00"
                                                    endTime:@"10.00"
                                                 assignment:@"read chapter: NSURLConnection"];
        
        Lesson *Appdev3 = [[Lesson alloc] initWithLessonName:@"appdev3"
                                                   classroom:@"sal 32"
                                                     teacher:@"Tom"
                                                   lessonDay:@"friday"
                                                   startTime:@"09.00"
                                                     endTime:@"10.00"
                                                  assignment:@"read about: GitHub"];
        
//        Lesson *Math = [[Lesson alloc] initWithLessonName:@"math"
//                                                classroom:@"sal 41"
//                                                  teacher:@"Lennart"
//                                                startTime:@"09.00"
//                                                  endTime:@"10.00"
//                                               assignment:@"read chapter: Addition"];
//        
//        Lesson *English = [[Lesson alloc] initWithLessonName:@"english"
//                                                   classroom:@"sal 54"
//                                                     teacher:@"Tom"
//                                                   startTime:@"09.00"
//                                                     endTime:@"10.00"
//                                                  assignment:@"read chapter: The ride"];
        
        
        /////////////////////////////////////////////////  Logs //////////////////////////////////////////////////
        
        NSLog(@"The %@ has password: [%@]",[admin userName],[admin password]);
        
        [admin messageToStudent:student1 message:@"Från och med vecka 15 är vi sal 32."];
        //[admin messageToAllStudents:students message:@"Skolan stänger nu."];
        
        puts("");
        
        [student1 logStudent];
        [student1 dayAssignment];
        //[English writeMessage];
        
        puts("");
        
        [student2 logStudent];
        [student2 dayAssignment];
        //[Math writeMessage];
        
        puts("");
        
        [student3 logStudent];
        [student3 dayAssignment];
        
        [Appdev1 writeMessage];
        [Appdev2 writeMessage];
        [Appdev3 writeMessage];
        
        //puts("\n   removing a student   \n");
        //
        //[students removeStudent:student4 withId:@"8110212D-AF76-4945-A321-B21721A82873"];
        //NSLog(@"Student %@ %@ was removed", student4.firstName, student4.lastName);
        
    }
    return 0;
}

