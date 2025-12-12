.class Lcom/santrope/launcher/SettingsFragment$6;
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

    .line 92
    iput-object p1, p0, Lcom/santrope/launcher/SettingsFragment$6;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 95
    new-instance v0, Lcom/santrope/launcher/ViewDialogNickname;

    invoke-direct {v0}, Lcom/santrope/launcher/ViewDialogNickname;-><init>()V

    .line 96
    .local v0, "dialog":Lcom/santrope/launcher/ViewDialogNickname;
    iget-object v1, p0, Lcom/santrope/launcher/SettingsFragment$6;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-virtual {v1}, Lcom/santrope/launcher/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santrope/launcher/ViewDialogNickname;->showDialog(Landroid/app/Activity;)V

    .line 97
    return-void
.end method
