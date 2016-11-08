//
//  LazyPDFConfiguration.h
//  LazyPDFKit
//
//  Created by Cédric Wyss on 08.11.16.
//  Copyright © 2016 Lazyprogram. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LazyPDFDocument.h"

@interface LazyPDFConfiguration : NSObject
//{
//    @public
//    LazyPDFDocument *object;
//}

//Required
@property (nonatomic, weak) LazyPDFDocument *object;

//In PDF
@property (nonatomic, assign) BOOL showFlattenPDF;

//In Topbar
@property (nonatomic, assign) BOOL showThumbsButton;
@property (nonatomic, assign) BOOL showBookmarkButton;
@property (nonatomic, assign) BOOL showEmailButton;
@property (nonatomic, assign) BOOL showPrintButton;
@property (nonatomic, assign) BOOL showExportButton;

//In Toolbar
@property (nonatomic, assign) BOOL showPencil;
@property (nonatomic, assign) BOOL showWriteText;
@property (nonatomic, assign) BOOL showMarkText;
@property (nonatomic, assign) BOOL showDrawLine;
@property (nonatomic, assign) BOOL showDrawRectangle;
@property (nonatomic, assign) BOOL showDrawCircle;
@property (nonatomic, assign) BOOL showDrawFilledCircle;
@property (nonatomic, assign) BOOL showErasor;
@property (nonatomic, assign) BOOL showPencilOptions;
@property (nonatomic, assign) BOOL showUndoDraw;
@property (nonatomic, assign) BOOL showRedoDraw;
@property (nonatomic, assign) BOOL showClear;

@property (nonatomic, assign) BOOL showPageCount;
@property (nonatomic, assign) BOOL showThumbsBar;
@end
