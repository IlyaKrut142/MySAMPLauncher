.class Lcom/santrope/launcher/ServersFragment$2;
.super Ljava/lang/Object;
.source "ServersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ServersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ServersFragment;

.field final synthetic val$vk:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ServersFragment;

    .line 67
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$2;->this$0:Lcom/santrope/launcher/ServersFragment;

    iput-object p2, p0, Lcom/santrope/launcher/ServersFragment$2;->val$vk:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$2;->val$vk:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "https://vk.com/info.blade"

    .line 71
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "uriUrl":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    .local v2, "launchBrowser":Landroid/content/Intent;
    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$2;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-virtual {v3, v2}, Lcom/santrope/launcher/ServersFragment;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "uriUrl":Landroid/net/Uri;
    .end local v2    # "launchBrowser":Landroid/content/Intent;
    :cond_0
    return-void
.end method
