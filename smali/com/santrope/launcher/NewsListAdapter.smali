.class public Lcom/santrope/launcher/NewsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NewsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/santrope/launcher/NewsListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/santrope/launcher/News;",
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
            "Lcom/santrope/launcher/News;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p2, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/santrope/launcher/News;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0, p1}, Lcom/santrope/launcher/NewsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santrope/launcher/News;

    .line 31
    .local v0, "news":Lcom/santrope/launcher/News;
    if-nez p2, :cond_0

    .line 32
    new-instance v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;-><init>(Lcom/santrope/launcher/NewsListAdapter$1;)V

    .line 33
    .local v1, "viewHolder":Lcom/santrope/launcher/NewsListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/santrope/launcher/NewsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 34
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0c0033

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 35
    const v3, 0x7f09003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 36
    const v3, 0x7f090082

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 37
    const v3, 0x7f09006d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->photo:Landroid/widget/LinearLayout;

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 40
    .end local v1    # "viewHolder":Lcom/santrope/launcher/NewsListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;

    .line 42
    .restart local v1    # "viewHolder":Lcom/santrope/launcher/NewsListAdapter$ViewHolder;
    :goto_0
    if-eqz v0, :cond_1

    .line 43
    iget-object v2, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->date:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/santrope/launcher/News;->mDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/santrope/launcher/News;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v2, v0, Lcom/santrope/launcher/News;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, v1, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;->photo:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/santrope/launcher/News;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_1
    return-object p2
.end method
