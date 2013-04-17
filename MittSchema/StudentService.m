//
//  StudentService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "StudentService.h"
#import "Student+Json.h"
#import "Student.h"


static NSString * const javaKey = @"java_key";
static NSString * const appdevKey = @"appdev_Key";
static NSString * const savedStateFileName = @"/Users/Jens/Desktop/students.json";

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
        students = @{javaKey: [[NSMutableSet alloc] init],
                     appdevKey: [[NSMutableSet alloc] init]
                     };
    }
    return self;
}

-(BOOL)addStudent:(Student *)student
{
    if([student.course isEqualToString:@"java"]){
        [students[javaKey] addObject:student];
    } else {
        [students[appdevKey] addObject:student];
    }
    return YES;
}

#pragma mark Serializing to Json helper method

-(NSArray *) serializeCollectionToJson:(id) objects
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for(id<JsonFormat> object in objects){
        [result addObject:[object jsonValue]];
    }
    return result;
}


#pragma mark - Save and load
-(void) saveToFile:(NSString*) fileName
{
    NSDictionary *studentsAsJson = @{@"students" : [self serializeCollectionToJson:[self allStudents]]};
    
    NSData *studentsAsData = [NSJSONSerialization dataWithJSONObject:studentsAsJson
                                                             options:NSJSONWritingPrettyPrinted
                                                               error:NULL];
    
    [studentsAsData writeToFile:fileName atomically:YES];
}

//-(void) readFromFile:(NSString*) fileName
//{
//    
//}


-(NSSet*) allStudents
{
    //Returns a set with students from all courses
    return [students[javaKey]setByAddingObjectsFromSet:students[appdevKey]];
}


@end
























