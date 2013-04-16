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

-(id)initWithLessonName:(NSString *) lessonName
              classroom:(NSString *) classroom
                teacher:(NSString *) teacher
              startTime:(NSString *) startTime
                endTime:(NSString *) endTime
             assignment:(NSString *) assignment;

// -(BOOL)addLesson:(Student *)student : (Course *)course;

-(BOOL)writeMessage;


@end
