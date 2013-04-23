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


#pragma mark Serializing to Json helper method
-(NSArray *) serializeCollectionToJson:(id) objects
{
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for(id<JsonFormat> object in objects)
    {
        [result addObject:[object jsonValue]];
    }
    return result;
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


//#pragma mark - Load all students
//
//-(void)loadStudent:(Student *)student
//{
//    //Initierar två NSMutableData att hålla/ta emot den student vi laddar ned
//    NSMutableData *data = [[NSMutableData alloc] init];
//    NSMutableData *receivedData = data;
//    
//    // Sätter adressen vi ska hämta ifrån till min databas
//    NSURL *url = [NSURL URLWithString:@"http://kakis.iriscouch.com/students"];
//    
//    // Skapar en request från vår url
//    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
//    
//    // Vi säger att vi vill få tillbaka json-värden med vår HTTP-förfrågan
//    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
//    
//    // Skapar ett response
//    NSURLResponse *response = [[NSURLResponse alloc] init];
//    [receivedData appendData:[NSURLConnection sendSynchronousRequest:request
//                                                   returningResponse:response
//                                                               error:nil]];
//    
//    // Skapar min NSURLConnection                         //ev ska det kanske vara delegate:nil
//    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//    [connection start];
//}

//-(void)loadStudent:(Student *)student
//{
//    
//}

//-(void) readFromFile:(NSString*) fileName
//{
//    NSData *studentsAsData = [NSData dataWithContentsOfFile:fileName];
//    
//    if(studentsAsData)
//    {
//        NSDictionary *studentsAsJson = [NSJSONSerialization JSONObjectWithData:studentsAsData
//                                                                       options:0
//                                                                         error:NULL];
//        for(NSDictionary *student in studentsAsJson[@"students"])
//        {
//            [self addStudent:[Student studentFromJson:student]];
//        }
//    }
//}


-(NSSet*) allStudents
{
    //Returns a set with students from all courses
    return [students[javaKey]setByAddingObjectsFromSet:students[appdevKey]];
}


@end
























