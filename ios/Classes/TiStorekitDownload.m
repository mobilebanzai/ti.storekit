/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2010-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiStorekitDownload.h"
#import "TiStorekitModule.h"
#import "TiStorekitTransaction.h"

@implementation TiStorekitDownload

-(id)initWithDownload:(SKDownload*)download_ pageContext:(id<TiEvaluator>)context
{
    if (self = [super _initWithPageContext:context]) {
        download = [download_ retain];
    }
    return self;
}

-(void)_destroy
{
    RELEASE_TO_NIL(download);
    [super _destroy];
}

-(SKDownload*)download
{
    return download;
}

#pragma mark Utils

#define MAKE_READONLY_PROP(obj,name) \
-(id)name \
{\
    return [obj name];\
}\

#pragma mark Public APIs

MAKE_READONLY_PROP(download, contentIdentifier);
MAKE_READONLY_PROP(download, contentURL);
MAKE_READONLY_PROP(download, contentVersion);

-(id)contentLength
{
    return NUMLONGLONG([download contentLength]);
}

-(id)downloadState
{
    return NUMINT([download downloadState]);
}

-(id)error
{
    NSError *error = [download error];
    if (!error) {
        return nil;
    }
    return [TiStorekitModule descriptionFromError:error];
}

-(id)progress
{
    return NUMFLOAT([download progress]);
}

-(id)timeRemaining
{
    return NUMDOUBLE([download timeRemaining]/1000);
}

-(TiStorekitTransaction*)transaction
{
    return [[[TiStorekitTransaction alloc] initWithTransaction:[download transaction] pageContext:[self pageContext]] autorelease];
}

@end
