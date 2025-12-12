.class Lcom/santrope/launcher/ViewDialogConfirm;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/ViewDialogConfirm;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 28
    invoke-direct {p0, p1}, Lcom/santrope/launcher/ViewDialogConfirm;->isNetworkConnected(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private isNetworkConnected(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 203
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 205
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 207
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 209
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 210
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

    .line 211
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_2
    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 214
    .local v2, "n":Landroid/net/Network;
    if-eqz v2, :cond_6

    .line 215
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 217
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v3, :cond_6

    .line 218
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

    .line 222
    .end local v2    # "n":Landroid/net/Network;
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    :cond_6
    :goto_0
    return v1
.end method


# virtual methods
.method showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "urlGameSettings"    # Ljava/lang/String;

    .line 30
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 31
    .local v9, "dialog":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 33
    const v2, 0x7f0c002d

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 35
    const v2, 0x7f090036

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    .line 36
    .local v10, "confirmClientAndFiles":Landroid/widget/Button;
    if-nez v8, :cond_0

    .line 37
    invoke-virtual {v10, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 38
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v0, Lcom/santrope/launcher/ViewDialogConfirm$1;

    invoke-direct {v0, v6, v7, v9}, Lcom/santrope/launcher/ViewDialogConfirm$1;-><init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 103
    :cond_0
    if-ne v8, v0, :cond_1

    .line 104
    invoke-virtual {v10, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    new-instance v0, Lcom/santrope/launcher/ViewDialogConfirm$2;

    invoke-direct {v0, v6, v7, v9}, Lcom/santrope/launcher/ViewDialogConfirm$2;-><init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_1
    :goto_0
    const v0, 0x7f090083

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 120
    .local v11, "nameText":Landroid/widget/TextView;
    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v0, 0x7f090068

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 123
    .local v13, "infoText":Landroid/widget/TextView;
    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v0, 0x7f090035

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 126
    .local v15, "confirmButton":Landroid/widget/Button;
    if-nez v8, :cond_2

    .line 127
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0433\u0440\u0430\u0444\u0438\u043a\u0438"

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_2
    new-instance v5, Lcom/santrope/launcher/ViewDialogConfirm$3;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v7, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/santrope/launcher/ViewDialogConfirm$3;-><init>(Lcom/santrope/launcher/ViewDialogConfirm;ILandroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f090027

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v1, Lcom/santrope/launcher/ViewDialogConfirm$4;

    invoke-direct {v1, v6, v9}, Lcom/santrope/launcher/ViewDialogConfirm$4;-><init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 200
    return-void
.end method
