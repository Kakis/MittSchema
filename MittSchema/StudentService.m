//
//  StudentService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "StudentService.h"

static NSString * const englishKey = @"english_key";
static NSString * const mathKey = @"math_key";
static NSString * const appdevKey = @"appdev_Key";

@implementation StudentService
{
    NSDictionary *students;
}

- (id)init
{
    return [self initWithStudents:@[]];
}

- (id)initWithStudents:(NSArray *)studentsToAdd
{
    self = [super init];
    
    if (self) {
        students = @{englishKey: [[NSMutableSet alloc] init],
                     mathKey: [[NSMutableSet alloc] init],
                     appdevKey: [[NSMutableSet alloc] init]
                     };
    }
    return self;
}

-(BOOL)addStudent:(Student *)student
{
    if([student.course isEqualToString:@"english"]){
        [students[englishKey] addObject:student];
        
    } else if ([student.course isEqualToString:@"math"]){
        [students[mathKey] addObject:student];
        
    } else {
        [students[appdevKey] addObject:student];
    }
    return YES;
}


@end
