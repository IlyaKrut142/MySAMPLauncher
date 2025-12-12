.class Lcom/santrope/launcher/SplashScreen$5$3;
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

    .line 588
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 591
    const-string v0, "/client.zip"

    iget-object v1, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v1, v1, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v2, 0x0

    const-string v3, "santrope-settings"

    invoke-virtual {v1, v3, v2}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 593
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "resume_type"

    const/4 v4, 0x2

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 594
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v6, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v6, v6, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    invoke-direct {v5, v6, v4, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 596
    .local v5, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v6, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/files.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 598
    const/16 v6, 0x65

    :try_start_0
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 599
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v11, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v12

    invoke-direct {v7, v11, v4, v12}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 600
    .local v7, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v11, v4, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v13, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "/Android/data/com.rockstargames.gtasa/files/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v10

    invoke-virtual {v7, v11}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 601
    invoke-virtual {v7}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 603
    const/4 v8, 0x3

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    new-instance v8, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v11, v11, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v12

    invoke-direct {v8, v11, v10, v12}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 606
    .local v8, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    new-array v11, v4, [Ljava/lang/String;

    iget-object v12, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v12}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v13, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-virtual {v8, v11}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 608
    :try_start_1
    invoke-virtual {v8}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 609
    new-instance v11, Lcom/santrope/launcher/Decompress;

    iget-object v12, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v12, v12, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    invoke-direct {v11, v12, v10, v13}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v4, v4, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v13, v13, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v13, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {v11, v4}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 614
    goto :goto_0

    .line 611
    :cond_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v6, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 621
    .end local v7    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v8    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_1
    goto :goto_1

    .line 619
    :catch_1
    move-exception v0

    .line 620
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5$3;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v2, v2, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
