.class Lcom/santrope/launcher/SplashScreen$8$17;
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

    .line 2864
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$8$17;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2867
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$17;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 2868
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$17;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2869
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$8$17;->this$1:Lcom/santrope/launcher/SplashScreen$8;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2870
    return-void
.end method
