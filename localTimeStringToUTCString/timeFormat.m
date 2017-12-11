//
//  timeFormat.m
//  localTimeStringToUTCString
//
//  Created by Imai Hiroshi on 12/11/17.
//  Copyright © 2017 Imai Hiroshi. All rights reserved.
//

#import "timeFormat.h"

@implementation timeFormat


+(NSString*)localTimeStringToUTCString:(NSString*)localTimeString{
	
	//Formatの設定
	NSDateFormatter* format = [NSDateFormatter new];
	[format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	[format setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
	
	//NSDate形式に変換(NSDateは標準時で扱う)
	NSDate* date = [format dateFromString:localTimeString];
	
	//出力フォーマットの設定
	NSDateFormatter* utcformat = [NSDateFormatter new];
	[utcformat setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
	[utcformat setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"]];
	[utcformat setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];	//タイムゾーンをGMTから0時間ずらす→ずらさない。
	NSString* UTCStr = [utcformat stringFromDate:date];		//NSDate形式のデータを指定のフォーマットでString変換
	
	
	return UTCStr;
}


@end
