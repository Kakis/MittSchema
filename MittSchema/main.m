//
//  main.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DBConnectionService.h"
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
        
        
        ////////////////////////////////// Handling Students ///////////////////////////////////
        
        Student *student1 = [[Student alloc] initWithLastName:@"Hagfeldt"
                                                    firstName:@"Jens"
                                                       course:@"appdev"];
        
        Student *student2 = [[Student alloc] initWithLastName:@"Bergkvist"
                                                    firstName:@"Kristoffer"
                                                       course:@"appdev"];
        
        Student *student3 = [[Student alloc] initWithLastName:@"Sjöstrand"
                                                    firstName:@"Amelie"
                                                       course:@"appdev"];
        
        Student *student4 = [[Student alloc] initWithLastName:@"Nygård"
                                                    firstName:@"Stefan"
                                                       course:@"appdev"];
        
        StudentService *students = [[StudentService alloc] init];
        
        [students addStudent:student1];
        [students addStudent:student2];
        [students addStudent:student3];
        [students addStudent:student4];
        
    
        // Get a student from the couch database "students" //
        DBConnectionService *getStudent = [[DBConnectionService alloc] init];
        [getStudent getStudentWithID:@"0B8F6A43-59C0-49BC-8310-F803453A0A23" onCompletion:^(NSArray *getStudent) {
            
            for(id _id in getStudent) {
                NSLog(@"%@", [[NSString alloc] initWithData:_id
                                                   encoding:NSUTF8StringEncoding]);
                
            }
        }];
        
        
//        [students saveStudent:student1];
//        [students saveStudent:student2];
//        [students saveStudent:student3];
//        [students saveStudent:student4];
        
        
        //////////////////////////////////////////// Init of Courses ////////////////////////////////////////////
        
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
        
        Lesson *Appdev1 = [[Lesson alloc] initWithLessonName:@"appdev"
                                                  classroom:@"sal 32"
                                                    teacher:@"Tom"
                                                  lessonDay:@"monday"
                                                  startTime:@"09.00"
                                                    endTime:@"10.00"
                                                 assignment:@"read chapter: Collection classes"];
        
        Lesson *Appdev2 = [[Lesson alloc] initWithLessonName:@"appdev"
                                                  classroom:@"sal 24"
                                                    teacher:@"Anders"
                                                   lessonDay:@"tuesday"
                                                  startTime:@"09.00"
                                                    endTime:@"10.00"
                                                 assignment:@"read chapter: NSURLConnection"];
        
        Lesson *Appdev3 = [[Lesson alloc] initWithLessonName:@"appdev"
                                                   classroom:@"sal 56"
                                                     teacher:@"Tom"
                                                   lessonDay:@"friday"
                                                   startTime:@"09.00"
                                                     endTime:@"10.00"
                                                  assignment:@"read about: GitHub"];

        
        
        /////////////////////////////////////////////////  Logs //////////////////////////////////////////////////
        
        //NSLog(@"The %@ has password: [%@]",[admin userName],[admin password]);
        
        //[admin messageToStudent:student2 message:@"From week 16 we will use classroom 52."];
        //[admin messageToAllStudents:students message:@"Skolan stänger nu."];
        
//        puts("");
//        
//        [student1 logStudent];
//        [student1 dayAssignment];
//        
//        puts("");
//        
//        [student2 logStudent];
//        [student2 dayAssignment];
//        
//        puts("");
//        
//        [student3 logStudent];
//        [student3 dayAssignment];
//        
//        [Appdev1 writeMessage];
//        [Appdev2 writeMessage];
//        [Appdev3 writeMessage];
        
    }
    
//    NSRunLoop *loop = [NSRunLoop currentRunLoop];
//    [loop run];
    
    return 0;
}

