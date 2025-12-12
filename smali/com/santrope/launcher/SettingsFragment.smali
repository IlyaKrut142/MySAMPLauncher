.class public Lcom/santrope/launcher/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# instance fields
.field private mUrlGameSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/SettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/SettingsFragment;

    .line 20
    iget-object v0, p0, Lcom/santrope/launcher/SettingsFragment;->mUrlGameSettings:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/santrope/launcher/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/santrope/launcher/SettingsFragment;->mUrlGameSettings:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SettingsFragment$1;-><init>(Lcom/santrope/launcher/SettingsFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 52
    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    .local v1, "vk":Landroid/widget/ImageView;
    new-instance v2, Lcom/santrope/launcher/SettingsFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/santrope/launcher/SettingsFragment$2;-><init>(Lcom/santrope/launcher/SettingsFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f0900a6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    .local v2, "resetSettings":Landroid/widget/Button;
    new-instance v3, Lcom/santrope/launcher/SettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/santrope/launcher/SettingsFragment$3;-><init>(Lcom/santrope/launcher/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v3, 0x7f0900a3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 74
    .local v3, "reinstallClient":Landroid/widget/Button;
    new-instance v4, Lcom/santrope/launcher/SettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/SettingsFragment$4;-><init>(Lcom/santrope/launcher/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v4, 0x7f0900a4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 83
    .local v4, "reinstallGame":Landroid/widget/Button;
    new-instance v5, Lcom/santrope/launcher/SettingsFragment$5;

    invoke-direct {v5, p0}, Lcom/santrope/launcher/SettingsFragment$5;-><init>(Lcom/santrope/launcher/SettingsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v5, 0x7f09002d

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 92
    .local v5, "changeNickname":Landroid/widget/Button;
    new-instance v6, Lcom/santrope/launcher/SettingsFragment$6;

    invoke-direct {v6, p0}, Lcom/santrope/launcher/SettingsFragment$6;-><init>(Lcom/santrope/launcher/SettingsFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object v0
.end method
