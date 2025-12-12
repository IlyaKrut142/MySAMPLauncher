.class Lcom/santrope/launcher/ViewDialog;
.super Ljava/lang/Object;
.source "ViewDialog.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/ViewDialog;Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/santrope/launcher/ViewDialog;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/santrope/launcher/ViewDialog;->connectToServer(Landroid/app/Activity;I)V

    return-void
.end method

.method private connectToServer(Landroid/app/Activity;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "serverIndex"    # I

    .line 55
    new-instance v0, Lcom/santrope/launcher/INIFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 57
    .local v0, "config":Lcom/santrope/launcher/INIFile;
    const-string v1, "client"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/santrope/launcher/INIFile;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/santrope/launcher/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v1, 0x1

    const-string v2, "\u0412\u0432\u0435\u0434\u0438\u0442\u0435 \u0412\u0430\u0448 \u043d\u0438\u043a\u043d\u0435\u0439\u043c"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    return-void

    .line 63
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/com.rockstargames.gtasa/files/SAMP/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "stringBuilder":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "server"

    if-nez v4, :cond_1

    .line 67
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {v0, v1, v6, p2, v5}, Lcom/santrope/launcher/INIFile;->setIntegerProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/santrope/launcher/INIFile;->save()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0, v1, v6, p2, v5}, Lcom/santrope/launcher/INIFile;->setIntegerProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/santrope/launcher/INIFile;->save()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .end local v2    # "stringBuilder":Ljava/lang/String;
    .end local v3    # "folder":Ljava/io/File;
    :cond_2
    :goto_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, 0x65

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.rockstargames.gtasa"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 80
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_3
    return-void
.end method


# virtual methods
.method showDialog(Landroid/app/Activity;Lcom/santrope/launcher/Server;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server"    # Lcom/santrope/launcher/Server;
    .param p3, "position"    # I

    .line 19
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 22
    const v1, 0x7f0c002c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 24
    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 25
    .local v1, "serverOnline":Landroid/widget/ImageView;
    iget-object v2, p2, Lcom/santrope/launcher/Server;->online:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 27
    const v2, 0x7f0900c2

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    .local v2, "serverPing":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/santrope/launcher/Server;->ping:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v3, 0x7f0900bf

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    .local v3, "serverInfo":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/santrope/launcher/Server;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nPlayers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/santrope/launcher/Server;->playerCount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/santrope/launcher/Server;->gameMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nLanguage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/santrope/launcher/Server;->language:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v4, 0x7f090037

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 34
    .local v4, "connectButton":Landroid/widget/Button;
    new-instance v5, Lcom/santrope/launcher/ViewDialog$1;

    invoke-direct {v5, p0, p1, p3, v0}, Lcom/santrope/launcher/ViewDialog$1;-><init>(Lcom/santrope/launcher/ViewDialog;Landroid/app/Activity;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v5, 0x7f090027

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 43
    .local v5, "cancelButton":Landroid/widget/Button;
    new-instance v6, Lcom/santrope/launcher/ViewDialog$2;

    invoke-direct {v6, p0, v0}, Lcom/santrope/launcher/ViewDialog$2;-><init>(Lcom/santrope/launcher/ViewDialog;Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 51
    return-void
.end method
