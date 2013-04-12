//
//  CourseService.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-12.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

@interface CourseService : NSObject

-(id)initWithCourses:(NSArray *)coursesToAdd;

-(BOOL)addCourse:(Course *)course;

@end
