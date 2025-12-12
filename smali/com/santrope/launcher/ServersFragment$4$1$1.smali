.class Lcom/santrope/launcher/ServersFragment$4$1$1;
.super Ljava/lang/Object;
.source "ServersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ServersFragment$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/santrope/launcher/ServersFragment$4$1;

.field final synthetic val$id:I

.field final synthetic val$srv:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment$4$1;Lorg/json/JSONObject;I)V
    .locals 0
    .param p1, "this$2"    # Lcom/santrope/launcher/ServersFragment$4$1;

    .line 140
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->this$2:Lcom/santrope/launcher/ServersFragment$4$1;

    iput-object p2, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    iput p3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 145
    const-string v0, "maxplayers"

    :try_start_0
    iget-object v1, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "password"

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    const-string v1, "#c62d3f"

    .local v1, "onl":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v1    # "onl":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v1, "#8dc047"

    .line 149
    .restart local v1    # "onl":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->this$2:Lcom/santrope/launcher/ServersFragment$4$1;

    iget-object v3, v3, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v3, v3, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v3}, Lcom/santrope/launcher/ServersFragment;->access$300(Lcom/santrope/launcher/ServersFragment;)Ljava/util/ArrayList;

    move-result-object v12

    iget v13, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$id:I

    new-instance v14, Lcom/santrope/launcher/Server;

    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v4, "addr"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iget-object v2, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v3, "hostname"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v5, "players"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v2, "gamemode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v2, "mapname"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->val$srv:Lorg/json/JSONObject;

    const-string v3, "ping"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v3, v14

    move-object v5, v1

    invoke-direct/range {v3 .. v11}, Lcom/santrope/launcher/Server;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    nop

    .end local v1    # "onl":Ljava/lang/String;
    goto :goto_2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->this$2:Lcom/santrope/launcher/ServersFragment$4$1;

    iget-object v1, v1, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v1, v1, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v1}, Lcom/santrope/launcher/ServersFragment;->access$100(Lcom/santrope/launcher/ServersFragment;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 153
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    iget-object v0, p0, Lcom/santrope/launcher/ServersFragment$4$1$1;->this$2:Lcom/santrope/launcher/ServersFragment$4$1;

    iget-object v0, v0, Lcom/santrope/launcher/ServersFragment$4$1;->this$1:Lcom/santrope/launcher/ServersFragment$4;

    iget-object v0, v0, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-static {v0}, Lcom/santrope/launcher/ServersFragment;->access$000(Lcom/santrope/launcher/ServersFragment;)Lcom/santrope/launcher/ServerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santrope/launcher/ServerListAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method
