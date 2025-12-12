.class Lcom/santrope/launcher/ServersFragment$3;
.super Ljava/lang/Object;
.source "ServersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ServersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ServersFragment;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ServersFragment;

    .line 79
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$3;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 82
    move-object/from16 v1, p0

    const-string v0, "maxplayers"

    iget-object v2, v1, Lcom/santrope/launcher/ServersFragment$3;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v2}, Lcom/santrope/launcher/ServersFragment;->access$200(Lcom/santrope/launcher/ServersFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://145.239.133.5/servers1.json"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "url":Ljava/net/URL;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 88
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v4, "data":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 92
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, "serversData":Lorg/json/JSONObject;
    const-string v7, "servers"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 94
    .local v7, "aSrv":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 95
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 97
    .local v9, "srv":Lorg/json/JSONObject;
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "password"

    if-nez v10, :cond_2

    :try_start_1
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    .line 100
    :cond_1
    const-string v10, "#c62d3f"

    .local v10, "onl":Ljava/lang/String;
    goto :goto_3

    .line 98
    .end local v10    # "onl":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v10, "#8dc047"

    .line 101
    .restart local v10    # "onl":Ljava/lang/String;
    :goto_3
    iget-object v12, v1, Lcom/santrope/launcher/ServersFragment$3;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v12}, Lcom/santrope/launcher/ServersFragment;->access$000(Lcom/santrope/launcher/ServersFragment;)Lcom/santrope/launcher/ServerListAdapter;

    move-result-object v15

    new-instance v14, Lcom/santrope/launcher/Server;

    const-string v12, "addr"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "hostname"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v2

    .end local v2    # "url":Ljava/net/URL;
    .local v21, "url":Ljava/net/URL;
    const-string v2, "players"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v2, "gamemode"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "mapname"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ping "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "ping"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v12, v14

    move-object v2, v14

    move-object v14, v10

    move-object/from16 v22, v0

    move-object v0, v15

    move v15, v11

    invoke-direct/range {v12 .. v20}, Lcom/santrope/launcher/Server;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/santrope/launcher/ServerListAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v9    # "srv":Lorg/json/JSONObject;
    .end local v10    # "onl":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v21

    move-object/from16 v0, v22

    goto/16 :goto_1

    .end local v21    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    :cond_3
    move-object/from16 v21, v2

    .line 105
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "data":Ljava/lang/StringBuilder;
    .end local v5    # "serversData":Lorg/json/JSONObject;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "aSrv":Lorg/json/JSONArray;
    .end local v8    # "i":I
    goto :goto_4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/santrope/launcher/ServersFragment$3;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v2}, Lcom/santrope/launcher/ServersFragment;->access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    return-void
.end method
