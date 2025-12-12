.class Lcom/santrope/launcher/ServersFragment$1;
.super Ljava/lang/Object;
.source "ServersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ServersFragment;

    .line 55
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$1;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 58
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$1;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v0}, Lcom/santrope/launcher/ServersFragment;->access$000(Lcom/santrope/launcher/ServersFragment;)Lcom/santrope/launcher/ServerListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/santrope/launcher/ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santrope/launcher/Server;

    .line 59
    .local v0, "server":Lcom/santrope/launcher/Server;
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Lcom/santrope/launcher/ViewDialog;

    invoke-direct {v1}, Lcom/santrope/launcher/ViewDialog;-><init>()V

    .line 61
    .local v1, "dialog":Lcom/santrope/launcher/ViewDialog;
    iget-object v2, p0, Lcom/santrope/launcher/ServersFragment$1;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v2}, Lcom/santrope/launcher/ServersFragment;->access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p3}, Lcom/santrope/launcher/ViewDialog;->showDialog(Landroid/app/Activity;Lcom/santrope/launcher/Server;I)V

    .line 63
    .end local v1    # "dialog":Lcom/santrope/launcher/ViewDialog;
    :cond_0
    return-void
.end method
