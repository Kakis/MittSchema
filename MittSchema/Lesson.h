//
//  Lesson.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-15.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Course.h"

@interface Lesson : NSObject

@property (nonatomic, copy) NSString *lessonName;
@property (nonatomic, copy) NSString *classroom;
@property (nonatomic, copy) NSString *teacher;
@property (nonatomic, copy) NSString *startTime;
@property (nonatomic, copy) NSString *endTime;
@property (nonatomic, copy) NSString *assignment;
@property (nonatomic, copy) NSString *message;

-(BOOL)addLesson:(Student *)student : (Course *)course;

-(BOOL)setLessonPropertiesWithParameters:(NSString *) classroom : (NSString *) teacher: (NSString *) startTime: (NSString *) endTime : (NSString *) assignment : (NSString *) message;

@end
