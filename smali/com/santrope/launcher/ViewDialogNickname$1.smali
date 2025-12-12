.class Lcom/santrope/launcher/ViewDialogNickname$1;
.super Ljava/lang/Object;
.source "ViewDialogNickname.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogNickname;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ViewDialogNickname;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$nicknameInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogNickname;Landroid/app/Activity;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialogNickname;

    .line 27
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->this$0:Lcom/santrope/launcher/ViewDialogNickname;

    iput-object p2, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$nicknameInput:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 31
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.rockstargames.gtasa/files/SAMP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "stringBuilder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "name"

    const-string v5, "client"

    const-string v6, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    if-nez v2, :cond_0

    .line 35
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lcom/santrope/launcher/INIFile;

    iget-object v7, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$activity:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v7, v6}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 38
    .local v2, "config":Lcom/santrope/launcher/INIFile;
    iget-object v6, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$nicknameInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6, v3}, Lcom/santrope/launcher/INIFile;->setStringProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lcom/santrope/launcher/INIFile;->save()V

    .line 40
    .end local v2    # "config":Lcom/santrope/launcher/INIFile;
    goto :goto_0

    .line 42
    :cond_0
    new-instance v2, Lcom/santrope/launcher/INIFile;

    iget-object v7, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$activity:Landroid/app/Activity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v7, v6}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    .restart local v2    # "config":Lcom/santrope/launcher/INIFile;
    iget-object v6, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$nicknameInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6, v3}, Lcom/santrope/launcher/INIFile;->setStringProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Lcom/santrope/launcher/INIFile;->save()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .end local v0    # "stringBuilder":Ljava/lang/String;
    .end local v1    # "folder":Ljava/io/File;
    .end local v2    # "config":Lcom/santrope/launcher/INIFile;
    :cond_1
    :goto_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogNickname$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 51
    return-void
.end method
