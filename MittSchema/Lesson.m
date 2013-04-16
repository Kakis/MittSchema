//
//  Lesson.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-15.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Lesson.h"

@implementation Lesson

- (id)init
{
    return [self initWithLessonName:@"" classroom:@"" teacher:@"" startTime:@"" endTime:@"" assignment:@""];
}

- (id)initWithLessonName:(NSString *)lessonName
               classroom:(NSString *)classroom
                 teacher:(NSString *)teacher
               startTime:(NSString *)startTime
                 endTime:(NSString *)endTime
              assignment:(NSString *)assignment
{
    self = [super init];
    
    if (self) {
        self.lessonName = lessonName;
        self.classroom = classroom;
        self.teacher = teacher;
        self.startTime = startTime;
        self.endTime = endTime;
        self.assignment = assignment;
    }
    return self;
}

//-(BOOL)addLesson:(Student *)student : (Course *)course
//{
//    // Om du är admin med rätt lösenord får du sätta nedanstående... INTE ANNARS
//    if (student.course == course.courseName){
//        self.assignment = course.assignment;
//    }
//    return YES;
//}

-(BOOL)writeMessage
{
    NSLog(@"Your %@-teacher %@ wants you to %@ until next lesson %@.", self.lessonName, self.teacher, self.assignment, self.startTime);
    return YES;
}


@end
