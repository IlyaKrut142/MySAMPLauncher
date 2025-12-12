.class Lcom/santrope/launcher/Decompress$1;
.super Ljava/lang/Object;
.source "Decompress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/Decompress;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/Decompress;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/Decompress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/Decompress;

    .line 58
    iput-object p1, p0, Lcom/santrope/launcher/Decompress$1;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$1;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v0}, Lcom/santrope/launcher/Decompress;->access$000(Lcom/santrope/launcher/Decompress;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 62
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$1;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v0}, Lcom/santrope/launcher/Decompress;->access$000(Lcom/santrope/launcher/Decompress;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 63
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$1;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v0}, Lcom/santrope/launcher/Decompress;->access$100(Lcom/santrope/launcher/Decompress;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u0418\u0434\u0451\u0442 \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a \u0440\u0430\u0441\u043f\u0430\u043a\u043e\u0432\u043a\u0435..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method
