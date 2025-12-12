.class Lcom/santrope/launcher/ViewDialogConfirm$3$1;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogConfirm$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/ViewDialogConfirm$3;

    .line 134
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 140
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    iget-object v3, v3, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$urlGameSettings:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v2, "serverUrl":Ljava/net/URL;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 143
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 144
    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 146
    .local v4, "data":[B
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 147
    invoke-virtual {v1, v4, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 149
    .end local v4    # "data":[B
    .end local v7    # "count":I
    :cond_0
    nop

    .line 150
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 151
    nop

    .line 152
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 153
    iget-object v3, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    iget-object v3, v3, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;

    invoke-direct {v4, p0}, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;-><init>(Lcom/santrope/launcher/ViewDialogConfirm$3$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    nop

    .line 162
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "serverUrl":Ljava/net/URL;
    goto :goto_1

    .line 149
    .restart local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "serverUrl":Ljava/net/URL;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 151
    :cond_1
    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    iget-object v4, v4, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    new-instance v5, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;

    invoke-direct {v5, p0}, Lcom/santrope/launcher/ViewDialogConfirm$3$1$1;-><init>(Lcom/santrope/launcher/ViewDialogConfirm$3$1;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "serverUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/santrope/launcher/ViewDialogConfirm$3$1;->this$1:Lcom/santrope/launcher/ViewDialogConfirm$3;

    iget-object v1, v1, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
