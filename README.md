# LazyPDFKit
An IOS PDF Framework written in Objective-C

![Screenshot1](/../master/Screenshots/Screenshot1.png?raw=true "Screenshot1")

#Features
* PDF annotation
* Free hand draw tool
* Insert text
* Highlight text
* Draw line
* Draw boxes and circle
* Undo, Redo and Clear
* Change Color, Size and Opacity
* Thumbnail View
* Print
* Bookmark
* Email PDF


#How to use it
Step 1 : Drag and Drop the LazyPDFKit.framework to your project

Step 2 : Enable 'Copy items if needed'

Step 3 : Add to General -> Embedded Binaries

Step 4 : Implement it

```
#import <LazyPDFKit/LazyPDFKit.h>

@interface ViewController ()<LazyPDFViewControllerDelegate>

@end

@implementation ViewController

- (IBAction)open:(id)sender {
    [self openLazyPDF];
}
- (void)openLazyPDF
{
    NSString *phrase = nil; // Document password (for unlocking most encrypted PDF files)

    NSArray *pdfs = [[NSBundle mainBundle] pathsForResourcesOfType:@"pdf" inDirectory:nil];

    NSString *filePath = [pdfs firstObject]; assert(filePath != nil); // Path to first PDF file

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
```

Note : Check out the demo project if you have any doubt.

#Contact Info
Website: -

Email: -


#Acknowledgements
Lazy PDFKit : https://github.com/lazyprogram/LazyPDFKit
VFR Reader : https://github.com/vfr/Reader
