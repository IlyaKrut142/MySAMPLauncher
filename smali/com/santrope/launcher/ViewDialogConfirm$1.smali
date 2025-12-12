.class Lcom/santrope/launcher/ViewDialogConfirm$1;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogConfirm;->showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ViewDialogConfirm;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialogConfirm;

    .line 39
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->this$0:Lcom/santrope/launcher/ViewDialogConfirm;

    iput-object p2, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 43
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "settingsIni":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 45
    .local v2, "output":Ljava/io/Writer;
    const-string v3, "# \u0421\u0442\u0440\u043e\u043a\u0438 \u0432 \u043d\u0430\u0447\u0430\u043b\u0435 \u043a\u043e\u0442\u043e\u0440\u044b\u0445 \u0441\u0442\u043e\u0438\u0442 \u0437\u043d\u0430\u043a \'#\' - \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0438\r\n# \u0414\u043b\u044f \u0442\u043e\u0433\u043e, \u0447\u0442\u043e\u0431\u044b \u0440\u0430\u0441\u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u0442\u0440\u043e\u043a\u0443 - \u0443\u0434\u0430\u043b\u0438\u0442\u0435 \u0437\u043d\u0430\u043a \'#\'\r\n\r\n[client]\r\n\r\n# NickName / \u0418\u043c\u044f \u0438\u0433\u0440\u043e\u043a\u0430\r\n#name = YourNickename\r\n\r\n# Server password / \u041f\u0430\u0440\u043e\u043b\u044c \u0441\u0435\u0440\u0432\u0435\u0440\u0430\r\n#password = changeme\r\n\r\n[debug]\r\ndebug = false\r\nonline = true\r\n\r\n[gui]\r\n##### !!! ######\r\n# \u0412\u0441\u0435 \u043a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u044b/\u0440\u0430\u0437\u043c\u0435\u0440\u044b GUI \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u043e\u0432\r\n# \u0437\u0430\u0434\u0430\u044e\u0442\u0441\u044f \u043e\u0442\u043d\u043e\u0441\u0438\u0442\u0435\u043b\u044c\u043d\u043e \u0440\u0430\u0437\u0440\u0435\u0448\u0435\u043d\u0438\u044f 1920x1080\r\n################\r\n\r\n# Font / \u0428\u0440\u0438\u0444\u0442\r\n# \u0424\u0430\u0439\u043b !\u043e\u0431\u044f\u0437\u0430\u0442\u0435\u043b\u044c\u043d\u043e! \u0434\u043e\u043b\u0436\u0435\u043d \u043d\u0430\u0445\u043e\u0434\u0438\u0442\u0441\u044f \u0432 \u043f\u0430\u043f\u043a\u0435 fonts\r\nFont = Arial.ttf\r\n\r\n# Font Size / \u0420\u0430\u0437\u043c\u0435\u0440 \u0448\u0440\u0438\u0444\u0442\u0430\r\n# \u0412\u0430\u0436\u043d\u044b\u0439 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440. \u041c\u043d\u043e\u0433\u0438\u0435 GUI \u044d\u043b\u0435\u043c\u0435\u043d\u0442\u044b \u043c\u0430\u0441\u0448\u0442\u0430\u0431\u0438\u0440\u0443\u044e\u0442\u0441\u044f \u0438\u0441\u0445\u043e\u0434\u044f\r\n# \u0438\u0437 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u044f \u0434\u0430\u043d\u043d\u043e\u0433\u043e \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0430\r\nFontSize = 30.0\r\n\r\n# \u0420\u0430\u0437\u043c\u0435\u0440 \u043e\u0431\u0432\u043e\u0434\u043a\u0438 \u0442\u0435\u043a\u0441\u0442\u0430 / Font outline size\r\nFontOutline = 2\r\n\r\n# Chat window position / \u041f\u043e\u0437\u0438\u0446\u0438\u044f \u043e\u043a\u043d\u0430 \u0447\u0430\u0442\u0430\r\nChatPosX = 325.0\r\nChatPosY = 25.0\r\n\r\n# Chat window size / \u0440\u0430\u0437\u043c\u0435\u0440 \u043e\u043a\u043d\u0430 \u0447\u0430\u0442\u0430\r\nChatSizeX = 1150.0\r\nChatSizeY = 220.0\r\n\r\n# \'samp\' pagesize analog / \u043a\u043e\u043b-\u0432\u043e \u0441\u0442\u0440\u043e\u043a \u0432\u044b\u0432\u043e\u0434\u0438\u043c\u044b\u0445 \u043d\u0430 \u044d\u043a\u0440\u0430\u043d\r\nChatMaxMessages = 8\r\n\r\n# NameTag\'s HealthBar size / \u0420\u0430\u0437\u043c\u0435\u0440 \u043f\u043e\u043b\u043e\u0441\u044b \u0425\u041f \u0434\u0440\u0443\u0433\u0438\u0445 \u0438\u0433\u0440\u043e\u043a\u043e\u0432\r\nHealthBarWidth = 60.0\r\nHealthBarHeight = 10.0\r\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 94
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 95
    iget-object v3, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$activity:Landroid/app/Activity;

    const-string v4, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0431\u044b\u043b\u0438 \u0443\u0441\u043f\u0435\u0448\u043d\u043e \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "settingsIni":Ljava/io/File;
    .end local v2    # "output":Ljava/io/Writer;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$activity:Landroid/app/Activity;

    const-string v3, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u043d\u0435 \u0431\u044b\u043b\u0438 \u0441\u0431\u0440\u043e\u0448\u0435\u043d\u044b"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    return-void
.end method
