.class Lcom/santrope/launcher/SplashScreen$1$1$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/santrope/launcher/SplashScreen$1$1;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/santrope/launcher/SplashScreen$1$1;

    .line 111
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$1$1$1;->this$2:Lcom/santrope/launcher/SplashScreen$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$1$1$1;->this$2:Lcom/santrope/launcher/SplashScreen$1$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$600(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$1$1$1;->this$2:Lcom/santrope/launcher/SplashScreen$1$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f090069

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$1$1$1;->this$2:Lcom/santrope/launcher/SplashScreen$1$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f09009f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$1$1$1;->this$2:Lcom/santrope/launcher/SplashScreen$1$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1$1;->this$1:Lcom/santrope/launcher/SplashScreen$1;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$1;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    return-void
.end method
