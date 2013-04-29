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

@property (nonatomic, copy, readonly) NSString *id;
@property (nonatomic, copy) NSString *rev;
@property (nonatomic, copy) NSString *lessonName;
@property (nonatomic, copy) NSString *classroom;
@property (nonatomic, copy) NSString *teacher;
@property (nonatomic, copy) NSString *lessonDay;
@property (nonatomic, copy) NSString *startTime;
@property (nonatomic, copy) NSString *endTime;
@property (nonatomic, copy) NSString *assignment;

-(id)initWithLessonName:(NSString *) lessonName
              classroom:(NSString *) classroom
                teacher:(NSString *) teacher
              lessonDay:(NSString *) lessonDay
              startTime:(NSString *) startTime
                endTime:(NSString *) endTime
             assignment:(NSString *) assignment;

-(BOOL)writeMessage;


@end
