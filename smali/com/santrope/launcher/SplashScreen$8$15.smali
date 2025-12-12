.class Lcom/santrope/launcher/SplashScreen$8$15;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/SplashScreen$8;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/SplashScreen$8;

    .line 2784
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2787
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2788
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2789
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2790
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2791
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$000(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2792
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$15;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$100(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2793
    return-void
.end method
