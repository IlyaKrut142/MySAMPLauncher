.class Lcom/santrope/launcher/SplashScreen$7$10;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/SplashScreen$7;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/SplashScreen$7;

    .line 1830
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$7$10;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1833
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$10;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1834
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$10;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1835
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$10;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$10;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1837
    return-void
.end method
