//
//  VCModel.h
//  TWApp
//
//  Created by line0 on 13-7-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

/*
 *主网络请求类，这里定义几个常用的网络请求。
 *完成后的解析部分需要根据项目需求自己进行更改和替换。
 */

#import <Foundation/Foundation.h>

//成功失败Blocks
typedef void (^TWFinishedBlock) (NSDictionary *data);
typedef void (^TWFailedBlock)   (NSString *error);

@interface TWNetworkRequest : NSObject

//网络请求方法，默认为POST
@property (copy, nonatomic) NSString *httpMethod;

//请求数据接口
- (void)requestDataWithParams:(NSDictionary *)params
                      forPath:(NSString *)path
                     finished:(TWFinishedBlock)finished
                       failed:(TWFailedBlock)failed;

- (void)requestDataWithParams:(NSDictionary *)params
                    withImage:(UIImage *)image
                     imageKey:(NSString *)imageKey
                    imageName:(NSString *)imageName
                      forPath:(NSString *)path
                     finished:(TWFinishedBlock)finished
                       failed:(TWFailedBlock)failed;


//下载文件,hostName为主站点名。
- (void)downloadFileWithFilePath:(NSString *)filePath
                        hostName:(NSString *)hostName
                      toSavePath:(NSString *)savePath
                        finished:(TWFinishedBlock)finished
                          failed:(TWFailedBlock)failed;

//上传文件，path为要上传的接口，fileKey为后台设定的关键字，fileName为自行设定的文件名。
- (void)upLoadFile:(NSData *)fileData
          hostName:(NSString *)hostName
              path:(NSString *)path
           fileKey:(NSString *)fileKey
          fileName:(NSString *)fileName
          finished:(TWFinishedBlock)finished
            failed:(TWFailedBlock)failed;

@end


