//
//  DBConnectionService.m
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-24.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import "DBConnectionService.h"
#import "StudentService.h"
#import "Student+Json.h"
#import "Student.h"

@implementation DBConnectionService
{
    NSOperationQueue *queue;
}

- (id)init
{
    self = [super init];
    if (self) {
        queue = [[NSOperationQueue alloc] init];
    }
    return self;
}


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
                               // och sätter pekaren fetchedStudent att peka mot detta.
                               NSArray *foundStudent = @[data];
                               
                               // Vi kör det block vi skickade som argument.
                               // Och skickar det vi får tillbaka (callback).
                               
                               getStudentResponce(foundStudent);
                           }];
    
}


@end
