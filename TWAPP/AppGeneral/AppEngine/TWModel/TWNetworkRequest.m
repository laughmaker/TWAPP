//
//  VCModel.m
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import "TWNetworkRequest.h"

@implementation TWNetworkRequest

- (id)init
{
    self = [super init];
    if (self)
    {
        self.httpMethod = @"POST";
    }
    return self;
}

- (void)requestDataWithParams:(NSDictionary *)params
                      forPath:(NSString *)path
                     finished:(TWFinishedBlock)finished
                       failed:(TWFailedBlock)failed
{
    [self requestDataWithParams:params
                      withImage:nil
                       imageKey:nil
                      imageName:nil
                        forPath:path
                       finished:finished
                         failed:failed];
}

- (void)requestDataWithParams:(NSDictionary *)params
                    withImage:(UIImage *)image
                     imageKey:(NSString *)imageKey
                    imageName:(NSString *)imageName
                      forPath:(NSString *)path
                     finished:(TWFinishedBlock)finished
                       failed:(TWFailedBlock)failed
{
    MKNetworkEngine *networkEngine = appDelegate().networkEngine;
    MKNetworkOperation *operation = [networkEngine operationWithPath:path
                                                              params:params
                                                          httpMethod:self.httpMethod];
    if (image)
    {
        NSData *imageData = UIImageJPEGRepresentation(image, 1);
        NSString *mimeType = [NSData contentTypeForImageData:imageData];
        [operation addData:imageData forKey:imageKey mimeType:mimeType fileName:imageName];
    }
    [operation addCompletionHandler:^(MKNetworkOperation *completedOperation)
     {
         NSData *data = [completedOperation.responseString dataUsingEncoding:NSUTF8StringEncoding];
         NSDictionary *resultDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];         
         if (completedOperation.HTTPStatusCode == 200)
         {
             if ([resultDict[@"code"] integerValue] == TWSucceed)
             {
                 finished(resultDict);
             }
             else if ([resultDict[@"code"] integerValue] == TWNeedLogin)
             {
                 failed(resultDict[@"msg"]);
                 [mNotificationCenter postNotificationName:kReLoginNotification object:nil];
             }
             else if ([resultDict[@"code"] integerValue] == TWNoData)
             {
                 failed(resultDict[@"msg"]);
             }
             else if ([resultDict[@"code"] integerValue] == TWFailed)
             {
                 failed(resultDict[@"msg"]);
             }
             else
             {
                 failed(resultDict[@"msg"]);
             }
         }
         else
         {
             failed(resultDict[@"msg"]);
         }
     }
                       errorHandler:^(MKNetworkOperation *completedOperation, NSError *error)
     {
         mAlertView(@"网络错误", error.localizedDescription);
     }];
    [networkEngine enqueueOperation:operation];
}

- (void)downloadFileWithFilePath:(NSString *)filePath
                        hostName:(NSString *)hostName
                      toSavePath:(NSString *)savePath
                        finished:(TWFinishedBlock)finished
                          failed:(TWFailedBlock)failed
{
    MKNetworkEngine *networkEngine = [[MKNetworkEngine alloc] initWithHostName:hostName];
    NSOutputStream *outputStream = [NSOutputStream outputStreamToFileAtPath:savePath append:YES];
    
    MKNetworkOperation *operation = [networkEngine operationWithPath:filePath
                                                              params:nil
                                                          httpMethod:@"GET"];
    [operation addDownloadStream:outputStream];
    [operation addCompletionHandler:^(MKNetworkOperation *completedOperation)
     {
         if (completedOperation.HTTPStatusCode == 200)
         {
             finished(nil);
         }
         else
         {
             failed(nil);
         };
     }
                       errorHandler:^(MKNetworkOperation *completedOperation, NSError *error)
     {
         mAlertView(@"网络错误", error.localizedDescription);
     }];
    [networkEngine enqueueOperation:operation];
}

- (void)upLoadFile:(NSData *)fileData
          hostName:(NSString *)hostName
              path:(NSString *)path
           fileKey:(NSString *)fileKey
          fileName:(NSString *)fileName
          finished:(TWFinishedBlock)finished
            failed:(TWFailedBlock)failed

{
    MKNetworkEngine *networkEngine = [[MKNetworkEngine alloc] initWithHostName:hostName];
    MKNetworkOperation *operation = [networkEngine operationWithPath:path
                                                              params:nil
                                                          httpMethod:@"POST"];
    NSString *mimeType = [NSData contentTypeForImageData:fileData];
    [operation addData:fileData forKey:fileKey mimeType:mimeType fileName:fileName];
    [operation addCompletionHandler:^(MKNetworkOperation *completedOperation)
     {
         NSDictionary *resultDict = completedOperation.responseJSON;
         if (completedOperation.HTTPStatusCode == 200)
         {
             if ([resultDict[@"code"] integerValue] == TWSucceed)
             {
                 finished(nil);
             }
             else
             {
                 failed(nil);
             }
         }
         else
         {
             failed(nil);
         }
     }
                       errorHandler:^(MKNetworkOperation *completedOperation, NSError *error)
     {
         mAlertView(@"网络错误", error.localizedDescription);
     }];
    [networkEngine enqueueOperation:operation];
}


@end
