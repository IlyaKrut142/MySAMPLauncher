.class Lcom/santrope/launcher/SplashScreen$2$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/SplashScreen$2;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/SplashScreen$2;

    .line 224
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 227
    move-object/from16 v1, p0

    const-string v0, "/client.zip"

    const-string v2, "/files.zip"

    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v3, v3, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "santrope-settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 228
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v6, v4, v5}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 229
    .local v4, "sp":Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    const-string v7, "reinstall"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 230
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v9, Lcom/santrope/launcher/SplashScreen$2$1$1;

    invoke-direct {v9, v1}, Lcom/santrope/launcher/SplashScreen$2$1$1;-><init>(Lcom/santrope/launcher/SplashScreen$2$1;)V

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    const-string v7, "resume_type"

    const/4 v9, 0x1

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/16 v11, 0x69

    const-string v12, "Download full cache"

    invoke-static {v10, v11, v12}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 245
    new-instance v10, Lcom/santrope/launcher/DownloadManager;

    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v10, v12, v5, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 246
    .local v10, "downloadCache":Lcom/santrope/launcher/DownloadManager;
    new-array v12, v8, [Ljava/lang/String;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v13}, Lcom/santrope/launcher/SplashScreen;->access$1400(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v14, v14, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/full_cache.zip"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-virtual {v10, v12}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    :try_start_0
    invoke-virtual {v10}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 249
    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v12, Lcom/santrope/launcher/SplashScreen$2$1$2;

    invoke-direct {v12, v1}, Lcom/santrope/launcher/SplashScreen$2$1$2;-><init>(Lcom/santrope/launcher/SplashScreen$2$1;)V

    invoke-virtual {v13, v12}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/Android/data/com.rockstargames.gtasa"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v12

    .line 259
    .local v6, "dirData":Ljava/io/File;
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v12, v6}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 260
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, v12

    .line 261
    .local v9, "dirObb":Ljava/io/File;
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v12, v9}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 262
    iget-object v12, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v13, "Decompress full cache"

    invoke-static {v12, v11, v13}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 263
    new-instance v12, Lcom/santrope/launcher/Decompress;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v12, v13, v5, v5}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 264
    .local v12, "decompressFullCache":Lcom/santrope/launcher/Decompress;
    new-array v13, v8, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v8, v15}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "/Android/obb/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v13, v11

    invoke-virtual {v12, v13}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    invoke-virtual {v12}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 266
    const/4 v8, 0x2

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v11, "Download files"

    const/16 v13, 0x69

    invoke-static {v8, v13, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 270
    new-instance v8, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v13

    const/4 v14, 0x2

    invoke-direct {v8, v11, v14, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 271
    .local v8, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v11, v14, [Ljava/lang/String;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v13}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v14, v14, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v14, v15}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v11, v14

    invoke-virtual {v8, v11}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 273
    :try_start_1
    invoke-virtual {v8}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 274
    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v13, "Decompress files"

    const/16 v14, 0x69

    invoke-static {v11, v14, v13}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 275
    new-instance v11, Lcom/santrope/launcher/Decompress;

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v14

    const/4 v5, 0x2

    invoke-direct {v11, v13, v5, v14}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 276
    .local v11, "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    new-array v13, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v14, v14, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v14, v15}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    invoke-virtual {v11}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    const/4 v2, 0x3

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 284
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/net/URL;

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v14, v14, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 286
    .local v13, "serverUrl":Ljava/net/URL;
    :try_start_2
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v2, v14

    .line 287
    :try_start_3
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v17, v4

    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .local v17, "sp":Landroid/content/SharedPreferences;
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    .line 288
    const/16 v4, 0x400

    new-array v14, v4, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 290
    .local v14, "data":[B
    :goto_0
    move-object/from16 v18, v6

    const/4 v15, 0x0

    .end local v6    # "dirData":Ljava/io/File;
    .local v18, "dirData":Ljava/io/File;
    :try_start_5
    invoke-virtual {v2, v14, v15, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v19, v6

    const/4 v4, -0x1

    .local v19, "count":I
    if-eq v6, v4, :cond_1

    .line 291
    move/from16 v4, v19

    .end local v19    # "count":I
    .local v4, "count":I
    :try_start_6
    invoke-virtual {v5, v14, v15, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v6, v18

    const/16 v4, 0x400

    goto :goto_0

    .line 293
    .end local v4    # "count":I
    .end local v14    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_3

    .line 290
    .restart local v14    # "data":[B
    .restart local v19    # "count":I
    :cond_1
    move/from16 v4, v19

    .line 293
    .end local v14    # "data":[B
    .end local v19    # "count":I
    nop

    .line 294
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 295
    nop

    .line 296
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 300
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v4, v4, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v6, "Download client"

    const/16 v14, 0x69

    invoke-static {v4, v14, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 301
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v14

    const/4 v15, 0x1

    invoke-direct {v4, v6, v15, v14}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 302
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v6, 0x2

    new-array v14, v6, [Ljava/lang/String;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v6}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    invoke-virtual {v4, v14}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 304
    :try_start_8
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v6, "Decompress client"

    const/16 v14, 0x69

    invoke-static {v2, v14, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 306
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v14

    const/4 v15, 0x1

    invoke-direct {v2, v6, v15, v14}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v16, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :try_start_9
    invoke-virtual {v15, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v6, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v4, v4, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v6, v4

    invoke-virtual {v2, v6}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 311
    goto :goto_2

    .line 309
    :catch_0
    move-exception v0

    goto :goto_1

    .line 308
    .end local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_2
    return-void

    .line 309
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 310
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :goto_1
    :try_start_a
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x65

    invoke-static {v2, v6, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, -0x1

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 293
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
    .local v4, "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catchall_4
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v19, :cond_3

    .line 294
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    .line 316
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .end local v13    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 295
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v13    # "serverUrl":Ljava/net/URL;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 296
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 297
    :cond_4
    nop

    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v9    # "dirObb":Ljava/io/File;
    .end local v10    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .end local v12    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 277
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v13    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    .restart local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v9    # "dirObb":Ljava/io/File;
    .restart local v10    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v12    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    goto :goto_5

    .line 273
    .end local v11    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :cond_6
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .line 318
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    :goto_5
    goto :goto_7

    .line 316
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .line 317
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    :goto_6
    :try_start_b
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_7

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v9    # "dirObb":Ljava/io/File;
    .end local v12    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    .end local v18    # "dirData":Ljava/io/File;
    :catch_4
    move-exception v0

    goto :goto_8

    .line 265
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v6    # "dirData":Ljava/io/File;
    .restart local v9    # "dirObb":Ljava/io/File;
    .restart local v12    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "dirData":Ljava/io/File;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "dirData":Ljava/io/File;
    goto :goto_7

    .line 248
    .end local v9    # "dirObb":Ljava/io/File;
    .end local v12    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "dirData":Ljava/io/File;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_8
    move-object/from16 v17, v4

    .line 323
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    :goto_7
    goto :goto_9

    .line 321
    .end local v17    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_5
    move-exception v0

    move-object/from16 v17, v4

    .line 322
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "sp":Landroid/content/SharedPreferences;
    :goto_8
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$2$1;->this$1:Lcom/santrope/launcher/SplashScreen$2;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$2;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method
