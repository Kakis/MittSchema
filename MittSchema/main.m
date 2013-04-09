//
//  main.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-06.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudentService.h"
#import "Student.h"
#import "Course.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Student *student1 = [[Student alloc] initWithLastName:@"Hagfeldt" firstName:@"Jens" course:@"English"];
        Student *student2 = [[Student alloc] initWithLastName:@"SjöstrandGereholt" firstName:@"Amelie" course:@"Math"];
        
        Course *English = [[Course alloc] initWithCourseName:@"English" teacher:@"Tom" date:0 classroom:@"sal 203" tasks:@"read chater 3 trough 5"];
        
        Course *Math = [[Course alloc] initWithCourseName:@"Math" teacher:@"Tom" date:0 classroom:@"sal 203" tasks:@"read chapter 2 truogh 8"];
        
        [student1 dayTasks];
        [English writeThisDaysTasks];
        
        puts("");
        
        [student2 dayTasks];
        [Math writeThisDaysTasks];
        
    }
    return 0;
}

