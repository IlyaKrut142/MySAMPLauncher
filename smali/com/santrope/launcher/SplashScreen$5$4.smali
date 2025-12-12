.class Lcom/santrope/launcher/SplashScreen$5$4;
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

    .line 632
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 635
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v1, 0x0

    const-string v2, "santrope-settings"

    invoke-virtual {v0, v2, v1}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "resume_type"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 638
    new-instance v3, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v4, v4, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 639
    .local v3, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v8, v8, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/client.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 641
    :try_start_0
    invoke-virtual {v3}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 642
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v7, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    invoke-direct {v5, v7, v6, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v4, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v10, v10, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v10, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v7, v7, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v5, v4}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    goto :goto_0

    .line 644
    :cond_0
    return-void

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$5$4;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v4, v4, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/16 v5, 0x65

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 650
    return-void
.end method
