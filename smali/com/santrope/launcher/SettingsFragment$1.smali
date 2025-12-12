.class Lcom/santrope/launcher/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/SettingsFragment;

    .line 33
    iput-object p1, p0, Lcom/santrope/launcher/SettingsFragment$1;->this$0:Lcom/santrope/launcher/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 37
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://145.239.133.5/info1.json"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "ufURL":Ljava/net/URL;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v1, "ufReader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v2, "ufData":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "ufLine":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 44
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "ufJSONData":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/santrope/launcher/SettingsFragment$1;->this$0:Lcom/santrope/launcher/SettingsFragment;

    const-string v6, "URL_GAME_SETTINGS"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/santrope/launcher/SettingsFragment;->access$002(Lcom/santrope/launcher/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .end local v0    # "ufURL":Ljava/net/URL;
    .end local v1    # "ufReader":Ljava/io/BufferedReader;
    .end local v2    # "ufData":Ljava/lang/StringBuilder;
    .end local v3    # "ufJSONData":Lorg/json/JSONObject;
    .end local v4    # "ufLine":Ljava/lang/String;
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 49
    :goto_1
    return-void
.end method
