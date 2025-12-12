.class Lcom/santrope/launcher/ViewDialogNickname;
.super Ljava/lang/Object;
.source "ViewDialogNickname.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method showDialog(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 15
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 18
    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 20
    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 22
    .local v1, "nicknameInput":Landroid/widget/EditText;
    new-instance v2, Lcom/santrope/launcher/INIFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 24
    .local v2, "config":Lcom/santrope/launcher/INIFile;
    const-string v3, "client"

    const-string v4, "name"

    invoke-virtual {v2, v3, v4}, Lcom/santrope/launcher/INIFile;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    const v3, 0x7f090035

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 27
    .local v3, "confirmButton":Landroid/widget/Button;
    new-instance v4, Lcom/santrope/launcher/ViewDialogNickname$1;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/santrope/launcher/ViewDialogNickname$1;-><init>(Lcom/santrope/launcher/ViewDialogNickname;Landroid/app/Activity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v4, 0x7f090027

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 55
    .local v4, "cancelButton":Landroid/widget/Button;
    new-instance v5, Lcom/santrope/launcher/ViewDialogNickname$2;

    invoke-direct {v5, p0, v0}, Lcom/santrope/launcher/ViewDialogNickname$2;-><init>(Lcom/santrope/launcher/ViewDialogNickname;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method
