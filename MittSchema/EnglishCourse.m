//
//  EnglishCourse.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-11.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "EnglishCourse.h"

@implementation EnglishCourse

-(id)init
{
    return[self initWithCourseName:@"" teacher:@"" time:@"" classroom:@"" assignment:@"" message:@""];
}

- (id)initWithCourseName:(NSString *)courseName
                 teacher:(NSString *)teacher
                    time:(NSString *)time
               classroom:(NSString *)classroom
              assignment:(NSString *)assignment
                 message:(NSString *)message
{
    self = [super init];
    
    if (self) {
        self.courseName = courseName;
        self.teacher = teacher;
        self.time = time;
        self.classroom = classroom;
        self.assignment = assignment;
        self.message = message;
    }
    return self;
}

//-(BOOL)writeThisDaysScheme
//{
//    NSLog(@"I %@ ska du läsa %@", self.courseName, self.dayScheme);
//}

//-(BOOL)writeThisWeeksScheme
//{
//    NSLog(@"I %@ ska du läsa %@", self.courseName, self.weekScheme);
//}

-(BOOL)writeMessage
{
    NSLog(@"%@ A new %@-assigniment from %@: %@ %@.", self.time, self.courseName, self.teacher, self.assignment, self.message);
    return YES;
}


@end
