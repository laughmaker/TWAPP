

/*－－－－－－－－－－－－－－－－－－－－app的相关配置－－－－－－－－－－－－－－－－－－*/
/*---------------------------------相关值根据需要自行更改------------------------*/

#define kUMengKey       @""
#define kShareSDKKey    @""
#define kQZoneId        @""
#define kQZoneKey       @""


/*---------------------------------用户相关信息-------------------------------------*/

#define kUsername           @"usernameNew"
#define kUserNickname       @"userNicknameNew"
#define kUserPassword       @"userPassword"
#define kUserID             @"userID"
#define kUserToken          @"userToken"
#define kUserPortraitUrl    @"userPortraitUrl"
#define kUserEmail          @"userEmail"
#define kUserGender         @"userGender"
#define kUserSign           @"userSign"
#define kUserTelephone      @"userTelephone"
#define kUserStatus         @"userStatus"
#define kUserType           @"userType"
#define kUserOSPlatform     @"userOSPlatform"


/*---------------------------------程序相关常数-------------------------------------*/
//App Id、下载地址、评价地址
#define kAppId      @"593499239"
#define kAppUrl     [NSString stringWithFormat:@"https://itunes.apple.com/us/app/ling-hao-xian/id%@?ls=1&mt=8",kAppId]
#define kRateUrl    [NSString stringWithFormat:@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%@",kAppId]

#define kPlaceholderImage       [UIImage imageNamed:@"placeholderImage.png"]


/*---------------------------------程序全局通知-------------------------------------*/
//重新登录通知
#define kReLoginNotification    @"ReLoginNotification"


/*---------------------------------程序界面配置信息-------------------------------------*/

//设置app界面字体及颜色

#define kTitleFontLarge              [UIFont boldSystemFontOfSize:25]//一级标题字号
#define kTitleFontMiddle             [UIFont boldSystemFontOfSize:19]//二级标题字号
#define kTitleFontSmall              [UIFont boldSystemFontOfSize:16]//三级标题字号

#define kContentFontLarge            [UIFont systemFontOfSize:19]  //内容部分大字号
#define kContentFontMiddle           [UIFont systemFontOfSize:16]  //内容部分中字号
#define kContentFontSmall            [UIFont systemFontOfSize:13]  //内容部分小字号

//内容部分正常显示颜色和突出显示颜色
#define kContentColorNormal      [UIColor colorWithRed:57/255.0 green:32/255.0 blue:0/255.0 alpha:1]
#define kContentColorHighlight   [UIColor colorWithRed:0/255.0 green:191/255.0 blue:225/255.0 alpha:1]

//几个常用色彩
#define kGrayColor              [UIColor colorWithRed:192/255.0 green:192/255.0 blue:192/255.0 alpha:1]
#define kBlackColor             [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0 alpha:1]
#define kRedColor               [UIColor colorWithRed:255/255.0 green:110/255.0 blue:107/255.0 alpha:1]
#define kBlueColor              [UIColor colorWithRed:96/255.0 green:195/255.0 blue:202/255.0 alpha:1]
#define kClearColor             [UIColor clearColor]
#define kWhiteColor             [UIColor whiteColor]
#define kAppBgColor             [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1]
#define kMainColor              [UIColor colorWithRed:64/255.0 green:168/255.0 blue:174/255.0 alpha:1]


