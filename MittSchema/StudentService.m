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



static NSString * const javaKey = @"java_key";
static NSString * const appdevKey = @"appdev_Key";



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


-(NSSet*) allStudents
{
    //Returns a set with students from all courses
    return [students[javaKey]setByAddingObjectsFromSet:students[appdevKey]];
}



#pragma mark - Serialize student to json

-(id)serializeStudentToJson:(id) object
{
    NSObject *result = [[NSObject alloc] init];
    result = [object jsonValue];
    return result;
}



#pragma mark - Save a student to couch.db

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



#pragma mark - Get a student from couch.db

-(void)getStudentWithID:(NSString *)_id onCompletion:(GetStudentResponce)getStudentResponce
{
    // Vi skapar en URL-pekare och tilldelar den en sträng med url'en till min databas students på iriscouch, matchat mot en students id
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://kakis.iriscouch.com/students/%@", _id]];
    
    // Vi skapar en NSMutableURLRequest, allokerar minnet och initerar den med url'en vi nyss skapade
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    // Vi säger att vi vill få tillbaka json-värden med vår HTTP-förfrågan
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    // Vi vill lägga en asynhron NSURLconection på kön och köra vårt block (^GetStudentResponce) som vi definierat i h-filen
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:queue
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               
                               // Vi serialiserar de data vi får tillbaka från json till ett student-objekt
                               // och sätter pekaren foundStudent att peka mot detta.
                               NSArray *foundStudent = @[data];
                               
                               // Vi kör det block vi skickade som argument.
                               // Och skickar det vi får tillbaka (callback).
                               getStudentResponce(foundStudent);
                           }];
    
}


@end
