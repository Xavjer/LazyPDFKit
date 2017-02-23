#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@class PDFKFont;

@interface PDFKFontCollection : NSObject {
	NSMutableDictionary *fonts;
	NSArray *names;
}

/* Initialize with a font collection dictionary */
- (id)initWithFontDictionary:(CGPDFDictionaryRef)dict;

/* Return the specified font */
- (PDFKFont *)fontNamed:(NSString *)fontName;

@property (nonatomic, weak, readonly) NSDictionary *fontsByName;

@property (nonatomic, readonly) NSArray *names;

@end
