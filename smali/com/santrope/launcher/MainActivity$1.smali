.class Lcom/santrope/launcher/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/santrope/launcher/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/MainActivity;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/MainActivity;

    .line 29
    iput-object p1, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v0, v0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 43
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v0, Lcom/santrope/launcher/MainActivity;->mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;

    iput-object v2, v0, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    .line 44
    return v1

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v0, v0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->mServersFragment:Lcom/santrope/launcher/ServersFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 39
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v0, Lcom/santrope/launcher/MainActivity;->mServersFragment:Lcom/santrope/launcher/ServersFragment;

    iput-object v2, v0, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    .line 40
    return v1

    .line 34
    :pswitch_2
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v0, v0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v2, Lcom/santrope/launcher/MainActivity;->mNewsFragment:Lcom/santrope/launcher/NewsFragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 35
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity$1;->this$0:Lcom/santrope/launcher/MainActivity;

    iget-object v2, v0, Lcom/santrope/launcher/MainActivity;->mNewsFragment:Lcom/santrope/launcher/NewsFragment;

    iput-object v2, v0, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    .line 36
    return v1

    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
