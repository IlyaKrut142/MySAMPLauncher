.class Lcom/santrope/launcher/SplashScreen$5$5$11;
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

    .line 1086
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5$5$11;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$11;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$000(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5$5$11;->this$2:Lcom/santrope/launcher/SplashScreen$5$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5$5;->this$1:Lcom/santrope/launcher/SplashScreen$5;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$100(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1091
    return-void
.end method
