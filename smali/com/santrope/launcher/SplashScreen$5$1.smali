.class Lcom/santrope/launcher/SplashScreen$5$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/SplashScreen$5;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/SplashScreen$5;

    .line 402
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 405
    move-object/from16 v1, p0

    const-string v0, "/client.zip"

    const-string v2, "/files.zip"

    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v3, v3, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v4, 0x0

    const-string v5, "santrope-settings"

    invoke-virtual {v3, v5, v4}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 406
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v5, "resume_type"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 408
    new-instance v6, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v6, v7, v4, v4}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 409
    .local v6, "downloadCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v9, v9, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$800(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/lite_cache.zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v8, v12

    invoke-virtual {v6, v8}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 411
    :try_start_0
    invoke-virtual {v6}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 412
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v9, v9, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v13, Lcom/santrope/launcher/SplashScreen$5$1$1;

    invoke-direct {v13, v1}, Lcom/santrope/launcher/SplashScreen$5$1$1;-><init>(Lcom/santrope/launcher/SplashScreen$5$1;)V

    invoke-virtual {v9, v13}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    new-instance v9, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/Android/data/com.rockstargames.gtasa"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v9, "dirData":Ljava/io/File;
    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v13, v9}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 423
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v13, "dirObb":Ljava/io/File;
    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v14, v14, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v14, v13}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 425
    new-instance v14, Lcom/santrope/launcher/Decompress;

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v14, v15, v4, v4}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 426
    .local v14, "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v15, v7, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/Android/data/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v12

    invoke-virtual {v14, v15}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    invoke-virtual {v14}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 428
    const/4 v7, 0x2

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 431
    new-instance v7, Lcom/santrope/launcher/DownloadManager;

    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v15, 0x2

    invoke-direct {v7, v8, v15, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 432
    .local v7, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v8, v15, [Ljava/lang/String;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v15, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v12

    invoke-virtual {v7, v8}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 434
    :try_start_1
    invoke-virtual {v7}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 435
    new-instance v8, Lcom/santrope/launcher/Decompress;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v15

    const/4 v12, 0x2

    invoke-direct {v8, v10, v12, v15}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 436
    .local v8, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v10, v12, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v15, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "/Android/data/com.rockstargames.gtasa/files/"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v10, v12

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 437
    invoke-virtual {v8}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 438
    const/4 v2, 0x3

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    const/4 v2, 0x0

    .line 443
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 444
    .local v10, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/net/URL;

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v15}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 446
    .local v12, "serverUrl":Ljava/net/URL;
    :try_start_2
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v2, v15

    .line 447
    :try_start_3
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    .line 448
    const/16 v4, 0x400

    new-array v11, v4, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 450
    .local v11, "data":[B
    :goto_0
    move-object/from16 v17, v6

    const/4 v15, 0x0

    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .local v17, "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_4
    invoke-virtual {v2, v11, v15, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v18, v6

    .local v18, "count":I
    const/4 v4, -0x1

    if-eq v6, v4, :cond_0

    .line 451
    move/from16 v6, v18

    .end local v18    # "count":I
    .local v6, "count":I
    :try_start_5
    invoke-virtual {v10, v11, v15, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v6, v17

    const/16 v4, 0x400

    goto :goto_0

    .line 453
    .end local v6    # "count":I
    .end local v11    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_3

    .line 450
    .restart local v11    # "data":[B
    .restart local v18    # "count":I
    :cond_0
    move/from16 v6, v18

    .line 453
    .end local v11    # "data":[B
    .end local v18    # "count":I
    nop

    .line 454
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 455
    nop

    .line 456
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 460
    new-instance v6, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v15

    const/4 v4, 0x1

    invoke-direct {v6, v11, v4, v15}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    move-object v4, v6

    .line 461
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/String;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v6}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v11, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    aput-object v2, v11, v6

    invoke-virtual {v4, v11}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 463
    :try_start_7
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v11

    const/4 v15, 0x1

    invoke-direct {v2, v6, v15, v11}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v15, v15, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v16, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :try_start_8
    invoke-virtual {v15, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v6, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v4, v4, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

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
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 469
    goto :goto_2

    .line 467
    :catch_0
    move-exception v0

    goto :goto_1

    .line 466
    .end local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_1
    return-void

    .line 467
    :catch_1
    move-exception v0

    move-object/from16 v16, v4

    .line 468
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :goto_1
    :try_start_9
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x65

    invoke-static {v2, v6, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, -0x1

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    .line 453
    .end local v16    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v6, "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v17, v6

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_3
    if-eqz v19, :cond_2

    .line 454
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_4

    .line 474
    .end local v8    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v12    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 455
    .restart local v8    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v12    # "serverUrl":Ljava/net/URL;
    .restart local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_4
    if-eqz v10, :cond_3

    .line 456
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 457
    :cond_3
    nop

    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v9    # "dirData":Ljava/io/File;
    .end local v13    # "dirObb":Ljava/io/File;
    .end local v14    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 437
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v12    # "serverUrl":Ljava/net/URL;
    .end local v19    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v7    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v9    # "dirData":Ljava/io/File;
    .restart local v13    # "dirObb":Ljava/io/File;
    .restart local v14    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    :cond_4
    move-object/from16 v17, v6

    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    goto :goto_5

    .line 434
    .end local v8    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :cond_5
    move-object/from16 v17, v6

    .line 476
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :goto_5
    goto :goto_7

    .line 474
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :catch_3
    move-exception v0

    move-object/from16 v17, v6

    .line 475
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :goto_6
    :try_start_a
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v9    # "dirData":Ljava/io/File;
    .end local v13    # "dirObb":Ljava/io/File;
    .end local v14    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    :catch_4
    move-exception v0

    goto :goto_8

    .line 427
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v9    # "dirData":Ljava/io/File;
    .restart local v13    # "dirObb":Ljava/io/File;
    .restart local v14    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    :cond_6
    move-object/from16 v17, v6

    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    goto :goto_7

    .line 411
    .end local v9    # "dirData":Ljava/io/File;
    .end local v13    # "dirObb":Ljava/io/File;
    .end local v14    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :cond_7
    move-object/from16 v17, v6

    .line 481
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :goto_7
    goto :goto_9

    .line 479
    .end local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :catch_5
    move-exception v0

    move-object/from16 v17, v6

    .line 480
    .end local v6    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "downloadCache":Lcom/santrope/launcher/DownloadManager;
    :goto_8
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$5$1;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method
