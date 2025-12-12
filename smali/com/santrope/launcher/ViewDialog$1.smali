.class Lcom/santrope/launcher/ViewDialog$1;
.super Ljava/lang/Object;
.source "ViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialog;->showDialog(Landroid/app/Activity;Lcom/santrope/launcher/Server;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ViewDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialog;Landroid/app/Activity;ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialog;

    .line 34
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialog$1;->this$0:Lcom/santrope/launcher/ViewDialog;

    iput-object p2, p0, Lcom/santrope/launcher/ViewDialog$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/santrope/launcher/ViewDialog$1;->val$position:I

    iput-object p4, p0, Lcom/santrope/launcher/ViewDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialog$1;->this$0:Lcom/santrope/launcher/ViewDialog;

    iget-object v1, p0, Lcom/santrope/launcher/ViewDialog$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/santrope/launcher/ViewDialog$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/santrope/launcher/ViewDialog;->access$000(Lcom/santrope/launcher/ViewDialog;Landroid/app/Activity;I)V

    .line 38
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    return-void
.end method
