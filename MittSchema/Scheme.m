//
//  Scheme.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "Scheme.h"

static NSString * const mondayKey = @"monday_key";
static NSString * const tuesdayKey = @"tuesday_key";
static NSString * const wednesdayKey = @"wednesday_key";
static NSString * const thursdayKey = @"thursday_key";
static NSString * const fridayKey = @"friday_key";

//static NSString * const firstLessonKey = @"first_lesson_key";
//static NSString * const tenBreakKey = @"ten_break_key";
//static NSString * const secondLessonKey = @"second_lesson_key";
//static NSString * const lunchBreakKey = @"lunch_break_key";
//static NSString * const thirdLessonKey = @"third_lesson_key";

@implementation Scheme
{
    NSDictionary *lessons;
//    NSDictionary *mondayScheme;
//    NSDictionary *tuesdayScheme;
//    NSDictionary *wednesdayScheme;
//    NSDictionary *thursdayScheme;
//    NSDictionary *fridayScheme;
}

- (id)init
{
    return [self initWithLessons:@[]];
}


- (id)initWithLessons:(NSArray *)lessonsToAdd
{
    self = [super init];
    
    if (self) {
        lessons = @{mondayKey: [[NSMutableSet alloc] init],
                    tuesdayKey: [[NSMutableSet alloc] init],
                    wednesdayKey: [[NSMutableSet alloc] init],
                    thursdayKey: [[NSMutableSet alloc] init],
                    fridayKey: [[NSMutableSet alloc] init]
                    };
    }
    return self;
}

-(BOOL)addLesson:(Lesson *)lesson
{
    if([lesson.lessonDay isEqualToString:@"monday"]){
        [lessons[mondayKey] addObject:lesson];
        
    } else if([lesson.lessonDay isEqualToString:@"tuesday"]){
        [lessons[tuesdayKey] addObject:lesson];
        
    } else if([lesson.lessonDay isEqualToString:@"wednesday"]){
        [lessons[wednesdayKey] addObject:lesson];
        
    } else if([lesson.lessonDay isEqualToString:@"thursday"]){
        [lessons[thursdayKey] addObject:lesson];
        
    } else if([lesson.lessonDay isEqualToString:@"friday"]){ 
        [lessons[fridayKey] addObject:lesson];
        
    } else {
        return NO;
        // Why does'nt nil work?
    }
    return YES;
}

//-(BOOL)addStudent:(Student *)student
//{
//    if([student.course isEqualToString:@"english"]){
//        [students[englishKey] addObject:student];
//        
//    } else if ([student.course isEqualToString:@"math"]){
//        [students[mathKey] addObject:student];
//        
//    } else {
//        [students[appdevKey] addObject:student];
//    }
//    return YES;
//}

//-(id)init
//{
//    return [self initWithWeekScheme:@[] monday:@{} tuesday:@{} wednesday:@{} thursday:@{} friday:@{}];
//}


//-(id)initWithWeekScheme:(NSArray *)weekScheme
//                 monday:(NSDictionary *)monday
//                tuesday:(NSDictionary *)tuesday
//              wednesday:(NSDictionary *)wednesday
//               thursday:(NSDictionary *)thursday
//                 friday:(NSDictionary *)friday
//{
//    self = [super init];
//    if (self) {
//        monday = @{firstLessonKey:[[NSMutableSet alloc] init],
//                   tenBreakKey:[[NSMutableSet alloc] init],
//                   secondLessonKey:[[NSMutableSet alloc] init],
//                   lunchBreakKey:[[NSMutableSet alloc] init],
//                   thirdLessonKey:[[NSMutableSet alloc] init]
//                   };
//        
//        tuesday = @{firstLessonKey:[[NSMutableSet alloc] init],
//                    tenBreakKey:[[NSMutableSet alloc] init],
//                    secondLessonKey:[[NSMutableSet alloc] init],
//                    lunchBreakKey:[[NSMutableSet alloc] init],
//                    thirdLessonKey:[[NSMutableSet alloc] init]
//                    };
//        
//        wednesday = @{firstLessonKey:[[NSMutableSet alloc] init],
//                    tenBreakKey:[[NSMutableSet alloc] init],
//                    secondLessonKey:[[NSMutableSet alloc] init],
//                    lunchBreakKey:[[NSMutableSet alloc] init],
//                    thirdLessonKey:[[NSMutableSet alloc] init]
//                    };
//        
//        thursday = @{firstLessonKey:[[NSMutableSet alloc] init],
//                    tenBreakKey:[[NSMutableSet alloc] init],
//                    secondLessonKey:[[NSMutableSet alloc] init],
//                    lunchBreakKey:[[NSMutableSet alloc] init],
//                    thirdLessonKey:[[NSMutableSet alloc] init]
//                    };
//        
//        friday = @{firstLessonKey:[[NSMutableSet alloc] init],
//                   tenBreakKey:[[NSMutableSet alloc] init],
//                   secondLessonKey:[[NSMutableSet alloc] init],
//                   lunchBreakKey:[[NSMutableSet alloc] init],
//                   thirdLessonKey:[[NSMutableSet alloc] init]
//                   };
//        
//    }
//    return self;
//}

//- (id)initWithDays:(NSArray *)weekdaysToAdd
//{
//    self = [super init];
//    
//    if (self) {
//        weekdaySchemes = @{mondayKey:[[NSDictionary alloc] init],
//                           tuesdayKey:[[NSDictionary alloc] init],
//                           wednesdayKey:[[NSDictionary alloc] init],
//                           thursdayKey:[[NSDictionary alloc] init],
//                           fridayKey:[[NSDictionary alloc] init]
//                     };
//    }
//    return self;
//}

@end
