.class Lcom/santrope/launcher/SplashScreen$5$5$3;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$5$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/santrope/launcher/SplashScreen$5$5;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$5$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/santrope/launcher/SplashScreen$5$5;

    .line 735
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$5$3;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$3;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$3;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v1, "santrope-settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 740
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "settings-ini-data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 742
    return-void
.end method
