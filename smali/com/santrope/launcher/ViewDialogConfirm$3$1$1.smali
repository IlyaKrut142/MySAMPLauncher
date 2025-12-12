.class Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogConfirm$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/santrope/launcher/ViewDialogConfirm$3$1;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/santrope/launcher/ViewDialogConfirm$3$1;

    .line 153
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;->this$2:Lcom/santrope/launcher/ViewDialogConfirm$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;->this$2:Lcom/santrope/launcher/ViewDialogConfirm$3$1;

    iget-object v0, v0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    iget-object v0, v0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0438 \u0431\u044b\u043b\u0438 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method
