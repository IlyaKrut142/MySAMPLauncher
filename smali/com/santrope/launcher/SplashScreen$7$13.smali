.class Lcom/santrope/launcher/SplashScreen$7$13;
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

    .line 1948
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$7$13;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1951
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$13;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1952
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$13;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1953
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$13;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$7$13;->this$1:Lcom/santrope/launcher/SplashScreen$7;

    iget-object v0, v0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u041f\u043e\u0438\u0441\u043a \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0439 ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1955
    return-void
.end method
