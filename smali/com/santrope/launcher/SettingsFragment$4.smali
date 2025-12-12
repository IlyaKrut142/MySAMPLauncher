.class Lcom/santrope/launcher/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/SettingsFragment;

    .line 74
    iput-object p1, p0, Lcom/santrope/launcher/SettingsFragment$4;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 77
    new-instance v0, Lcom/santrope/launcher/ViewDialogConfirm;

    invoke-direct {v0}, Lcom/santrope/launcher/ViewDialogConfirm;-><init>()V

    .line 78
    .local v0, "dialog":Lcom/santrope/launcher/ViewDialogConfirm;
    iget-object v1, p0, Lcom/santrope/launcher/SettingsFragment$4;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-virtual {v1}, Lcom/santrope/launcher/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "\u041f\u0435\u0440\u0435\u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043a\u043b\u0438\u0435\u043d\u0442 ?"

    const-string v4, "\u0412\u044b \u0443\u0432\u0435\u0440\u0435\u043d\u044b, \u0447\u0442\u043e \u0445\u043e\u0442\u0438\u0442\u0435 \u043f\u0435\u0440\u0435\u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043a\u043b\u0438\u0435\u043d\u0442 ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/santrope/launcher/ViewDialogConfirm;->showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
