.class Lcom/santrope/launcher/SplashScreen$3;
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

    .line 332
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$3;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 336
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/santrope/launcher/SplashScreen$3;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, "file":Ljava/io/File;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/santrope/launcher/SplashScreen$3;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v2, "com.santrope.launcher.provider"

    invoke-static {v1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 340
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 341
    .restart local v1    # "uri":Landroid/net/Uri;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    const/4 v3, 0x1

    const-string v4, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v4, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 346
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 347
    iget-object v3, p0, Lcom/santrope/launcher/SplashScreen$3;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/santrope/launcher/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method
