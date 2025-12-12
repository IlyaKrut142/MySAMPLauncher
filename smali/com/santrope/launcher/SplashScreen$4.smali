.class Lcom/santrope/launcher/SplashScreen$4;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/SplashScreen;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/SplashScreen;

    .line 352
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 356
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 357
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 358
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 359
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    goto :goto_0

    .line 361
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lite_cache.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "liteZipFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 364
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4, v3}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/full_cache.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, "fullZipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v3, 0x0

    const-string v4, "santrope-settings"

    invoke-virtual {v2, v4, v3}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 369
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v3, -0x1

    const-string v4, "resume_type"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    const-string v4, "reinstall"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-class v5, Lcom/santrope/launcher/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v3, "launchIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4, v3}, Lcom/santrope/launcher/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 375
    iget-object v4, p0, Lcom/santrope/launcher/SplashScreen$4;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Lcom/santrope/launcher/SplashScreen;->finish()V

    .line 376
    return-void
.end method
