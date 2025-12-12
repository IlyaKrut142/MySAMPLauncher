.class Lcom/santrope/launcher/SplashScreen$5$5$6;
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

    .line 910
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$5$6;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$6;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$6;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$6;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$6;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 917
    return-void
.end method
