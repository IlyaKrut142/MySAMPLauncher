.class public Lcom/santrope/launcher/ServersFragment;
.super Landroidx/fragment/app/Fragment;
.source "ServersFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mArrayOfServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/santrope/launcher/Server;",
            ">;"
        }
    .end annotation
.end field

.field private mServersAdapter:Lcom/santrope/launcher/ServerListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/santrope/launcher/ServersFragment;->mArrayOfServers:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/ServersFragment;)Lcom/santrope/launcher/ServerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/ServersFragment;

    .line 35
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment;->mServersAdapter:Lcom/santrope/launcher/ServerListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/ServersFragment;

    .line 35
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/santrope/launcher/ServersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/ServersFragment;

    .line 35
    invoke-direct {p0}, Lcom/santrope/launcher/ServersFragment;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/santrope/launcher/ServersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/ServersFragment;

    .line 35
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment;->mArrayOfServers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 172
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 173
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 174
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 176
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 177
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

    .line 178
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 181
    .local v2, "n":Landroid/net/Network;
    if-eqz v2, :cond_6

    .line 182
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 184
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_6

    .line 185
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

    .line 189
    .end local v2    # "n":Landroid/net/Network;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    const v0, 0x7f0c0031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/santrope/launcher/ServersFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/santrope/launcher/ServersFragment;->mActivity:Landroid/app/Activity;

    .line 52
    new-instance v1, Lcom/santrope/launcher/ServerListAdapter;

    iget-object v2, p0, Lcom/santrope/launcher/ServersFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment;->mArrayOfServers:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/santrope/launcher/ServerListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/santrope/launcher/ServersFragment;->mServersAdapter:Lcom/santrope/launcher/ServerListAdapter;

    .line 53
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 54
    .local v1, "serverList":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/santrope/launcher/ServersFragment;->mServersAdapter:Lcom/santrope/launcher/ServerListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    new-instance v2, Lcom/santrope/launcher/ServersFragment$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/ServersFragment$1;-><init>(Lcom/santrope/launcher/ServersFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    const v2, 0x7f0900fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, "vk":Landroid/widget/ImageView;
    new-instance v3, Lcom/santrope/launcher/ServersFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/santrope/launcher/ServersFragment$2;-><init>(Lcom/santrope/launcher/ServersFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/santrope/launcher/ServersFragment$3;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/ServersFragment$3;-><init>(Lcom/santrope/launcher/ServersFragment;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    .local v3, "downloadServersDataThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 111
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/santrope/launcher/ServersFragment;->mActivity:Landroid/app/Activity;

    const/16 v6, 0x65

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 117
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/santrope/launcher/ServersFragment$4;

    invoke-direct {v5, p0}, Lcom/santrope/launcher/ServersFragment$4;-><init>(Lcom/santrope/launcher/ServersFragment;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 166
    return-object v0
.end method
