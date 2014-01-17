//
//  NetworkAPI.h
//  Line0New
//
//  Created by line0 on 13-4-8.
//  Copyright (c) 2013年 makeLaugh. All rights reserved.
//

#import <Foundation/Foundation.h>


//网络状态返回码,按需定义
typedef enum
{
    TWSucceed            = 100,              //请求成功
    TWFailed             = 101,              //请求失败
    TWNeedLogin          = 103,              //需要重新登录
    TWNoData             = 104,              //没有数据
    
}TWStatusCode;

//操作系统平台
typedef enum
{
    TWWeb            = 0,
    TWAndroid        = 1,
    TWiOS            = 2,
    TWWindowsPhone   = 3,
    TWOther          = 4,
} TWOSPlatform;


//线上主站点地址
#define kHostSite               @""

//图片前缀地址
#define kImagePrex              @""

/*-----用户相关接口------*/
#define kLogin                  @"UserManage/login"
#define kRegister               @"UserManage/register"
#define kGetUserInfo            @"UserManage/getUserInfo"



