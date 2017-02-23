#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <QuartzCore/QuartzCore.h>

@class PDFKRenderingState;

@interface PDFKSelection : NSObject

+ (PDFKSelection *)selectionWithState:(PDFKRenderingState *)state;

@property (nonatomic, readonly) CGRect frame;
@property (nonatomic, readonly) CGAffineTransform transform;

@property (nonatomic, copy) PDFKRenderingState *initialState;
@property (nonatomic, copy) PDFKRenderingState *finalState;

@property (nonatomic) NSUInteger foundLocation;

@end
