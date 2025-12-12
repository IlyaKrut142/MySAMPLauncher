.class Lcom/santrope/launcher/ViewDialogConfirm$4;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogConfirm;->showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ViewDialogConfirm;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialogConfirm;

    .line 192
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$4;->this$0:Lcom/santrope/launcher/ViewDialogConfirm;

    iput-object p2, p0, Lcom/santrope/launcher/ViewDialogConfirm$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    return-void
.end method
