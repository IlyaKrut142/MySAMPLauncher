.class Lcom/santrope/launcher/DownloadManager$3;
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

    .line 97
    iput-object p1, p0, Lcom/santrope/launcher/DownloadManager$3;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/santrope/launcher/DownloadManager$3;->this$0:Lcom/santrope/launcher/DownloadManager;

    invoke-static {v0}, Lcom/santrope/launcher/DownloadManager;->access$000(Lcom/santrope/launcher/DownloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 101
    return-void
.end method
