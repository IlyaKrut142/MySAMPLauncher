.class Lcom/santrope/launcher/NewsFragment$3$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/NewsFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/NewsFragment$3;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$post:Lorg/json/JSONObject;

.field final synthetic val$simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/NewsFragment$3;Lorg/json/JSONObject;Ljava/text/SimpleDateFormat;Ljava/util/Date;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/NewsFragment$3;

    .line 104
    iput-object p1, p0, Lcom/santrope/launcher/NewsFragment$3$1;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    iput-object p2, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$post:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$simpleDateFormat:Ljava/text/SimpleDateFormat;

    iput-object p4, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$date:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$post:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n\n"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .local v0, "nameAndText":[Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/santrope/launcher/NewsFragment$3$1;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    iget-object v1, v1, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v1}, Lcom/santrope/launcher/NewsFragment;->access$000(Lcom/santrope/launcher/NewsFragment;)Lcom/santrope/launcher/NewsListAdapter;

    move-result-object v1

    new-instance v2, Lcom/santrope/launcher/News;

    iget-object v3, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$simpleDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/santrope/launcher/NewsFragment$3$1;->val$date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/santrope/launcher/News;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/santrope/launcher/NewsListAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 116
    .end local v0    # "nameAndText":[Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/santrope/launcher/NewsFragment$3$1;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    iget-object v1, v1, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v1}, Lcom/santrope/launcher/NewsFragment;->access$100(Lcom/santrope/launcher/NewsFragment;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 117
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment$3$1;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    iget-object v0, v0, Lcom/santrope/launcher/NewsFragment$3;->this$0:Lcom/santrope/launcher/NewsFragment;

    invoke-static {v0}, Lcom/santrope/launcher/NewsFragment;->access$000(Lcom/santrope/launcher/NewsFragment;)Lcom/santrope/launcher/NewsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santrope/launcher/NewsListAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method
