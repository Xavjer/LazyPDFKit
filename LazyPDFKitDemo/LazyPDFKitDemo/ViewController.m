//
//  ViewController.m
//  LazyPDFKitDemo
//
//  Created by Palanisamy Easwaramoorthy on 26/3/15.
//  Copyright (c) 2015 Lazyprogram. All rights reserved.
//

#import "ViewController.h"
#import <LazyPDFKit/LazyPDFKit.h>

@interface ViewController ()<LazyPDFViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)open:(id)sender {
    [self openLazyPDF];
}
- (void)openLazyPDF
{
    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)
    
    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];
    
    NSString *filePath = [pdfs lastObject]; assert(filePath != nil); // Path to first PDF file
    
    LazyPDFDocument *document = [LazyPDFDocument withDocumentFilePath:filePath password:phrase];
    
    if (document != nil) // Must have a valid LazyPDFDocument object in order to proceed with things
    {
        LazyPDFConfiguration *lpc = [[LazyPDFConfiguration alloc] init];
        lpc.object = document;
        
        lpc.showFlattenPDF = YES;
        lpc.showThumbsButton = YES;
        lpc.showBookmarkButton = YES;
        lpc.showEmailButton = YES;
        lpc.showPrintButton = YES;
        lpc.showExportButton = YES;
        
        lpc.showPencil = YES;
        lpc.showWriteText = YES;
        lpc.showMarkText = YES;
        lpc.showDrawLine = YES;
        lpc.showDrawRectangle = YES;
        lpc.showDrawCircle = YES;
        lpc.showDrawFilledCircle = YES;
        lpc.showErasor = YES;
        lpc.showPencilOptions = YES;
        lpc.showUndoDraw = YES;
        lpc.showRedoDraw = YES;
        lpc.showClear = YES;
        
        lpc.showPageCount = YES;
        lpc.showThumbsBar = YES;
        
        LazyPDFViewController *lazyPDFViewController = [[LazyPDFViewController alloc] initWithLazyPDFConfiguration:lpc];
        
        lazyPDFViewController.delegate = self; // Set the LazyPDFViewController delegate to self
        
#if (DEMO_VIEW_CONTROLLER_PUSH == TRUE)
        
        [self.navigationController pushViewController:lazyPDFViewController animated:YES];
        
#else // present in a modal view controller
        
        lazyPDFViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        lazyPDFViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
        [self presentViewController:lazyPDFViewController animated:YES completion:NULL];
        
#endif // DEMO_VIEW_CONTROLLER_PUSH
    }
    else // Log an error so that we know that something went wrong
    {
        NSLog(@"%s [LazyPDFDocument withDocumentFilePath:'%@' password:'%@'] failed.", __FUNCTION__, filePath, phrase);
    }
}

#pragma mark - LazyPDFViewControllerDelegate methods

- (void)dismissLazyPDFViewController:(LazyPDFViewController *)viewController
{
    // dismiss the modal view controller
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
