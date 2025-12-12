.class public Lcom/santrope/launcher/DownloadManager;
.super Landroid/os/AsyncTask;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButtonRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mPercents:I

.field private mProgressBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mVersion:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I
    .param p3, "version"    # I

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f090077

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f09009f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f09004c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mButtonRef:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f090027

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mCancelButtonRef:Ljava/lang/ref/WeakReference;

    .line 42
    iput p2, p0, Lcom/santrope/launcher/DownloadManager;->mType:I

    .line 43
    iput p3, p0, Lcom/santrope/launcher/DownloadManager;->mVersion:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/DownloadManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/DownloadManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mButtonRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/DownloadManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mTextViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/DownloadManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/DownloadManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mCancelButtonRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 179
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 180
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 182
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 183
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

    .line 184
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 187
    .local v2, "n":Landroid/net/Network;
    if-eqz v2, :cond_6

    .line 188
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 190
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_6

    .line 191
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

    .line 195
    .end local v2    # "n":Landroid/net/Network;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 26
    .param p1, "url"    # [Ljava/lang/String;

    .line 48
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/santrope/launcher/DownloadManager;->isNetworkConnected()Z

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_a

    .line 50
    :try_start_0
    iget-object v0, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v5, Lcom/santrope/launcher/DownloadManager$1;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/DownloadManager$1;-><init>(Lcom/santrope/launcher/DownloadManager;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 60
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v0, 0x1

    aget-object v7, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .local v7, "filename":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/net/URL;

    aget-object v9, p1, v2

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .local v8, "serverUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 64
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const-string v10, "HEAD"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    int-to-long v10, v10

    .line 66
    .local v10, "fileSize":J
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v12, "outputFile":Ljava/io/File;
    const-wide/16 v13, 0x0

    .line 68
    .local v13, "total":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const-wide/16 v16, 0x64

    if-eqz v15, :cond_3

    .line 69
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v20, v18

    .line 70
    .local v20, "existingFileSize":J
    move-object/from16 v18, v5

    move-wide/from16 v4, v20

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v20    # "existingFileSize":J
    .local v4, "existingFileSize":J
    .local v18, "bufferedInputStream":Ljava/io/BufferedInputStream;
    cmp-long v19, v4, v10

    if-gez v19, :cond_2

    .line 71
    :try_start_3
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    check-cast v19, Ljava/net/HttpURLConnection;

    move-object/from16 v20, v19

    .line 72
    .local v20, "connectionFile":Ljava/net/HttpURLConnection;
    const-string v15, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    .end local v20    # "connectionFile":Ljava/net/HttpURLConnection;
    .local v2, "connectionFile":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :try_start_4
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v15, v0

    .line 87
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v15, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 88
    :try_start_5
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v20, v2

    const/4 v2, 0x1

    .end local v2    # "connectionFile":Ljava/net/HttpURLConnection;
    .restart local v20    # "connectionFile":Ljava/net/HttpURLConnection;
    invoke-direct {v0, v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v6, v0

    .line 89
    move-wide v13, v4

    .line 90
    mul-long v22, v13, v16

    move-wide/from16 v24, v4

    .end local v4    # "existingFileSize":J
    .local v24, "existingFileSize":J
    div-long v4, v22, v10

    long-to-int v0, v4

    iput v0, v1, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    .line 91
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Integer;

    iget v0, v1, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/santrope/launcher/DownloadManager;->publishProgress([Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v18, v15

    goto :goto_0

    .line 122
    .end local v8    # "serverUrl":Ljava/net/URL;
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "fileSize":J
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "total":J
    .end local v20    # "connectionFile":Ljava/net/HttpURLConnection;
    .end local v24    # "existingFileSize":J
    :catchall_0
    move-exception v0

    move-object v4, v7

    move-object/from16 v18, v15

    goto/16 :goto_4

    .line 78
    .end local v15    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "connectionFile":Ljava/net/HttpURLConnection;
    .restart local v4    # "existingFileSize":J
    .restart local v8    # "serverUrl":Ljava/net/URL;
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "fileSize":J
    .restart local v12    # "outputFile":Ljava/io/File;
    .restart local v13    # "total":J
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    move-wide/from16 v24, v4

    .line 79
    .end local v2    # "connectionFile":Ljava/net/HttpURLConnection;
    .end local v4    # "existingFileSize":J
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v20    # "connectionFile":Ljava/net/HttpURLConnection;
    .restart local v24    # "existingFileSize":J
    :try_start_6
    iget-object v2, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v4, Lcom/santrope/launcher/DownloadManager$2;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/DownloadManager$2;-><init>(Lcom/santrope/launcher/DownloadManager;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    iget-object v2, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 86
    const/4 v2, 0x0

    .line 122
    if-eqz v18, :cond_0

    .line 123
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    .line 124
    :cond_0
    if-eqz v6, :cond_1

    .line 125
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 86
    :cond_1
    return-object v2

    .line 122
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "serverUrl":Ljava/net/URL;
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "fileSize":J
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "total":J
    .end local v20    # "connectionFile":Ljava/net/HttpURLConnection;
    .end local v24    # "existingFileSize":J
    :catchall_1
    move-exception v0

    move-object v4, v7

    goto/16 :goto_4

    .line 70
    .restart local v4    # "existingFileSize":J
    .restart local v8    # "serverUrl":Ljava/net/URL;
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "fileSize":J
    .restart local v12    # "outputFile":Ljava/io/File;
    .restart local v13    # "total":J
    :cond_2
    move-wide/from16 v24, v4

    .line 93
    .end local v4    # "existingFileSize":J
    :goto_0
    move-object/from16 v5, v18

    goto :goto_1

    .line 122
    .end local v8    # "serverUrl":Ljava/net/URL;
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "fileSize":J
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "total":J
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    move-object v4, v7

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 94
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "serverUrl":Ljava/net/URL;
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "fileSize":J
    .restart local v12    # "outputFile":Ljava/io/File;
    .restart local v13    # "total":J
    :cond_3
    move-object/from16 v18, v5

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 95
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v5, v0

    .line 97
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_9
    iget-object v0, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/santrope/launcher/DownloadManager$3;

    invoke-direct {v2, v1}, Lcom/santrope/launcher/DownloadManager$3;-><init>(Lcom/santrope/launcher/DownloadManager;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    const/16 v0, 0x2000

    new-array v2, v0, [B

    .line 113
    .local v2, "data":[B
    if-eqz v5, :cond_5

    .line 114
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    move/from16 v18, v15

    .local v18, "count":I
    const/4 v0, -0x1

    if-eq v15, v0, :cond_4

    .line 115
    move/from16 v0, v18

    .end local v18    # "count":I
    .local v0, "count":I
    invoke-virtual {v6, v2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 116
    move-object v4, v7

    move-object v15, v8

    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "serverUrl":Ljava/net/URL;
    .local v4, "filename":Ljava/lang/String;
    .local v15, "serverUrl":Ljava/net/URL;
    int-to-long v7, v0

    add-long/2addr v13, v7

    .line 117
    mul-long v7, v13, v16

    :try_start_a
    div-long/2addr v7, v10

    long-to-int v8, v7

    iput v8, v1, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    .line 118
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Integer;

    iget v7, v1, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v8, v18

    invoke-virtual {v1, v8}, Lcom/santrope/launcher/DownloadManager;->publishProgress([Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v7, v4

    move-object v8, v15

    const/16 v0, 0x2000

    goto :goto_2

    .line 122
    .end local v0    # "count":I
    .end local v2    # "data":[B
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "fileSize":J
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "total":J
    .end local v15    # "serverUrl":Ljava/net/URL;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v5

    goto :goto_4

    .line 114
    .end local v4    # "filename":Ljava/lang/String;
    .restart local v2    # "data":[B
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "serverUrl":Ljava/net/URL;
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "fileSize":J
    .restart local v12    # "outputFile":Ljava/io/File;
    .restart local v13    # "total":J
    .restart local v18    # "count":I
    :cond_4
    move-object v4, v7

    move-object v15, v8

    move/from16 v0, v18

    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "serverUrl":Ljava/net/URL;
    .end local v18    # "count":I
    .restart local v0    # "count":I
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v15    # "serverUrl":Ljava/net/URL;
    goto :goto_3

    .line 113
    .end local v0    # "count":I
    .end local v4    # "filename":Ljava/lang/String;
    .end local v15    # "serverUrl":Ljava/net/URL;
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v8    # "serverUrl":Ljava/net/URL;
    :cond_5
    move-object v4, v7

    move-object v15, v8

    .line 122
    .end local v2    # "data":[B
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "serverUrl":Ljava/net/URL;
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v10    # "fileSize":J
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "total":J
    .restart local v4    # "filename":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_6

    .line 123
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 124
    :cond_6
    if-eqz v6, :cond_7

    .line 125
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 142
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_7
    nop

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 122
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "filename":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object v4, v7

    move-object/from16 v18, v5

    .end local v7    # "filename":Ljava/lang/String;
    .restart local v4    # "filename":Ljava/lang/String;
    goto :goto_4

    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "filename":Ljava/lang/String;
    .local v18, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_5
    move-exception v0

    move-object v4, v7

    .end local v7    # "filename":Ljava/lang/String;
    .restart local v4    # "filename":Ljava/lang/String;
    goto :goto_4

    .end local v4    # "filename":Ljava/lang/String;
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "filename":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v5

    move-object v4, v7

    .end local v5    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v7    # "filename":Ljava/lang/String;
    .restart local v4    # "filename":Ljava/lang/String;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v18, :cond_8

    .line 123
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    .line 124
    :cond_8
    if-eqz v6, :cond_9

    .line 125
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 126
    :cond_9
    nop

    .end local p1    # "url":[Ljava/lang/String;
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 127
    .end local v4    # "filename":Ljava/lang/String;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local p1    # "url":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v4, Lcom/santrope/launcher/DownloadManager$4;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/DownloadManager$4;-><init>(Lcom/santrope/launcher/DownloadManager;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    iget-object v2, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 141
    return-object v3

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    iget-object v0, v1, Lcom/santrope/launcher/DownloadManager;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/santrope/launcher/DownloadManager$5;

    invoke-direct {v2, v1}, Lcom/santrope/launcher/DownloadManager$5;-><init>(Lcom/santrope/launcher/DownloadManager;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/DownloadManager;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 162
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/DownloadManager;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 166
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 167
    iget v0, p0, Lcom/santrope/launcher/DownloadManager;->mType:I

    const-string v1, "%"

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u0435\u0442\u0441\u044f \u043a\u044d\u0448 ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_0
    const/4 v2, 0x1

    const-string v3, ") ... "

    if-ne v0, v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u0435\u0442\u0441\u044f \u043a\u043b\u0438\u0435\u043d\u0442 (build "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/santrope/launcher/DownloadManager;->mVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 172
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0417\u0430\u0433\u0440\u0443\u0436\u0430\u044e\u0442\u0441\u044f \u0444\u0430\u0439\u043b\u044b (build "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/santrope/launcher/DownloadManager;->mVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/DownloadManager;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/DownloadManager;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
