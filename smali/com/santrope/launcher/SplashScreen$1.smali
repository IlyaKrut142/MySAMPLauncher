.class Lcom/santrope/launcher/SplashScreen$1;
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

    .line 94
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v1, 0x0

    const-string v2, "santrope-settings"

    invoke-virtual {v0, v2, v1}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "installType"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$000(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$100(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 104
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$1$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$1$1;-><init>(Lcom/santrope/launcher/SplashScreen$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    .local v1, "downloadData":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method
