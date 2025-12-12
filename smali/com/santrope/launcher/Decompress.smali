.class public Lcom/santrope/launcher/Decompress;
.super Landroid/os/AsyncTask;
.source "Decompress.java"


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

.field private mLocation:Ljava/lang/String;

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

.field private mTotal:J

.field private mType:I

.field private mVersion:I

.field private mZipFile:Ljava/lang/String;

.field private mZipSize:J

.field private updatePercentsThread:Ljava/lang/Thread;

.field private updatePercentsTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I
    .param p3, "version"    # I

    .line 48
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/santrope/launcher/Decompress;->mTotal:J

    .line 44
    iput-wide v0, p0, Lcom/santrope/launcher/Decompress;->mZipSize:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santrope/launcher/Decompress;->updatePercentsThread:Ljava/lang/Thread;

    .line 46
    iput-object v0, p0, Lcom/santrope/launcher/Decompress;->updatePercentsTimer:Ljava/util/Timer;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f090077

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/Decompress;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f09009f

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    .line 52
    iput p2, p0, Lcom/santrope/launcher/Decompress;->mType:I

    .line 53
    iput p3, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/Decompress;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/santrope/launcher/Decompress;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/santrope/launcher/Decompress;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->updatePercentsTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/santrope/launcher/Decompress;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;
    .param p1, "x1"    # Ljava/util/Timer;

    .line 34
    iput-object p1, p0, Lcom/santrope/launcher/Decompress;->updatePercentsTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/santrope/launcher/Decompress;)J
    .locals 2
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget-wide v0, p0, Lcom/santrope/launcher/Decompress;->mZipSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/santrope/launcher/Decompress;)I
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget v0, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    return v0
.end method

.method static synthetic access$402(Lcom/santrope/launcher/Decompress;I)I
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    return p1
.end method

.method static synthetic access$500(Lcom/santrope/launcher/Decompress;)J
    .locals 2
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;

    .line 34
    iget-wide v0, p0, Lcom/santrope/launcher/Decompress;->mTotal:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/santrope/launcher/Decompress;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/Decompress;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1}, Lcom/santrope/launcher/Decompress;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private dirChecker(Ljava/lang/String;)V
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 208
    return-void
.end method

.method private streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const v0, 0x8000

    new-array v0, v0, [B

    .line 213
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "readCount":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 215
    iget-wide v3, p0, Lcom/santrope/launcher/Decompress;->mTotal:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/santrope/launcher/Decompress;->mTotal:J

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "location"    # [Ljava/lang/String;

    .line 58
    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/santrope/launcher/Decompress$1;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/Decompress$1;-><init>(Lcom/santrope/launcher/Decompress;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    :try_start_1
    aget-object v3, p1, v1

    iput-object v3, p0, Lcom/santrope/launcher/Decompress;->mZipFile:Ljava/lang/String;

    .line 69
    new-instance v3, Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/santrope/launcher/Decompress;->mZipFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "zip":Ljava/util/zip/ZipFile;
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 71
    .local v4, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 73
    .local v5, "ze":Ljava/util/zip/ZipEntry;
    iget-wide v6, p0, Lcom/santrope/launcher/Decompress;->mZipSize:J

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/santrope/launcher/Decompress;->mZipSize:J

    .line 74
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v3    # "zip":Ljava/util/zip/ZipFile;
    .end local v4    # "e":Ljava/util/Enumeration;
    goto :goto_1

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 76
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 81
    :goto_1
    nop

    .line 83
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/santrope/launcher/Decompress$2;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/Decompress$2;-><init>(Lcom/santrope/launcher/Decompress;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/santrope/launcher/Decompress;->updatePercentsThread:Ljava/lang/Thread;

    .line 97
    iget-object v3, p0, Lcom/santrope/launcher/Decompress;->updatePercentsThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 99
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/santrope/launcher/Decompress;->mZipFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 102
    .local v4, "zipInputStream":Ljava/util/zip/ZipInputStream;
    aget-object v5, p1, v2

    iput-object v5, p0, Lcom/santrope/launcher/Decompress;->mLocation:Ljava/lang/String;

    .line 103
    :goto_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    move-object v6, v5

    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_2

    .line 104
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/santrope/launcher/Decompress;->dirChecker(Ljava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/santrope/launcher/Decompress;->mLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 108
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v4, v5}, Lcom/santrope/launcher/Decompress;->streamCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 109
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 110
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 111
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 117
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 119
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 116
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/Decompress;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 124
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->updatePercentsTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 127
    iput-object v1, p0, Lcom/santrope/launcher/Decompress;->updatePercentsTimer:Ljava/util/Timer;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->updatePercentsThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 131
    iput-object v1, p0, Lcom/santrope/launcher/Decompress;->updatePercentsThread:Ljava/lang/Thread;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 134
    iget v0, p0, Lcom/santrope/launcher/Decompress;->mType:I

    const/16 v2, 0x65

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043a\u044d\u0448 ... 100%"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 136
    :cond_2
    const-string v4, ") ... 100%"

    if-ne v0, v3, :cond_3

    .line 137
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043a\u043b\u0438\u0435\u043d\u0442 (build "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 138
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/vrs.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "lFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "files-vrs"

    if-eqz v5, :cond_5

    .line 142
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 144
    .local v5, "lReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v7, "lData":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "lLine":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 146
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 148
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v8, "localJsonData":Lorg/json/JSONObject;
    iget v10, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v8, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v6, "output":Ljava/io/Writer;
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 153
    invoke-virtual {v6}, Ljava/io/Writer;->close()V

    .line 154
    .end local v5    # "lReader":Ljava/io/BufferedReader;
    .end local v6    # "output":Ljava/io/Writer;
    .end local v7    # "lData":Ljava/lang/StringBuilder;
    .end local v8    # "localJsonData":Lorg/json/JSONObject;
    .end local v9    # "lLine":Ljava/lang/String;
    goto :goto_1

    .line 155
    :cond_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v5, "localJsonData":Lorg/json/JSONObject;
    iget v7, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 158
    .restart local v6    # "output":Ljava/io/Writer;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 160
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .end local v0    # "lFile":Ljava/io/File;
    .end local v5    # "localJsonData":Lorg/json/JSONObject;
    .end local v6    # "output":Ljava/io/Writer;
    :goto_1
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0444\u0430\u0439\u043b\u044b (build "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_6
    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/santrope/launcher/Decompress;->mZipFile:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    iget v2, p0, Lcom/santrope/launcher/Decompress;->mType:I

    if-ne v2, v3, :cond_9

    .line 173
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "client.apk"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 174
    .local v1, "fileInstall":Ljava/io/File;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-le v2, v4, :cond_7

    .line 175
    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "com.santrope.launcher.provider"

    invoke-static {v2, v4, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    goto :goto_4

    .line 177
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 178
    .restart local v2    # "uri":Landroid/net/Uri;
    :goto_4
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    const-string v5, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string v5, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    iget-object v3, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 185
    .end local v1    # "fileInstall":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v3, "Failed to install client"

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 188
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/santrope/launcher/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object v2, p0, Lcom/santrope/launcher/Decompress;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 192
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 194
    :cond_a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/Decompress;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 197
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mProgressBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 198
    iget v0, p0, Lcom/santrope/launcher/Decompress;->mType:I

    const-string v1, "%"

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043a\u044d\u0448 ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_0
    const/4 v2, 0x1

    const-string v3, ") ... "

    if-ne v0, v2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u0435\u0442\u0441\u044f \u043a\u043b\u0438\u0435\u043d\u0442 (build "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/santrope/launcher/Decompress;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0420\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u044b\u0432\u0430\u044e\u0442\u0441\u044f \u0444\u0430\u0439\u043b\u044b (build "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/santrope/launcher/Decompress;->mVersion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/santrope/launcher/Decompress;->mPercents:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/santrope/launcher/Decompress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
