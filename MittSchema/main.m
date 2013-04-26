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
        
        
//        Admin *admin = [[Admin alloc] initWithUserName:@"admin"
//                                              password:@"superduperhemligt"];
        
        
        /////////////////////////////////////////// Init of Students /////////////////////////////////////////////
        
        
//        Student *student1 = [[Student alloc] initWithLastName:@"Hagfeldt"
//                                                    firstName:@"Jens"
//                                                       course:@"appdev"];
//
//        Student *student2 = [[Student alloc] initWithLastName:@"Bergkvist"
//                                                    firstName:@"Kristoffer"
//                                                       course:@"appdev"];
//        
//        Student *student3 = [[Student alloc] initWithLastName:@"Sjöstrand"
//                                                    firstName:@"Amelie"
//                                                       course:@"appdev"];
        
        
        
        /////////////////////////////////////////// Add Students /////////////////////////////////////////////
        
        
//        StudentService *students = [[StudentService alloc] init];
//        
//        [students addStudent:student1];
//        [students addStudent:student2];
//        [students addStudent:student3];
        
        
        
        /////////////////////////////////////// Get Students from DB /////////////////////////////////////////
        

//        DBConnectionService *getStudent1 = [[DBConnectionService alloc] init];
//        [getStudent1 getStudentWithID:@"0B8F6A43-59C0-49BC-8310-F803453A0A23" onCompletion:^(NSArray *getStudent) {
//            
//            for(id _id in getStudent) {
//                NSLog(@"%@", [[NSString alloc] initWithData:_id
//                                                   encoding:NSUTF8StringEncoding]);
//                
//            }
//        }];
//
//        
//        DBConnectionService *getStudent2 = [[DBConnectionService alloc] init];
//        [getStudent2 getStudentWithID:@"BE8E3A4A-AAAC-45FB-B320-0BDF1E57437F" onCompletion:^(NSArray *getStudent) {
//            
//            for(id _id in getStudent) {
//                NSLog(@"%@", [[NSString alloc] initWithData:_id
//                                                   encoding:NSUTF8StringEncoding]);
//                
//            }
//        }];
//        
//        
//        DBConnectionService *getStudent3 = [[DBConnectionService alloc] init];
//        [getStudent3 getStudentWithID:@"F0926164-4C8C-41EA-A5B4-CFECD3264CEC" onCompletion:^(NSArray *getStudent) {
//            
//            for(id _id in getStudent) {
//                NSLog(@"%@", [[NSString alloc] initWithData:_id
//                                                   encoding:NSUTF8StringEncoding]);
//                
//            }
//        }];
        
        
        
        ///////////////////////////////////////// Save Students to DB ///////////////////////////////////////////
        
        
//        [students saveStudent:student1];
//        [students saveStudent:student2];
//        [students saveStudent:student3];
        
        
        //////////////////////////////////////////// Init of Courses ////////////////////////////////////////////
        
        
//        Course *Appdev = [[Course alloc] initWithCourseName:@"appdev"];
//        
//        Course *Java = [[Course alloc] initWithCourseName:@"java"];
//        
//        
//        CourseService *courses = [[CourseService alloc] init];
//        
//        [courses addCourse:Appdev];
//        [courses addCourse:Java];
        
        
    
        /////////////////////////////////// Init of Lessons to Appdev-course ////////////////////////////////////
        
//        
//        Lesson *Appdev1 = [[Lesson alloc] initWithLessonName:@"appdev"
//                                                  classroom:@"sal 32"
//                                                    teacher:@"Anders"
//                                                  lessonDay:@"monday"
//                                                  startTime:@"09.00"
//                                                    endTime:@"10.00"
//                                                 assignment:@"read chapter: Collection classes"];
//        
//        Lesson *Appdev2 = [[Lesson alloc] initWithLessonName:@"appdev"
//                                                  classroom:@"sal 24"
//                                                    teacher:@"Anders"
//                                                   lessonDay:@"tuesday"
//                                                  startTime:@"09.00"
//                                                    endTime:@"10.00"
//                                                 assignment:@"read chapter: NSURLConnection"];
//        
//        Lesson *Appdev3 = [[Lesson alloc] initWithLessonName:@"appdev"
//                                                   classroom:@"sal 56"
//                                                     teacher:@"Anders"
//                                                   lessonDay:@"friday"
//                                                   startTime:@"09.00"
//                                                     endTime:@"10.00"
//                                                  assignment:@"read about: GitHub"];

        
        
        /////////////////////////////////////////////////  Logs //////////////////////////////////////////////////
        
        
        //[admin messageToStudent:student2 message:@"From week 16 we will use classroom 52."];
        
//        puts("");
//        
//        [student1 logStudentAttributes];
//
//
//        puts("");
//        
//        [student2 logStudentAttributes];
//        [student2 dayAssignment];
//        
//        puts("");
//        
//        [student3 logStudentAttributes];
//        [student3 dayAssignment];
//        
//        [Appdev1 writeMessage];
//        [Appdev2 writeMessage];
//        [Appdev3 writeMessage];
        
    }
    
    NSRunLoop *loop = [NSRunLoop currentRunLoop];
    [loop run];
    
    return 0;
}

