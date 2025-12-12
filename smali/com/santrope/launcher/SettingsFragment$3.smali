.class Lcom/santrope/launcher/SettingsFragment$3;
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

    .line 65
    iput-object p1, p0, Lcom/santrope/launcher/SettingsFragment$3;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 68
    new-instance v0, Lcom/santrope/launcher/ViewDialogConfirm;

    invoke-direct {v0}, Lcom/santrope/launcher/ViewDialogConfirm;-><init>()V

    .line 69
    .local v0, "dialog":Lcom/santrope/launcher/ViewDialogConfirm;
    iget-object v1, p0, Lcom/santrope/launcher/SettingsFragment$3;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-virtual {v1}, Lcom/santrope/launcher/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/santrope/launcher/SettingsFragment$3;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-static {v2}, Lcom/santrope/launcher/SettingsFragment;->access$000(Lcom/santrope/launcher/SettingsFragment;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v3, "\u0421\u0431\u0440\u043e\u0441\u0438\u0442\u044c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 ?"

    const-string v4, "\u0412\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u0432\u0438\u0434 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a, \u043a\u043e\u0442\u043e\u0440\u044b\u0435 \u0445\u043e\u0442\u0438\u0442\u0435 \u043e\u0442\u043a\u0430\u0442\u0438\u0442\u044c \u043a \u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u043e\u043c\u0443 \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u044e."

    invoke-virtual/range {v0 .. v5}, Lcom/santrope/launcher/ViewDialogConfirm;->showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
