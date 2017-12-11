//
//  timeFormat.h
//  localTimeStringToUTCString
//
//  Created by Imai Hiroshi on 12/11/17.
//  Copyright © 2017 Imai Hiroshi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface timeFormat : NSObject

+(NSString*)localTimeStringToUTCString:(NSString*)localTimeString;
@end
