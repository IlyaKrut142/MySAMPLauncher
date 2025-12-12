.class Lcom/santrope/launcher/ServersFragment$4$1;
.super Ljava/util/TimerTask;
.source "ServersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ServersFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/ServersFragment$4;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/ServersFragment$4;

    .line 121
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 124
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v0, v0, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v0}, Lcom/santrope/launcher/ServersFragment;->access$200(Lcom/santrope/launcher/ServersFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://145.239.133.5/servers1.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "url":Ljava/net/URL;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 130
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v2, "data":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 134
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "serversData":Lorg/json/JSONObject;
    const-string v5, "servers"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 137
    .local v5, "aSrv":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 138
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 139
    .local v7, "srv":Lorg/json/JSONObject;
    move v8, v6

    .line 140
    .local v8, "id":I
    iget-object v9, p0, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v9, v9, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v9}, Lcom/santrope/launcher/ServersFragment;->access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/santrope/launcher/ServersFragment$4$1$1;

    invoke-direct {v10, p0, v7, v8}, Lcom/santrope/launcher/ServersFragment$4$1$1;-><init>(Lcom/santrope/launcher/ServersFragment$4$1;Lorg/json/JSONObject;I)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v7    # "srv":Lorg/json/JSONObject;
    .end local v8    # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "data":Ljava/lang/StringBuilder;
    .end local v3    # "serversData":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "aSrv":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_1
    goto :goto_2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v1, v1, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v1}, Lcom/santrope/launcher/ServersFragment;->access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method
