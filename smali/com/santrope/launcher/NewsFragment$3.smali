.class Lcom/santrope/launcher/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/NewsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/NewsFragment;

.field final synthetic val$unableVK:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/NewsFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/NewsFragment;

    .line 82
    iput-object p1, p0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    iput-object p2, p0, Lcom/santrope/launcher/NewsFragment$3;->val$unableVK:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 85
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v0}, Lcom/santrope/launcher/NewsFragment;->access$200(Lcom/santrope/launcher/NewsFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://api.vk.com/method/wall.get?owner_id=-184663906&count=10&extended=0&v=5.85&offset=0&access_token=eb3e0103eb3e0103eb3e0103d6eb632590eeb3eeb3e0103b26074fca7c9c8eb262fc0a0"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "url":Ljava/net/URL;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v2, "data":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 95
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "jsonData":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 97
    .local v5, "responseData":Lorg/json/JSONObject;
    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 98
    .local v6, "countOfPosts":Ljava/lang/Integer;
    const-string v7, "items"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 100
    .local v7, "arrayOfPosts":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .local v8, "posts":Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 101
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 102
    .local v9, "post":Lorg/json/JSONObject;
    new-instance v10, Ljava/util/Date;

    const-string v11, "date"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 103
    .local v10, "date":Ljava/util/Date;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "dd-MM-yyyy"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    .local v11, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v12, p0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v12}, Lcom/santrope/launcher/NewsFragment;->access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Lcom/santrope/launcher/NewsFragment$3$1;

    invoke-direct {v13, p0, v9, v11, v10}, Lcom/santrope/launcher/NewsFragment$3$1;-><init>(Lcom/santrope/launcher/NewsFragment$3;Lorg/json/JSONObject;Ljava/text/SimpleDateFormat;Ljava/util/Date;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    .end local v9    # "post":Lorg/json/JSONObject;
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    goto :goto_1

    .line 129
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "data":Ljava/lang/StringBuilder;
    .end local v3    # "jsonData":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "responseData":Lorg/json/JSONObject;
    .end local v6    # "countOfPosts":Ljava/lang/Integer;
    .end local v7    # "arrayOfPosts":Lorg/json/JSONArray;
    .end local v8    # "posts":Ljava/lang/Integer;
    :cond_1
    goto :goto_2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v1}, Lcom/santrope/launcher/NewsFragment;->access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/santrope/launcher/NewsFragment$3$2;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/NewsFragment$3$2;-><init>(Lcom/santrope/launcher/NewsFragment$3;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v1}, Lcom/santrope/launcher/NewsFragment;->access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method
