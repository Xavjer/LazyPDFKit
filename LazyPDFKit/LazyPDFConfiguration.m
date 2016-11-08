//
//  LazyPDFConfiguration.m
//  LazyPDFKit
//
//  Created by Cédric Wyss on 08.11.16.
//  Copyright © 2016 Lazyprogram. All rights reserved.
//

#import "LazyPDFConfiguration.h"

@implementation LazyPDFConfiguration

@synthesize object;

@synthesize showFlattenPDF;
@synthesize showThumbsButton;
@synthesize showBookmarkButton;
@synthesize showEmailButton;
@synthesize showPrintButton;
@synthesize showExportButton;
@synthesize showPencil;
@synthesize showWriteText;
@synthesize showMarkText;
@synthesize showDrawLine;
@synthesize showDrawRectangle;
@synthesize showDrawCircle;
@synthesize showDrawFilledCircle;
@synthesize showErasor;
@synthesize showPencilOptions;
@synthesize showUndoDraw;
@synthesize showRedoDraw;
@synthesize showClear;

@synthesize  showPageCount;
@synthesize  showThumbsBar;

-(instancetype)init {
    
    if (self = [super init]) {
        showFlattenPDF = YES;
        showThumbsButton = YES;
        showBookmarkButton = YES;
        showEmailButton = YES;
        showPrintButton = YES;
        showExportButton = YES;
        
        showPencil = YES;
        showWriteText = YES;
        showMarkText = YES;
        showDrawLine = YES;
        showDrawRectangle = YES;
        showDrawCircle = YES;
        showDrawFilledCircle = YES;
        showErasor = YES;
        showPencilOptions = YES;
        showUndoDraw = YES;
        showRedoDraw = YES;
        showClear = YES;
        
        showPageCount = YES;
        showThumbsBar = YES;
        
        return self;
    }
    
    return nil;
}

@end
