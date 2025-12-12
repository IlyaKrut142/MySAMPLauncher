.class Lcom/santrope/launcher/SplashScreen$5$5$4;
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

.field final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$5$5;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$2"    # Lcom/santrope/launcher/SplashScreen$5$5;

    .line 811
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iput-object p2, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->val$sp:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 814
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 817
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->val$sp:Landroid/content/SharedPreferences;

    const-string v2, "reinstall"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 818
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$600(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f090069

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f09009f

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 822
    :goto_0
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$4;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    return-void
.end method
