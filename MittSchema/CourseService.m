//
//  CourseService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-12.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "CourseService.h"

static NSString * const math = @"math";
static NSString * const appdev = @"appdev";
static NSString * const english = @"english";

@implementation CourseService
{
    NSArray *courses;
}

- (id)init
{
    return [self initWithCourses:@[]];
}

- (id)initWithCourses:(NSMutableArray *)coursesToAdd
{
    self = [super init];
    
    if (self) {
        courses = [[NSMutableArray alloc] init];
    }
    return self;
}

-(BOOL)addCourse:(Course *)course
{
   //
}

//-(BOOL)addStudent:(Student *)student
//{
//    if([student.course isEqualToString:@"english"]){
//        [students[englishKey] addObject:student];
//        
//    } else if ([student.course isEqualToString:@"math"]){
//        [students[mathKey] addObject:student];
//        
//    } else {
//        [students[appdevKey] addObject:student];
//    }
//    return YES;
//}

@end
