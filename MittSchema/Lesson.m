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
    return [self initWithLessonName:@""
                          classroom:@""
                            teacher:@""
                          lessonDay:@""
                          startTime:@""
                            endTime:@""
                         assignment:@""];
}

- (id)initWithLessonName:(NSString *)lessonName
               classroom:(NSString *)classroom
                 teacher:(NSString *)teacher
               lessonDay:(NSString *)lessonDay
               startTime:(NSString *)startTime
                 endTime:(NSString *)endTime
              assignment:(NSString *)assignment
{
    self = [super init];
    
    if (self) {
        self.lessonName = lessonName;
        self.classroom = classroom;
        self.teacher = teacher;
        self.lessonDay = lessonDay;
        self.startTime = startTime;
        self.endTime = endTime;
        self.assignment = assignment;
        self->_id = [[NSUUID UUID] UUIDString];
        self->_rev = [[NSUUID UUID] UUIDString];
    }
    return self;
}

-(NSUInteger)hash
{
    return 37 * [self.id hash];
}


-(BOOL)isEqual:(id)other
{
    // if other points to self - we are equal
    if(other == self){
        return YES;
    }
    
    // if other is not nil AND is member of same class as we (self)
    if(other && [other isMemberOfClass:[self class]]){
        // comapre studentId's
        return [[other id] isEqualToString:self.id];
    }
    // we are not equal
    return NO;
}


-(BOOL)writeMessage
{
    //NSLog(@"Your %@-teacher %@ wants you to %@ until next lesson %@.", self.lessonName, self.teacher, self.assignment, self.lessonDay);
    NSLog(@"At %@s %@-lesson with %@ in %@ kl: %@-%@ your assignment is to %@.", self.lessonDay, self.lessonName, self.teacher, self.classroom, self.startTime, self.endTime, self.assignment);
    return YES;
}


@end
