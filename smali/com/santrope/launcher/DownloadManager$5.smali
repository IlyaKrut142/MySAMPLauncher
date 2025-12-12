.class Lcom/santrope/launcher/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/DownloadManager;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/DownloadManager;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/DownloadManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/DownloadManager;

    .line 144
    iput-object p1, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$200(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u041d\u0435\u0442 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u044f \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$400(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$100(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f090027

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$100(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f09009f

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$100(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u041f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0443"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$5;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$100(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    return-void
.end method
