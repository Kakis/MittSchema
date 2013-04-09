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
    return[self initWithCourseName:@"" teacher:@"" date:0 classroom:@"" tasks:@""];
}

- (id)initWithCourseName:(NSString *)courseName
                 teacher:(NSString *)teacher
                    date:(NSDate *)date
               classroom:(NSString *)classroom
                   tasks:(NSString *)tasks
{
    self = [super init];
    
    if (self) {
        self.courseName = courseName;
        self.teacher = teacher;
        self.date = date;
        self.classroom = classroom;
        self.tasks = tasks;
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

-(BOOL)writeThisDaysTasks
{
    NSLog(@"Todays assigniments in %@ are: %@", self.courseName, self.tasks);
    return YES;
}

//-(BOOL)writeThisWeeksTasks
//{
//    NSLog(@"I %@ ska du denna vecka läsa: %@",self.tasks, self.courseName);
//}


@end
