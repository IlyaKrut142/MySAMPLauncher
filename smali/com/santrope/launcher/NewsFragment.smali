.class public Lcom/santrope/launcher/NewsFragment;
.super Landroidx/fragment/app/Fragment;
.source "NewsFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrayOfNews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/santrope/launcher/News;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsAdapter:Lcom/santrope/launcher/NewsListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santrope/launcher/NewsFragment;->mArrayOfNews:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santrope/launcher/NewsFragment;->mNewsAdapter:Lcom/santrope/launcher/NewsListAdapter;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/NewsFragment;)Lcom/santrope/launcher/NewsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/NewsFragment;

    .line 37
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment;->mNewsAdapter:Lcom/santrope/launcher/NewsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/NewsFragment;

    .line 37
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/santrope/launcher/NewsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/NewsFragment;

    .line 37
    invoke-direct {p0}, Lcom/santrope/launcher/NewsFragment;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 140
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 141
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 144
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 146
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 149
    .local v2, "n":Landroid/net/Network;
    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 152
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_6

    .line 153
    invoke-virtual {v3, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    .line 157
    .end local v2    # "n":Landroid/net/Network;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    const v0, 0x7f0c0030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/santrope/launcher/NewsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/santrope/launcher/NewsFragment;->mActivity:Landroid/app/Activity;

    .line 54
    new-instance v1, Lcom/santrope/launcher/NewsListAdapter;

    iget-object v2, p0, Lcom/santrope/launcher/NewsFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/santrope/launcher/NewsFragment;->mArrayOfNews:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/santrope/launcher/NewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/santrope/launcher/NewsFragment;->mNewsAdapter:Lcom/santrope/launcher/NewsListAdapter;

    .line 55
    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 56
    .local v1, "newsList":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/santrope/launcher/NewsFragment;->mNewsAdapter:Lcom/santrope/launcher/NewsListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    new-instance v2, Lcom/santrope/launcher/NewsFragment$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/NewsFragment$1;-><init>(Lcom/santrope/launcher/NewsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    const v2, 0x7f0900fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 69
    .local v2, "vk":Landroid/widget/ImageView;
    new-instance v3, Lcom/santrope/launcher/NewsFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/santrope/launcher/NewsFragment$2;-><init>(Lcom/santrope/launcher/NewsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v3, 0x7f0900f4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, "unableVK":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/santrope/launcher/NewsFragment$3;

    invoke-direct {v5, p0, v3}, Lcom/santrope/launcher/NewsFragment$3;-><init>(Lcom/santrope/launcher/NewsFragment;Landroid/widget/TextView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 134
    return-object v0
.end method
