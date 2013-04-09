//
//  Course.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-08.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject;

@property(nonatomic, copy) NSString *courseName;
@property(nonatomic, copy) NSString *teacher;
@property(nonatomic, copy) NSDate *date;
@property(nonatomic, copy) NSString *classroom;
@property(nonatomic, copy) NSString *tasks;

-(id)initWithCourseName:(NSString *) courseName
                teacher:(NSString *) teacher
                   date:(NSDate *) date
              classroom:(NSString *) classroom
                  tasks:(NSString *) tasks;

//-(BOOL)writeThisDaysScheme;
//-(BOOL)writeThisWeeksScheme;
-(BOOL)writeThisDaysTasks;
//-(BOOL)writeThisWeeksTasks;

@end
