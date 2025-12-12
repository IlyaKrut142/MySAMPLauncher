.class public Lcom/santrope/launcher/ServerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/santrope/launcher/ServerListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/santrope/launcher/Server;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/santrope/launcher/Server;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/santrope/launcher/Server;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 30
    invoke-virtual {p0, p1}, Lcom/santrope/launcher/ServerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santrope/launcher/Server;

    .line 33
    .local v0, "server":Lcom/santrope/launcher/Server;
    if-nez p2, :cond_0

    .line 34
    new-instance v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;-><init>(Lcom/santrope/launcher/ServerListAdapter$1;)V

    .line 35
    .local v1, "viewHolder":Lcom/santrope/launcher/ServerListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/santrope/launcher/ServerListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 36
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0c0034

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    const v3, 0x7f090091

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->online:Landroid/widget/ImageView;

    .line 38
    const v3, 0x7f0900c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->serverName:Landroid/widget/TextView;

    .line 39
    const v3, 0x7f09009e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->playerCount:Landroid/widget/TextView;

    .line 40
    const v3, 0x7f09009d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->ping:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 43
    .end local v1    # "viewHolder":Lcom/santrope/launcher/ServerListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;

    .line 46
    .restart local v1    # "viewHolder":Lcom/santrope/launcher/ServerListAdapter$ViewHolder;
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    iget-object v2, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->online:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/santrope/launcher/Server;->online:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 48
    iget-object v2, v0, Lcom/santrope/launcher/Server;->hostName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->serverName:Landroid/widget/TextView;

    const-string v3, "SanTrope Role Play"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 51
    :cond_1
    iget-object v2, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->serverName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/santrope/launcher/Server;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_1
    iget-object v2, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->playerCount:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/santrope/launcher/Server;->playerCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, v1, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;->ping:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/santrope/launcher/Server;->ping:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    return-object p2
.end method
