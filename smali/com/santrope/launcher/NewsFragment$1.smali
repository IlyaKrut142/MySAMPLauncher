.class Lcom/santrope/launcher/NewsFragment$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/NewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/NewsFragment;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/NewsFragment;

    .line 57
    iput-object p1, p0, Lcom/santrope/launcher/NewsFragment$1;->this$0:Lcom/santrope/launcher/NewsFragment;

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

    .line 60
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment$1;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v0}, Lcom/santrope/launcher/NewsFragment;->access$000(Lcom/santrope/launcher/NewsFragment;)Lcom/santrope/launcher/NewsListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/santrope/launcher/NewsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santrope/launcher/News;

    .line 61
    .local v0, "news":Lcom/santrope/launcher/News;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/santrope/launcher/ViewDialogNews;

    invoke-direct {v1}, Lcom/santrope/launcher/ViewDialogNews;-><init>()V

    .line 63
    .local v1, "dialogNews":Lcom/santrope/launcher/ViewDialogNews;
    iget-object v2, p0, Lcom/santrope/launcher/NewsFragment$1;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v2}, Lcom/santrope/launcher/NewsFragment;->access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/santrope/launcher/ViewDialogNews;->showDialog(Landroid/app/Activity;Lcom/santrope/launcher/News;)V

    .line 65
    .end local v1    # "dialogNews":Lcom/santrope/launcher/ViewDialogNews;
    :cond_0
    return-void
.end method
