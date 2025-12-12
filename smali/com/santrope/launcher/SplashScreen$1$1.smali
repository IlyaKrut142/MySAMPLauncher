.class Lcom/santrope/launcher/SplashScreen$1$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/SplashScreen$1;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/SplashScreen$1;

    .line 106
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 109
    move-object/from16 v1, p0

    const-string v0, "/client.zip"

    const-string v2, "/files.zip"

    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v3, v3, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "santrope-settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 110
    .local v3, "sp":Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    const-string v7, "reinstall"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 111
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v9, Lcom/santrope/launcher/SplashScreen$1$1$1;

    invoke-direct {v9, v1}, Lcom/santrope/launcher/SplashScreen$1$1$1;-><init>(Lcom/santrope/launcher/SplashScreen$1$1;)V

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v4, v5}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 124
    .local v4, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v7, "resume_type"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v9, v9, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/16 v10, 0x69

    const-string v11, "Download light cache"

    invoke-static {v9, v10, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 127
    new-instance v9, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v9, v11, v5, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 128
    .local v9, "downloadCache":Lcom/santrope/launcher/DownloadManager;
    new-array v11, v8, [Ljava/lang/String;

    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v12}, Lcom/santrope/launcher/SplashScreen;->access$800(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/lite_cache.zip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    aput-object v12, v11, v15

    invoke-virtual {v9, v11}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    :try_start_0
    invoke-virtual {v9}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 131
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v11, Lcom/santrope/launcher/SplashScreen$1$1$2;

    invoke-direct {v11, v1}, Lcom/santrope/launcher/SplashScreen$1$1$2;-><init>(Lcom/santrope/launcher/SplashScreen$1$1;)V

    invoke-virtual {v12, v11}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 140
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/Android/data/com.rockstargames.gtasa"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v11

    .line 141
    .local v6, "dirData":Ljava/io/File;
    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v11, v6}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 142
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v11, "dirObb":Ljava/io/File;
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v12, v11}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 144
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v15, "Decompress light cache"

    invoke-static {v12, v10, v15}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 145
    new-instance v12, Lcom/santrope/launcher/Decompress;

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v12, v15, v5, v5}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 146
    .local v12, "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v15, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v8, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/Android/data/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v15, v10

    invoke-virtual {v12, v15}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    invoke-virtual {v12}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 148
    const/4 v8, 0x2

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Download files"

    const/16 v13, 0x69

    invoke-static {v8, v13, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 152
    new-instance v8, Lcom/santrope/launcher/DownloadManager;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v13

    const/4 v15, 0x2

    invoke-direct {v8, v10, v15, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 153
    .local v8, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v10, v15, [Ljava/lang/String;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v13}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v15, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v10, v15

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 155
    :try_start_1
    invoke-virtual {v8}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 156
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v13, "Decompress files"

    const/16 v15, 0x69

    invoke-static {v10, v15, v13}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 157
    new-instance v10, Lcom/santrope/launcher/Decompress;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v15

    const/4 v5, 0x2

    invoke-direct {v10, v13, v5, v15}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 158
    .local v10, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v13, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v15, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v13, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/Android/data/com.rockstargames.gtasa/files/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v13, v5

    invoke-virtual {v10, v13}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 159
    invoke-virtual {v10}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    const/4 v2, 0x3

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 166
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/net/URL;

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v15}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    .local v13, "serverUrl":Ljava/net/URL;
    :try_start_2
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v2, v15

    .line 169
    :try_start_3
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v17, v3

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .local v17, "sp":Landroid/content/SharedPreferences;
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    .line 170
    const/16 v3, 0x400

    new-array v14, v3, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 172
    .local v14, "data":[B
    :goto_0
    move-object/from16 v18, v6

    const/4 v15, 0x0

    .end local v6    # "dirData":Ljava/io/File;
    .local v18, "dirData":Ljava/io/File;
    :try_start_5
    invoke-virtual {v2, v14, v15, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v19, v6

    const/4 v3, -0x1

    .local v19, "count":I
    if-eq v6, v3, :cond_1

    .line 173
    move/from16 v3, v19

    .end local v19    # "count":I
    .local v3, "count":I
    :try_start_6
    invoke-virtual {v5, v14, v15, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v6, v18

    const/16 v3, 0x400

    goto :goto_0

    .line 175
    .end local v3    # "count":I
    .end local v14    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_3

    .line 172
    .restart local v14    # "data":[B
    .restart local v19    # "count":I
    :cond_1
    move/from16 v3, v19

    .line 175
    .end local v14    # "data":[B
    .end local v19    # "count":I
    nop

    .line 176
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    nop

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 182
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v3, v3, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v6, "Download client"

    const/16 v14, 0x69

    invoke-static {v3, v14, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 183
    new-instance v3, Lcom/santrope/launcher/DownloadManager;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v14

    const/4 v15, 0x1

    invoke-direct {v3, v6, v15, v14}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 184
    .local v3, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v6, 0x2

    new-array v14, v6, [Ljava/lang/String;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v6}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v19, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-virtual {v15, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v14, v6

    invoke-virtual {v3, v14}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 186
    :try_start_8
    invoke-virtual {v3}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v6, "Decompress client"

    const/16 v14, 0x69

    invoke-static {v2, v14, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 188
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v14

    const/4 v15, 0x1

    invoke-direct {v2, v6, v15, v14}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v16, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :try_start_9
    invoke-virtual {v15, v3}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v6, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v3, v3, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    invoke-virtual {v2, v6}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 193
    goto :goto_2

    .line 191
    :catch_0
    move-exception v0

    goto :goto_1

    .line 190
    .end local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v3    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_2
    return-void

    .line 191
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 192
    .end local v3    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :goto_1
    :try_start_a
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x65

    invoke-static {v2, v6, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, -0x1

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 175
    .end local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v18    # "dirData":Ljava/io/File;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "dirData":Ljava/io/File;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v18, v6

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v18    # "dirData":Ljava/io/File;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v19, :cond_3

    .line 176
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    .line 198
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v13    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 177
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v13    # "serverUrl":Ljava/net/URL;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 178
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 179
    :cond_4
    nop

    .end local v4    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v9    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .end local v11    # "dirObb":Ljava/io/File;
    .end local v12    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 159
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "dirData":Ljava/io/File;
    .restart local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v9    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v11    # "dirObb":Ljava/io/File;
    .restart local v12    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    goto :goto_5

    .line 155
    .end local v10    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 200
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    :goto_5
    goto :goto_7

    .line 198
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .line 199
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    :goto_6
    :try_start_b
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x65

    invoke-static {v2, v5, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_7

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v11    # "dirObb":Ljava/io/File;
    .end local v12    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v18    # "dirData":Ljava/io/File;
    :catch_4
    move-exception v0

    goto :goto_8

    .line 147
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    .restart local v11    # "dirObb":Ljava/io/File;
    .restart local v12    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    :cond_7
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    goto :goto_7

    .line 130
    .end local v11    # "dirObb":Ljava/io/File;
    .end local v12    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v17, v3

    .line 205
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    :goto_7
    goto :goto_9

    .line 203
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :catch_5
    move-exception v0

    move-object/from16 v17, v3

    .line 204
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    :goto_8
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x65

    invoke-static {v2, v5, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method
