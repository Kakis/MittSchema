//
//  StudentService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

// Min view som hittar alla studenters id'n är: http://kakis.iriscouch.com/_utils/database.html?students/_design/students/_view/studentId
//
// Min andra view som hittar alla studenternas första namn är: http://kakis.iriscouch.com/_utils/database.html?students/_design/students/_view/firstName
//
// Min tredje view som hittar vilken kurs alla studenter går är: http://kakis.iriscouch.com/_utils/database.html?students/_design/students/_view/course


#import "StudentService.h"
#import "Student+Json.h"
#import "Student.h"


static NSString * const javaKey = @"java_key";
static NSString * const appdevKey = @"appdev_Key";
static NSString * const savedStateFileName = @"/Users/Jens/Desktop/students.json";

@implementation StudentService
{
    NSDictionary *students;
    NSOperationQueue *queue;
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
        
        queue = [[NSOperationQueue alloc] init];
        
    }
    
    return self;
}


-(BOOL)addStudent:(Student *)student
{
    if([student.course isEqualToString:@"java"])
    {
        [students[javaKey] addObject:student];
    } else {
        [students[appdevKey] addObject:student];
    }
    return YES;
}


#pragma mark - Save a student

-(void) saveStudent:(Student *)student
{
    // Serialiserar en student till JSON-format
    NSDictionary *studentAsJson = [self serializeStudentToJson:student];
    
    // Skapar ett NSData-objekt som håller i en JSON-formaterad student
    NSData *studentAsData = [NSJSONSerialization dataWithJSONObject:studentAsJson
                                                            options:NSJSONWritingPrettyPrinted
                                                              error:NULL];
    
    // Sätter adressen till min databas som url
    NSURL *url = [NSURL URLWithString:@"http://kakis.iriscouch.com/students"];
    
    // Skapar en request från min url
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[url standardizedURL]];
    
    // Sätter HTTP metoden till POST
    [request setHTTPMethod:@"POST"];
    
    // Ställer i HTTP headern in att jag kommer att skicka värden av typen application/json 
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    // Lägger min student i HTTP bodyn
    [request setHTTPBody:studentAsData];
    
    // Skapar min NSURLConnection
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:nil];
    [connection start];
}


-(id)serializeStudentToJson:(id) object
{
    NSObject *result = [[NSObject alloc] init];
    result = [object jsonValue];
    return result;
}



//-(void)getFromDatabase:(NSString *)studentId
//          onCompletion:(AllStudentsResponse)allStudentsResponse {
//
// NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://kakis.iriscouch.com/students/%@", studentId]];
//
// NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
//
// [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//
// [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *error){
//                            
// //Parse response från Json till anpassade jobb objekt och lägger till det i en NSArray
// NSArray *readStudents = @[data];
//
// // Utför blocket som skickas som ett argument. Detta kommer att "ringa tillbaka" till uppringaren (aka callback)
// allStudentsResponse(readStudents);
//}



-(NSSet*) allStudents
{
    //Returns a set with students from all courses
    return [students[javaKey]setByAddingObjectsFromSet:students[appdevKey]];
}


@end
























