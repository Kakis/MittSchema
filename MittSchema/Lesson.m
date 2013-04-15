//
//  Lesson.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-15.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Lesson.h"

@implementation Lesson

-(BOOL)addLesson:(Student *)student : (Course *)course
{
    // Om du är admin med rätt lösenord får du sätta nedanstående... INTE ANNARS
    if (student.course == course.courseName){
        self.assignment = course.assignment;
    }
    return YES;
}

- (BOOL)setLessonPropertiesWithParameters:(NSString *)classroom :(NSString *)teacher :(NSString *)startTime :(NSString *)endTime :(NSString *)assignment :(NSString *)message
{
    [self.classroom ]
}


@end
