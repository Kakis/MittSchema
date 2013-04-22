//
//  MittSchemaTests.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-18.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//


#import "MittSchemaTests.h"
#import "StudentService.h"
#import "Student.h"
#import "Scheme.h"
#import "Lesson.h"


static NSString * const javaKey = @"java_key";
static NSString * const appdevKey = @"appdev_Key";

static NSString * const mondayKey = @"monday_key";
static NSString * const tuesdayKey = @"tuesday_key";
static NSString * const wednesdayKey = @"wednesday_key";
static NSString * const thursdayKey = @"thursday_key";
static NSString * const fridayKey = @"friday_key";


@implementation MittSchemaTests
{
    Student *testStudent;
    NSDictionary *students;
    Lesson *testLesson;
    NSDictionary *lessons;
}

-(void)setUp
{
    testStudent = [[Student alloc] initWithLastName:@"Testarsson"
                                          firstName:@"Testy"
                                             course:@"appdev"];
    
    students = @{javaKey: [[NSMutableSet alloc] init],
                 appdevKey: [[NSMutableSet alloc] init]
                 };
    
    testLesson = [[Lesson alloc] initWithLessonName:@"appdev1"
                                          classroom:@"Sal 32"
                                            teacher:@"Tom"
                                          lessonDay:@"monday"
                                          startTime:@"08.00"
                                            endTime:@"09.00"
                                         assignment:@"read chapter 3"];
    
    lessons = @{mondayKey: [[NSMutableSet alloc] init],
                tuesdayKey: [[NSMutableSet alloc] init],
                wednesdayKey: [[NSMutableSet alloc] init],
                thursdayKey: [[NSMutableSet alloc] init],
                fridayKey: [[NSMutableSet alloc] init]
                };
}


-(void)tearDown
{
    testStudent = nil;
    students = nil;
    testLesson = nil;
    lessons = nil;
}

//-(void)testAddStudent
//{
//    BOOL addedStudent = [students add];
//    STAssertTrue(addedStudent, @"En student skulle lagts till.");
//}

//-(void)testAddLesson
//{
//    BOOL addedLesson = [lessons[mondayKey] addLesson:testLesson];
//    STAssertTrue(addedLesson, @"En lektion skullel lagts till.");
//}


@end







