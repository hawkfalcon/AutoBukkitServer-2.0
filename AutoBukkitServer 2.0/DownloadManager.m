//
//  DownloadManager.m
//  AutoBukkitServer 2.0
//
//  Created by Jordyn newnham on 24/12/12.
//  Copyright (c) 2012 hawkfalcon. All rights reserved.
//

#import "DownloadManager.h"

@implementation DownloadManager

- (void)startDownloadingURL: (NSString*) url, sender
{
// Create the request.
NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]
                                            cachePolicy:NSURLRequestUseProtocolCachePolicy
                                        timeoutInterval:60.0];

// Create the connection with the request and start loading the data.
NSURLDownload  *theDownload = [[NSURLDownload alloc] initWithRequest:theRequest
                                                            delegate:self];
if (theDownload) {
    // Set the destination file.
    [theDownload setDestination:@"~/Desktop/BukkitServer" allowOverwrite:YES];
} else {
    // inform the user that the download failed.
}
}


- (void)download:(NSURLDownload *)download didFailWithError:(NSError *)error
{
    // Release the connection.
    //[download release]; // It is glitched, Gives me an error; This will cause a memory leak and will continue to chew resources, needs to have a fix asap!
    
    // Inform the user.
    NSLog(@"Download failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
}

- (void)downloadDidFinish:(NSURLDownload *)download
{
    // Release the connection.
    //[download release]; // It is glitched, Gives me an error; This will cause a memory leak and will continue to chew resources, needs to have a fix asap!
    
    // Do something with the data.
    
}

@end
