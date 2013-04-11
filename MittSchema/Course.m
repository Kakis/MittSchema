//
//  Course.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-08.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Course.h"

@implementation Course

-(id)init
{
    return[self initWithCourseName:@"" teacher:@"" date:@"" classroom:@"" assignment:@"" message:@""];
}

- (id)initWithCourseName:(NSString *)courseName
                 teacher:(NSString *)teacher
                    date:(NSString *)date
               classroom:(NSString *)classroom
              assignment:(NSString *)assignment
                 message:(NSString *)message
{
    self = [super init];
    
    if (self) {
        self.courseName = courseName;
        self.teacher = teacher;
        self.date = date;
        self.classroom = classroom;
        self.assignment = assignment;
        self.message = message;
        
        // Loop som går igenom våra course-Keys och lägger till studenter för varje kurs
    }
    return self;
}

//-(BOOL)writeThisDaysScheme
//{
//    NSLog(@"I %@ ska du läsa %@", self.courseName, self.dayScheme);
//}
//
//-(BOOL)writeThisWeeksScheme
//{
//    NSLog(@"I %@ ska du läsa %@", self.courseName, self.weekScheme);
//}

-(BOOL)writeMessage
{
    NSLog(@"%@ A new %@-assigniment from %@: %@ %@.", self.date, self.courseName, self.teacher, self.assignment, self.message);
    return YES;
}

//-(BOOL)writeThisWeeksTasks
//{
//    NSLog(@"I %@ ska du denna vecka läsa: %@",self.tasks, self.courseName);
//}


@end
