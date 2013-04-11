//
//  Scheme.h
//  MittSchema
//
//  Created by Jens Hagfeldt on 2013-04-09.
//  Copyright (c) 2013 Jens Hagfeldt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scheme : NSObject

@property (nonatomic, copy) NSDictionary *mondayScheme;
@property (nonatomic, copy) NSDictionary *tuesdayScheme;
@property (nonatomic, copy) NSDictionary *wednesdayScheme;
@property (nonatomic, copy) NSDictionary *thursdayScheme;
@property (nonatomic, copy) NSDictionary *fridayScheme;

-(id)initWithWeekScheme:(NSArray *)weekScheme
                 monday:(NSDictionary *) monday
                 tuesday:(NSDictionary *) tuesday
                 wednesday:(NSDictionary *) wednesday
                 thursday:(NSDictionary *) thursday
                 friday:(NSDictionary *) friday;

@end
