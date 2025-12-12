.class Lcom/santrope/launcher/ViewDialogConfirm$2;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialogConfirm;

    .line 105
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->this$0:Lcom/santrope/launcher/ViewDialogConfirm;

    iput-object p2, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$activity:Landroid/app/Activity;

    const-string v1, "santrope-settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reinstall"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 114
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 115
    return-void
.end method
