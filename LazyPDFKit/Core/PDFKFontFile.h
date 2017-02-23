#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@interface PDFKFontFile : NSObject {
	NSData *data;
	NSString *text;
	size_t asciiTextLength;
	NSMutableDictionary *names;
}

+ (unichar)characterByName:(NSString *)name;

- (id)initWithContentsOfURL:(NSURL *)url;

- (id)initWithData:(NSData *)data;

- (NSString *)stringWithCode:(int)code;

@property (nonatomic, readonly) NSString *text;
@property (nonatomic, readonly) NSData *data;
@property (nonatomic, readonly) NSDictionary *names;
@end
