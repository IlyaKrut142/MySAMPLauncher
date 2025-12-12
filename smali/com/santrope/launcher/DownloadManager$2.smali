.class Lcom/santrope/launcher/DownloadManager$2;
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

    .line 79
    iput-object p1, p0, Lcom/santrope/launcher/DownloadManager$2;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$2;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$300(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u041e\u0448\u0438\u0431\u043a\u0430 1 (URL \u043f\u043e\u0432\u0440\u0435\u0436\u0434\u0451\u043d)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    return-void
.end method
