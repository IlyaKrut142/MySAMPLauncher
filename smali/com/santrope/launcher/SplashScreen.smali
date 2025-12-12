.class public Lcom/santrope/launcher/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# static fields
.field public static final APP_INSTALL_REQUEST:I

.field private static final PERMISSIONS_REQUEST_WRITE_EXTERNAL_STORAGE:I

.field private static mFilesData:Lorg/json/JSONArray;

.field private static mLocalClientVersion:I

.field private static mLocalFilesVersion:I

.field private static mServerClientVersion:I

.field private static mServerFilesVersion:I


# instance fields
.field private URL_CLIENT:Ljava/lang/String;

.field private URL_FILES:Ljava/lang/String;

.field private URL_FULL_CACHE:Ljava/lang/String;

.field private URL_GAME_SETTINGS:Ljava/lang/String;

.field private URL_LITE_CACHE:Ljava/lang/String;

.field private URL_UPD:Ljava/lang/String;

.field private mButtons:Landroid/widget/RelativeLayout;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseVersionText:Landroid/widget/TextView;

.field private mInstallCancelledButton:Landroid/widget/Button;

.field private mInstallCancelledText:Landroid/widget/TextView;

.field private mInstallDownloadingCancelledButton:Landroid/widget/Button;

.field private mLoadProgressBar:Landroid/widget/ProgressBar;

.field private mLoadText:Landroid/widget/TextView;

.field private mProgressStatusText:Landroid/widget/TextView;

.field private mRequestPermission:Landroid/widget/Button;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/santrope/launcher/SplashScreen;->mFilesData:Lorg/json/JSONArray;

    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/santrope/launcher/SplashScreen;->mServerFilesVersion:I

    .line 66
    sput v0, Lcom/santrope/launcher/SplashScreen;->mServerClientVersion:I

    .line 67
    sput v0, Lcom/santrope/launcher/SplashScreen;->mLocalFilesVersion:I

    .line 68
    sput v0, Lcom/santrope/launcher/SplashScreen;->mLocalClientVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mChooseVersionText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mWarningText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledText:Landroid/widget/TextView;

    .line 57
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadProgressBar:Landroid/widget/ProgressBar;

    .line 58
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mButtons:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallDownloadingCancelledButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mRequestPermission:Landroid/widget/Button;

    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mCancelButton:Landroid/widget/Button;

    .line 70
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_CLIENT:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_FILES:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_LITE_CACHE:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_FULL_CACHE:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_UPD:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_GAME_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mChooseVersionText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mButtons:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_FILES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_FILES:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_GAME_SETTINGS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_GAME_SETTINGS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 49
    sget v0, Lcom/santrope/launcher/SplashScreen;->mServerClientVersion:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 49
    sput p0, Lcom/santrope/launcher/SplashScreen;->mServerClientVersion:I

    return p0
.end method

.method static synthetic access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_CLIENT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_CLIENT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_FULL_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_FULL_CACHE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallDownloadingCancelledButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_UPD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_UPD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700()Lorg/json/JSONArray;
    .locals 1

    .line 49
    sget-object v0, Lcom/santrope/launcher/SplashScreen;->mFilesData:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 49
    sput-object p0, Lcom/santrope/launcher/SplashScreen;->mFilesData:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 49
    sget v0, Lcom/santrope/launcher/SplashScreen;->mLocalFilesVersion:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 49
    sput p0, Lcom/santrope/launcher/SplashScreen;->mLocalFilesVersion:I

    return p0
.end method

.method static synthetic access$1900()I
    .locals 1

    .line 49
    sget v0, Lcom/santrope/launcher/SplashScreen;->mLocalClientVersion:I

    return v0
.end method

.method static synthetic access$1902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 49
    sput p0, Lcom/santrope/launcher/SplashScreen;->mLocalClientVersion:I

    return p0
.end method

.method static synthetic access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/santrope/launcher/SplashScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    invoke-direct {p0}, Lcom/santrope/launcher/SplashScreen;->appInstalledOrNot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mWarningText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;

    .line 49
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->URL_LITE_CACHE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SplashScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen;->URL_LITE_CACHE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900()I
    .locals 1

    .line 49
    sget v0, Lcom/santrope/launcher/SplashScreen;->mServerFilesVersion:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 49
    sput p0, Lcom/santrope/launcher/SplashScreen;->mServerFilesVersion:I

    return p0
.end method

.method private appInstalledOrNot()Z
    .locals 5

    .line 3105
    invoke-virtual {p0}, Lcom/santrope/launcher/SplashScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3106
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "com.rockstargames.gtasa"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3107
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3108
    return v2

    .line 3109
    :cond_0
    const/high16 v3, 0x10000

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 3110
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private stripUnderlines(Landroid/widget/TextView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 3137
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3138
    .local v0, "s":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 3139
    .local v1, "spans":[Landroid/text/style/URLSpan;
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 3140
    .local v5, "span":Landroid/text/style/URLSpan;
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3141
    .local v6, "start":I
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 3142
    .local v7, "end":I
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3143
    new-instance v8, Lcom/santrope/launcher/URLSpanNoUnderline;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/santrope/launcher/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 3144
    invoke-interface {v0, v5, v6, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3139
    .end local v5    # "span":Landroid/text/style/URLSpan;
    .end local v6    # "start":I
    .end local v7    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3146
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3147
    return-void
.end method


# virtual methods
.method deleteRecursive(Ljava/io/File;)V
    .locals 4
    .param p1, "fileOrDirectory"    # Ljava/io/File;

    .line 3150
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3151
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3152
    .local v3, "child":Ljava/io/File;
    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 3151
    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3154
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3155
    return-void
.end method

.method public isNetworkConnected()Z
    .locals 6

    .line 3114
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/santrope/launcher/SplashScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3116
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 3118
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3120
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 3121
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 3122
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    goto :goto_0

    .line 3123
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 3125
    .local v2, "n":Landroid/net/Network;
    if-eqz v2, :cond_6

    .line 3126
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 3128
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_6

    .line 3129
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    .line 3133
    .end local v2    # "n":Landroid/net/Network;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 3049
    if-nez p1, :cond_4

    .line 3050
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    .line 3051
    const-string v2, "santrope-settings"

    invoke-virtual {p0, v2, v1}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3052
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "reinstall"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3053
    const-string v3, "resume_type"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3054
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3057
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/vrs.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3058
    .local v3, "lFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "client-vrs"

    if-eqz v4, :cond_1

    .line 3059
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3061
    .local v4, "lReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3062
    .local v6, "lData":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "lLine":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3063
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3064
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 3065
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3066
    .local v7, "localJsonData":Lorg/json/JSONObject;
    sget v9, Lcom/santrope/launcher/SplashScreen;->mServerClientVersion:I

    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3067
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3068
    .local v5, "output":Ljava/io/Writer;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3069
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 3070
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    .line 3071
    .end local v4    # "lReader":Ljava/io/BufferedReader;
    .end local v5    # "output":Ljava/io/Writer;
    .end local v6    # "lData":Ljava/lang/StringBuilder;
    .end local v7    # "localJsonData":Lorg/json/JSONObject;
    .end local v8    # "lLine":Ljava/lang/String;
    goto :goto_1

    .line 3072
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3073
    .local v4, "localJsonData":Lorg/json/JSONObject;
    sget v6, Lcom/santrope/launcher/SplashScreen;->mServerClientVersion:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3074
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 3075
    .restart local v5    # "output":Ljava/io/Writer;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 3077
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3081
    .end local v3    # "lFile":Ljava/io/File;
    .end local v4    # "localJsonData":Lorg/json/JSONObject;
    .end local v5    # "output":Ljava/io/Writer;
    :goto_1
    goto :goto_2

    .line 3079
    :catch_0
    move-exception v3

    .line 3080
    .local v3, "e":Ljava/lang/Exception;
    const/16 v4, 0x65

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3083
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lcom/santrope/launcher/PrefManager;

    invoke-direct {v3, p0}, Lcom/santrope/launcher/PrefManager;-><init>(Landroid/content/Context;)V

    .line 3084
    .local v3, "prefManager":Lcom/santrope/launcher/PrefManager;
    invoke-virtual {v3, v1}, Lcom/santrope/launcher/PrefManager;->setFirstTimeLaunch(Z)V

    .line 3086
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "client.apk"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3087
    .local v0, "delAPK":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3088
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3090
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/santrope/launcher/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/santrope/launcher/MainActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3091
    .local v1, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 3092
    invoke-virtual {p0}, Lcom/santrope/launcher/SplashScreen;->finish()V

    .line 3093
    .end local v0    # "delAPK":Ljava/io/File;
    .end local v1    # "launchIntent":Landroid/content/Intent;
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefManager":Lcom/santrope/launcher/PrefManager;
    goto :goto_3

    .line 3094
    :cond_3
    const/16 v0, 0x77

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client was not installed, resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3095
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3096
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3097
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mLoadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3098
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3099
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3102
    :cond_4
    :goto_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 85
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 88
    const v1, 0x7f0c0049

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->setContentView(I)V

    .line 89
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santrope/launcher/SplashScreen;->mLoadText:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f090077

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/santrope/launcher/SplashScreen;->mLoadProgressBar:Landroid/widget/ProgressBar;

    .line 91
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/santrope/launcher/SplashScreen;->mChooseVersionText:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/santrope/launcher/SplashScreen;->mButtons:Landroid/widget/RelativeLayout;

    .line 93
    const v1, 0x7f090076

    invoke-virtual {p0, v1}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 94
    .local v1, "mLiteVrsButton":Landroid/widget/Button;
    new-instance v2, Lcom/santrope/launcher/SplashScreen$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$1;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 212
    .local v2, "mFullVrsButton":Landroid/widget/Button;
    new-instance v3, Lcom/santrope/launcher/SplashScreen$2;

    invoke-direct {v3, p0}, Lcom/santrope/launcher/SplashScreen$2;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v3, 0x7f09009f

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    .line 330
    const v3, 0x7f09006a

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledText:Landroid/widget/TextView;

    .line 331
    const v3, 0x7f090069

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledButton:Landroid/widget/Button;

    .line 332
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mInstallCancelledButton:Landroid/widget/Button;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$3;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/SplashScreen$3;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v3, 0x7f090027

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mCancelButton:Landroid/widget/Button;

    .line 352
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$4;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/SplashScreen$4;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v3, 0x7f09004c

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mInstallDownloadingCancelledButton:Landroid/widget/Button;

    .line 380
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mInstallDownloadingCancelledButton:Landroid/widget/Button;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$5;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/SplashScreen$5;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1446
    const v3, 0x7f0900a5

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mRequestPermission:Landroid/widget/Button;

    .line 1447
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mRequestPermission:Landroid/widget/Button;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$6;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/SplashScreen$6;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    const v3, 0x7f0900fc

    invoke-virtual {p0, v3}, Lcom/santrope/launcher/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mWarningText:Landroid/widget/TextView;

    .line 1455
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mWarningText:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/santrope/launcher/SplashScreen;->stripUnderlines(Landroid/widget/TextView;)V

    .line 1456
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen;->mWarningText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1458
    new-instance v3, Lcom/santrope/launcher/INIFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1459
    .local v3, "settingsIni":Lcom/santrope/launcher/INIFile;
    invoke-virtual {v3}, Lcom/santrope/launcher/INIFile;->save()V

    .line 1461
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 1462
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    invoke-static {p0, v4, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1465
    :cond_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7;

    invoke-direct {v5, p0}, Lcom/santrope/launcher/SplashScreen$7;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2246
    .local v4, "splashScreenThread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2248
    .end local v4    # "splashScreenThread":Ljava/lang/Thread;
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 2252
    if-nez p1, :cond_1

    .line 2253
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2255
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mRequestPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/santrope/launcher/SplashScreen$8;

    invoke-direct {v1, p0}, Lcom/santrope/launcher/SplashScreen$8;-><init>(Lcom/santrope/launcher/SplashScreen;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3039
    .local v0, "splashScreenThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3040
    .end local v0    # "splashScreenThread":Ljava/lang/Thread;
    goto :goto_0

    .line 3041
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3042
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mProgressStatusText:Landroid/widget/TextView;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u0435 \u043d\u0430\n\u0437\u0430\u043f\u0438\u0441\u044c \u0432\u043e \u0432\u043d\u0435\u0448\u043d\u0435\u0435 \u0437\u0430\u043f\u043e\u043c\u0438\u043d\u0430\u044e\u0449\u0435\u0435 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\n\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 \u043f\u043e\u043f\u044b\u0442\u043a\u0443 \u0435\u0449\u0451 \u0440\u0430\u0437"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3043
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen;->mRequestPermission:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3046
    :cond_1
    :goto_0
    return-void
.end method
