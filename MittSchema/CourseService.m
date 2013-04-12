//
//  CourseService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-12.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "CourseService.h"

static NSString * const mathCourse = @"math_course";
static NSString * const appdevCourse = @"appdev_course";
static NSString * const englishCourse = @"english_course";

@implementation CourseService
{
    NSMutableArray *courses;
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

-(void)addCourse:(Course *)course
{
    [courses addObject:course];
}


@end
