.class Lcom/santrope/launcher/SplashScreen$8;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/SplashScreen;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/SplashScreen;

    .line 2258
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 2262
    :try_start_0
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Getting a file from the server with links to files"

    const/16 v5, 0x69

    invoke-static {v3, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2263
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://145.239.133.5/info1.json"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v3, "ufURL":Ljava/net/URL;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2266
    .local v4, "ufReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2267
    .local v6, "ufData":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "ufLine":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2268
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2269
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 2270
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2271
    .local v7, "ufJSONData":Lorg/json/JSONObject;
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_CLIENT"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1302(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2272
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_FILES"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1002(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2273
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_LITE_CACHE"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$802(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2274
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_FULL_CACHE"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1402(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2275
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_UPD"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1602(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2276
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_GAME_SETTINGS"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1102(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 2278
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Getting a file from a server with Assembly versions"

    invoke-static {v9, v5, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2279
    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1600(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v9, "url":Ljava/net/URL;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2282
    .local v10, "sReader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2283
    .local v11, "sData":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "sLine":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 2284
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2285
    :cond_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2286
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v12, "serverJsonData":Lorg/json/JSONObject;
    const-string v14, "files"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$1702(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 2288
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1700()Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$902(I)I

    .line 2289
    const-string v14, "client"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$1202(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_34

    .line 2302
    nop

    .line 2304
    .end local v3    # "ufURL":Ljava/net/URL;
    .end local v4    # "ufReader":Ljava/io/BufferedReader;
    .end local v6    # "ufData":Ljava/lang/StringBuilder;
    .end local v7    # "ufJSONData":Lorg/json/JSONObject;
    .end local v8    # "ufLine":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "sReader":Ljava/io/BufferedReader;
    .end local v11    # "sData":Ljava/lang/StringBuilder;
    .end local v12    # "serverJsonData":Lorg/json/JSONObject;
    .end local v13    # "sLine":Ljava/lang/String;
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v4, 0x0

    const-string v6, "santrope-settings"

    invoke-virtual {v3, v6, v4}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2305
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v7, "santrope-settings"

    invoke-virtual {v6, v7, v4}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2307
    .local v6, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v7, -0x1

    const-string v8, "resume_type"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2308
    .local v9, "resume":I
    const-string v10, "/Android/data/com.rockstargames.gtasa"

    const-string v12, "/"

    const-string v13, "/Android/data/com.rockstargames.gtasa/files/"

    const/4 v14, 0x3

    const-string v15, "/client.zip"

    const-string v11, "/files.zip"

    const/4 v4, 0x1

    const/4 v2, 0x2

    if-eqz v9, :cond_3a

    if-eq v9, v4, :cond_31

    if-eq v9, v2, :cond_2d

    if-eq v9, v14, :cond_2b

    .line 2581
    const-string v5, "reinstall"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2582
    .local v5, "reinstall":I
    if-eq v5, v4, :cond_29

    if-eq v5, v2, :cond_28

    if-eq v5, v14, :cond_24

    .line 2667
    new-instance v14, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Android/data/com.rockstargames.gtasa/files/texdb/gta3.img"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 2668
    .local v2, "liteCache":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/Android/obb/com.rockstargames.gtasa/patch.8.com.rockstargames.gtasa.obb"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2669
    .local v4, "fullCache":Ljava/io/File;
    new-instance v7, Lcom/santrope/launcher/PrefManager;

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v7, v14}, Lcom/santrope/launcher/PrefManager;-><init>(Landroid/content/Context;)V

    .line 2670
    .local v7, "prefManager":Lcom/santrope/launcher/PrefManager;
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v14

    move/from16 v16, v5

    const/4 v5, -0x1

    .end local v5    # "reinstall":I
    .local v16, "reinstall":I
    if-eq v14, v5, :cond_4

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v14

    if-eq v14, v5, :cond_4

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$2000(Lcom/santrope/launcher/SplashScreen;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2671
    :cond_2
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v8, "Install the client"

    const/16 v10, 0x69

    invoke-static {v5, v10, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2673
    new-instance v5, Ljava/io/File;

    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "client.apk"

    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    .local v5, "fileInstall":Ljava/io/File;
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v8}, Lcom/santrope/launcher/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "com.santrope.launcher.provider"

    invoke-static {v8, v10, v5}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 2675
    .local v8, "uri":Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2676
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2677
    const-string v11, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2678
    const-string v11, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2679
    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2680
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2681
    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lcom/santrope/launcher/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2682
    return-void

    .line 2670
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "reinstall":I
    .local v5, "reinstall":I
    :cond_3
    move/from16 v16, v5

    .line 2684
    .end local v5    # "reinstall":I
    .restart local v16    # "reinstall":I
    :cond_4
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2685
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v8, "Download the cache"

    const/16 v10, 0x69

    invoke-static {v5, v10, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2686
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v8, Lcom/santrope/launcher/SplashScreen$8$11;

    invoke-direct {v8, v1}, Lcom/santrope/launcher/SplashScreen$8$11;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v5, v8}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2693
    return-void

    .line 2695
    :cond_5
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    goto/16 :goto_6

    .line 2696
    :cond_7
    :goto_2
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Download files and client"

    const/16 v14, 0x69

    invoke-static {v5, v14, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2697
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v10, Lcom/santrope/launcher/SplashScreen$8$12;

    invoke-direct {v10, v1}, Lcom/santrope/launcher/SplashScreen$8$12;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v5, v10}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2707
    const/4 v5, 0x2

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2708
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2709
    new-instance v10, Lcom/santrope/launcher/DownloadManager;

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v20, v2

    .end local v2    # "liteCache":Ljava/io/File;
    .local v20, "liteCache":Ljava/io/File;
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v2

    invoke-direct {v10, v14, v5, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    move-object v2, v10

    .line 2710
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v10, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v10, v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v21, v4

    const/4 v4, 0x0

    .end local v4    # "fullCache":Ljava/io/File;
    .local v21, "fullCache":Ljava/io/File;
    invoke-virtual {v14, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v10, v5

    invoke-virtual {v2, v10}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2712
    :try_start_1
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2713
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v4, v5, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2714
    .local v4, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v17, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :try_start_2
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v5, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v5, v10

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2715
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2717
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2718
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2719
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v2, v5, v11, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2720
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v10, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-virtual {v2, v10}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2722
    :try_start_3
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2723
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v11

    const/4 v13, 0x1

    invoke-direct {v5, v10, v13, v11}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v5, v10}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2728
    goto :goto_3

    .line 2725
    :cond_8
    return-void

    .line 2726
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 2727
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v10, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2729
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2730
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2731
    return-void

    .line 2733
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    :cond_9
    nop

    .line 2737
    goto :goto_5

    .line 2735
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 2734
    .end local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_a
    return-void

    .line 2735
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .line 2736
    .local v2, "e":Ljava/lang/Exception;
    .restart local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_4
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x65

    invoke-static {v4, v8, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2738
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 2695
    .end local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v20    # "liteCache":Ljava/io/File;
    .end local v21    # "fullCache":Ljava/io/File;
    .local v2, "liteCache":Ljava/io/File;
    .local v4, "fullCache":Ljava/io/File;
    :cond_b
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .line 2740
    .end local v2    # "liteCache":Ljava/io/File;
    .end local v4    # "fullCache":Ljava/io/File;
    .restart local v20    # "liteCache":Ljava/io/File;
    .restart local v21    # "fullCache":Ljava/io/File;
    :goto_6
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2741
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$13;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$13;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2750
    const-string v2, "installType"

    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2753
    .local v2, "install_type":I
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Version of game: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x69

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2754
    if-eqz v2, :cond_e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    goto/16 :goto_7

    .line 2777
    :cond_c
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Check full cache"

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2778
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "/Android/obb/com.rockstargames.gtasa/patch.8.com.rockstargames.gtasa.obb"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2779
    .local v4, "patchFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/Android/obb/com.rockstargames.gtasa/main.8.com.rockstargames.gtasa.obb"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2780
    .local v5, "mainFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_f

    .line 2781
    :cond_d
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v8, "dir":Ljava/io/File;
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v10, v8}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2783
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v11, "Download full cache"

    const/16 v14, 0x69

    invoke-static {v10, v14, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2784
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v11, Lcom/santrope/launcher/SplashScreen$8$15;

    invoke-direct {v11, v1}, Lcom/santrope/launcher/SplashScreen$8$15;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2795
    return-void

    .line 2756
    .end local v4    # "patchFile":Ljava/io/File;
    .end local v5    # "mainFile":Ljava/io/File;
    .end local v8    # "dir":Ljava/io/File;
    :cond_e
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Check lite cache"

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2757
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/Android/data/com.rockstargames.gtasa/files/texdb/gta3.img"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2758
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f

    .line 2759
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2760
    .local v5, "dir":Ljava/io/File;
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v8, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2761
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Download lite cache"

    const/16 v11, 0x69

    invoke-static {v8, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2762
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v10, Lcom/santrope/launcher/SplashScreen$8$14;

    invoke-direct {v10, v1}, Lcom/santrope/launcher/SplashScreen$8$14;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2773
    return-void

    .line 2799
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "dir":Ljava/io/File;
    :cond_f
    :goto_7
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$8$16;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$8$16;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2806
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Lcom/santrope/launcher/SplashScreen;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2809
    :try_start_5
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Getting a local file with the versions of the assemblies"

    const/16 v10, 0x69

    invoke-static {v4, v10, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2810
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/vrs.json"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2811
    .local v4, "lFile":Ljava/io/File;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2813
    .local v5, "lReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2814
    .local v10, "lData":Ljava/lang/StringBuilder;
    :goto_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1d

    move-object/from16 v22, v14

    .local v22, "lLine":Ljava/lang/String;
    if-eqz v14, :cond_10

    .line 2815
    move-object/from16 v14, v22

    .end local v22    # "lLine":Ljava/lang/String;
    .local v14, "lLine":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    .line 3025
    .end local v4    # "lFile":Ljava/io/File;
    .end local v5    # "lReader":Ljava/io/BufferedReader;
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    goto/16 :goto_1a

    .line 2978
    :catch_4
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    goto/16 :goto_1d

    :catch_5
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    goto/16 :goto_1d

    .line 2816
    .restart local v4    # "lFile":Ljava/io/File;
    .restart local v5    # "lReader":Ljava/io/BufferedReader;
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v22    # "lLine":Ljava/lang/String;
    :cond_10
    move-object/from16 v14, v22

    .end local v22    # "lLine":Ljava/lang/String;
    .restart local v14    # "lLine":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    .line 2818
    move/from16 v22, v2

    .end local v2    # "install_type":I
    .local v22, "install_type":I
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v4

    .end local v4    # "lFile":Ljava/io/File;
    .local v24, "lFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2819
    .local v2, "localJsonData":Lorg/json/JSONObject;
    const-string v4, "files-vrs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1802(I)I

    .line 2820
    const-string v4, "client-vrs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1902(I)I

    .line 2823
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$2000(Lcom/santrope/launcher/SplashScreen;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2824
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v23, v2

    .end local v2    # "localJsonData":Lorg/json/JSONObject;
    .local v23, "localJsonData":Lorg/json/JSONObject;
    const-string v2, "Download files and client | Client was not installed"

    move-object/from16 v25, v5

    const/16 v5, 0x69

    .end local v5    # "lReader":Ljava/io/BufferedReader;
    .local v25, "lReader":Ljava/io/BufferedReader;
    invoke-static {v4, v5, v2}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2826
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2827
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2829
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v5
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1a

    move-object/from16 v26, v7

    const/4 v7, 0x2

    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .local v26, "prefManager":Lcom/santrope/launcher/PrefManager;
    :try_start_9
    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2830
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    move/from16 v27, v9

    const/4 v9, 0x0

    .end local v9    # "resume":I
    .local v27, "resume":I
    :try_start_a
    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_19
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    .line 2832
    :try_start_b
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2833
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2834
    .local v4, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_19
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_18

    move-object/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v28, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :try_start_c
    invoke-virtual {v9, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2835
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2837
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2838
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2839
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2840
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v29, v4

    const/4 v4, 0x0

    .end local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .local v29, "decompressFiles":Lcom/santrope/launcher/Decompress;
    invoke-virtual {v9, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v7, v5

    invoke-virtual {v2, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_19
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_18

    .line 2842
    :try_start_d
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2843
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_19
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_18

    move-object/from16 v30, v2

    const/4 v2, 0x0

    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .local v30, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :try_start_e
    invoke-virtual {v9, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v7, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_19
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_18

    .line 2848
    goto :goto_a

    .line 2846
    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_9

    .line 2845
    .end local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_11
    return-void

    .line 2846
    :catch_7
    move-exception v0

    move-object/from16 v30, v2

    move-object v2, v0

    .line 2847
    .local v2, "e":Ljava/lang/Exception;
    .restart local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :goto_9
    :try_start_f
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2849
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2850
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_19
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_18

    .line 2851
    return-void

    .line 2835
    .end local v29    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    :cond_12
    move-object/from16 v29, v4

    .line 2853
    .end local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    nop

    .line 2857
    goto :goto_c

    .line 2855
    :catch_8
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 2854
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_13
    return-void

    .line 2855
    :catch_9
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2856
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_b
    :try_start_10
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2858
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c
    return-void

    .line 3025
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .end local v23    # "localJsonData":Lorg/json/JSONObject;
    .end local v24    # "lFile":Ljava/io/File;
    .end local v25    # "lReader":Ljava/io/BufferedReader;
    .end local v27    # "resume":I
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v9    # "resume":I
    :catch_a
    move-exception v0

    move/from16 v27, v9

    move-object v2, v0

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    goto/16 :goto_1a

    .line 2978
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :catch_b
    move-exception v0

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    move/from16 v27, v9

    move-object v2, v0

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    goto/16 :goto_1d

    .line 2862
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "localJsonData":Lorg/json/JSONObject;
    .restart local v5    # "lReader":Ljava/io/BufferedReader;
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    .restart local v24    # "lFile":Ljava/io/File;
    :cond_14
    move-object/from16 v23, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move/from16 v27, v9

    .end local v2    # "localJsonData":Lorg/json/JSONObject;
    .end local v5    # "lReader":Ljava/io/BufferedReader;
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v23    # "localJsonData":Lorg/json/JSONObject;
    .restart local v25    # "lReader":Ljava/io/BufferedReader;
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v4

    if-le v2, v4, :cond_16

    .line 2863
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Local version of files larger than server version of files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2864
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$17;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$17;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2872
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2873
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2875
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v5

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2876
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_17

    .line 2878
    :try_start_11
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2879
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_18

    move-object/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :try_start_12
    invoke-virtual {v9, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_18

    .line 2884
    goto :goto_f

    .line 2882
    :catch_d
    move-exception v0

    move-object v2, v0

    goto :goto_e

    .line 2881
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_15
    return-void

    .line 2882
    :catch_e
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2883
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_e
    :try_start_13
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2885
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2886
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2889
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_16
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 2890
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The local version of the files is smaller than the server version of the files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2891
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$18;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$18;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2899
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x3

    if-le v2, v4, :cond_18

    .line 2900
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The difference in versions is more than three"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2901
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2902
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2904
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v5

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2905
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    .line 2907
    :try_start_14
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2908
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_18

    move-object/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :try_start_15
    invoke-virtual {v9, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_19
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_18

    .line 2913
    goto :goto_11

    .line 2911
    :catch_f
    move-exception v0

    move-object v2, v0

    goto :goto_10

    .line 2910
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_17
    return-void

    .line 2911
    :catch_10
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2912
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_10
    :try_start_16
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2914
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2915
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2916
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    goto/16 :goto_17

    .line 2917
    :cond_18
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The difference in versions is less than three, download files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2918
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v2

    .line 2919
    .local v2, "currentVrs":I
    const/4 v4, 0x2

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2920
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2921
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_12
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v4

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v7

    sub-int/2addr v4, v7

    if-ge v5, v4, :cond_1a

    .line 2922
    add-int/lit8 v2, v2, 0x1

    .line 2923
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x2

    invoke-direct {v4, v7, v9, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 2925
    .local v4, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :try_start_17
    new-array v7, v9, [Ljava/lang/String;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1700()Lorg/json/JSONArray;

    move-result-object v9
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    move-object/from16 v28, v10

    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .local v28, "lData":Ljava/lang/StringBuilder;
    add-int/lit8 v10, v2, -0x1

    :try_start_18
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    move-object/from16 v29, v14

    const/4 v14, 0x0

    .end local v14    # "lLine":Ljava/lang/String;
    .local v29, "lLine":Ljava/lang/String;
    :try_start_19
    invoke-virtual {v10, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_17

    .line 2928
    goto :goto_14

    .line 2926
    :catch_11
    move-exception v0

    move-object v7, v0

    goto :goto_13

    .end local v29    # "lLine":Ljava/lang/String;
    .restart local v14    # "lLine":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-object/from16 v29, v14

    move-object v7, v0

    .end local v14    # "lLine":Ljava/lang/String;
    .restart local v29    # "lLine":Ljava/lang/String;
    goto :goto_13

    .end local v28    # "lData":Ljava/lang/StringBuilder;
    .end local v29    # "lLine":Ljava/lang/String;
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    :catch_13
    move-exception v0

    move-object/from16 v28, v10

    move-object/from16 v29, v14

    move-object v7, v0

    .line 2927
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .local v7, "e":Lorg/json/JSONException;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    :goto_13
    :try_start_1a
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x65

    invoke-static {v9, v14, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17

    .line 2930
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_14
    :try_start_1b
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2931
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x2

    invoke-direct {v7, v9, v10, v2}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v9, v10, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_18

    move/from16 v30, v2

    const/4 v2, 0x0

    .end local v2    # "currentVrs":I
    .local v30, "currentVrs":I
    :try_start_1c
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_18

    .line 2936
    goto :goto_16

    .line 2934
    :catch_14
    move-exception v0

    move-object v2, v0

    goto :goto_15

    .line 2933
    .end local v30    # "currentVrs":I
    .restart local v2    # "currentVrs":I
    :cond_19
    return-void

    .line 2934
    :catch_15
    move-exception v0

    move/from16 v30, v2

    move-object v2, v0

    .line 2935
    .local v2, "e":Ljava/lang/Exception;
    .restart local v30    # "currentVrs":I
    :goto_15
    :try_start_1d
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2921
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v28

    move-object/from16 v14, v29

    move/from16 v2, v30

    goto/16 :goto_12

    .end local v28    # "lData":Ljava/lang/StringBuilder;
    .end local v29    # "lLine":Ljava/lang/String;
    .end local v30    # "currentVrs":I
    .local v2, "currentVrs":I
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    :cond_1a
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    .line 2938
    .end local v5    # "i":I
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2939
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_17

    .line 2889
    .end local v2    # "currentVrs":I
    .end local v28    # "lData":Ljava/lang/StringBuilder;
    .end local v29    # "lLine":Ljava/lang/String;
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    :cond_1b
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    .line 2943
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    :goto_17
    const/4 v2, 0x0

    .line 2945
    .local v2, "client":Z
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v4

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 2946
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "The local version of the client does not match the server version of the client, download the client"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2947
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$8$19;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$8$19;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2956
    const/4 v4, 0x3

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2957
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2958
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2959
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v7, v9

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_17

    .line 2961
    :try_start_1e
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2962
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_18

    .line 2967
    goto :goto_18

    .line 2964
    :cond_1c
    return-void

    .line 2965
    :catch_16
    move-exception v0

    move-object v5, v0

    .line 2966
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2968
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_18
    const/4 v2, 0x1

    .line 2969
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2970
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2973
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_1d
    if-nez v2, :cond_1e

    .line 2974
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-class v7, Lcom/santrope/launcher/MainActivity;

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2975
    .local v4, "launchIntent":Landroid/content/Intent;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v4}, Lcom/santrope/launcher/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 2976
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Lcom/santrope/launcher/SplashScreen;->finish()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    goto :goto_1b

    .line 3025
    .end local v2    # "client":Z
    .end local v4    # "launchIntent":Landroid/content/Intent;
    .end local v23    # "localJsonData":Lorg/json/JSONObject;
    .end local v24    # "lFile":Ljava/io/File;
    .end local v25    # "lReader":Ljava/io/BufferedReader;
    .end local v28    # "lData":Ljava/lang/StringBuilder;
    .end local v29    # "lLine":Ljava/lang/String;
    :catch_17
    move-exception v0

    move-object v2, v0

    goto :goto_1a

    .line 2978
    :catch_18
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    :catch_19
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    .line 3025
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v7, "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :catch_1a
    move-exception v0

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    goto :goto_1a

    .line 2978
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :catch_1b
    move-exception v0

    goto :goto_19

    :catch_1c
    move-exception v0

    :goto_19
    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    goto :goto_1d

    .line 3025
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "install_type":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :catch_1d
    move-exception v0

    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    .line 3026
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .local v2, "exc":Ljava/lang/Exception;
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_1a
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3027
    .end local v2    # "exc":Ljava/lang/Exception;
    :cond_1e
    :goto_1b
    goto/16 :goto_21

    .line 2978
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "install_type":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :catch_1e
    move-exception v0

    goto :goto_1c

    :catch_1f
    move-exception v0

    :goto_1c
    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    move-object v2, v0

    .line 2979
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_1d
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$8$20;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$8$20;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2988
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 2989
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Files version not found"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2991
    const/4 v4, 0x2

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2992
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2993
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v9

    invoke-direct {v5, v7, v4, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2994
    .local v5, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v7, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v7, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v7, v9

    invoke-virtual {v5, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2996
    :try_start_20
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2997
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v4, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v7, v10, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_20

    .line 3002
    goto :goto_1e

    .line 2999
    :cond_1f
    return-void

    .line 3000
    :catch_20
    move-exception v0

    move-object v4, v0

    .line 3001
    .local v4, "e":Ljava/lang/Exception;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3003
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1e
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3004
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1f

    .line 2988
    .end local v5    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_20
    const/4 v4, -0x1

    .line 3007
    :goto_1f
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v5

    if-ne v5, v4, :cond_1e

    .line 3008
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Client version not found"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3010
    const/4 v4, 0x3

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3011
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3012
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 3013
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v7, v9

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3015
    :try_start_21
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3016
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-virtual {v5, v7}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    .line 3021
    goto :goto_20

    .line 3018
    :cond_21
    return-void

    .line 3019
    :catch_21
    move-exception v0

    move-object v5, v0

    .line 3020
    .local v5, "e":Ljava/lang/Exception;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 3022
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_20
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3023
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1b

    .line 3029
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "install_type":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :cond_22
    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    .end local v2    # "install_type":I
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$21;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$21;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_21

    .line 2740
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :cond_23
    move-object/from16 v26, v7

    move/from16 v27, v9

    .line 3037
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_21
    return-void

    .line 2621
    .end local v16    # "reinstall":I
    .end local v20    # "liteCache":Ljava/io/File;
    .end local v21    # "fullCache":Ljava/io/File;
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v5, "reinstall":I
    .restart local v9    # "resume":I
    :cond_24
    move/from16 v16, v5

    move/from16 v27, v9

    .end local v5    # "reinstall":I
    .end local v9    # "resume":I
    .restart local v16    # "reinstall":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the files and client"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2622
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$10;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$10;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2632
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2633
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2635
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    invoke-direct {v4, v5, v2, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2636
    .local v4, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2638
    :try_start_22
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2639
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2640
    .local v2, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2641
    invoke-virtual {v2}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2643
    const/4 v5, 0x3

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2644
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2645
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2646
    .local v5, "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_23

    .line 2648
    :try_start_23
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2649
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v7, v9, v11, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_22

    .line 2654
    goto :goto_22

    .line 2651
    :cond_25
    return-void

    .line 2652
    :catch_22
    move-exception v0

    move-object v7, v0

    .line 2653
    .local v7, "e":Ljava/lang/Exception;
    :try_start_24
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x65

    invoke-static {v9, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2655
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_22
    const/4 v7, -0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2656
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_23

    .line 2657
    return-void

    .line 2659
    .end local v2    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v5    # "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_26
    nop

    .line 2663
    goto :goto_23

    .line 2660
    :cond_27
    return-void

    .line 2661
    :catch_23
    move-exception v0

    move-object v2, v0

    .line 2662
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-static {v5, v8, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2664
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_23
    return-void

    .line 2611
    .end local v4    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v16    # "reinstall":I
    .end local v27    # "resume":I
    .local v5, "reinstall":I
    .restart local v9    # "resume":I
    :cond_28
    move/from16 v16, v5

    .end local v5    # "reinstall":I
    .restart local v16    # "reinstall":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the game"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2612
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$9;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$9;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2619
    return-void

    .line 2584
    .end local v16    # "reinstall":I
    .restart local v5    # "reinstall":I
    :cond_29
    move/from16 v16, v5

    move/from16 v27, v9

    const/16 v5, 0x69

    .end local v5    # "reinstall":I
    .end local v9    # "resume":I
    .restart local v16    # "reinstall":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the client"

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2585
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$8;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$8;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2594
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2595
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2597
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2598
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2600
    :try_start_25
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2601
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_24

    .line 2606
    goto :goto_24

    .line 2603
    :cond_2a
    return-void

    .line 2604
    :catch_24
    move-exception v0

    move-object v4, v0

    .line 2605
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x65

    invoke-static {v5, v9, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2607
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_24
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2608
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2609
    return-void

    .line 2552
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v16    # "reinstall":I
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_2b
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download client"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2553
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$7;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$7;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2563
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2564
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2565
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2566
    .restart local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2568
    :try_start_26
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2569
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_25

    .line 2574
    goto :goto_25

    .line 2571
    :cond_2c
    return-void

    .line 2572
    :catch_25
    move-exception v0

    move-object v4, v0

    .line 2573
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x65

    invoke-static {v5, v9, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2575
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_25
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2576
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2577
    return-void

    .line 2508
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_2d
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2509
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$6;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$6;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2519
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2520
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2521
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    invoke-direct {v4, v5, v2, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2522
    .local v4, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2524
    :try_start_27
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2525
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2526
    .local v2, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v5, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2527
    invoke-virtual {v2}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2529
    const/4 v5, 0x3

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2530
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2531
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2532
    .local v5, "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_27

    .line 2534
    :try_start_28
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 2535
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v7, v9, v11, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_26

    .line 2540
    goto :goto_26

    .line 2537
    :cond_2e
    return-void

    .line 2538
    :catch_26
    move-exception v0

    move-object v7, v0

    .line 2539
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_29
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x65

    invoke-static {v9, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2541
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_26
    const/4 v7, -0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2542
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_27

    .line 2543
    return-void

    .line 2545
    .end local v2    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v5    # "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_2f
    nop

    .line 2549
    goto :goto_27

    .line 2546
    :cond_30
    return-void

    .line 2547
    :catch_27
    move-exception v0

    move-object v2, v0

    .line 2548
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-static {v5, v8, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2550
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    return-void

    .line 2409
    .end local v4    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_31
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download full cache"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2410
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$4;

    invoke-direct {v4, v1, v3}, Lcom/santrope/launcher/SplashScreen$8$4;-><init>(Lcom/santrope/launcher/SplashScreen$8;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2427
    const/4 v2, 0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2428
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2429
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2430
    .local v2, "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1400(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/full_cache.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v7, v5

    invoke-virtual {v2, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2432
    :try_start_2a
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 2433
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$8$5;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$8$5;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2442
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2443
    .local v4, "dirData":Ljava/io/File;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v4}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2444
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2445
    .local v5, "dirObb":Ljava/io/File;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2446
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2447
    .local v7, "decompressFullCache":Lcom/santrope/launcher/Decompress;
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2d

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v17, "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_2b
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/full_cache.zip"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/Android/obb/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v7, v10}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2448
    invoke-virtual {v7}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2449
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2450
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2452
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v2, v9, v14, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2453
    .local v2, "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "dirData":Ljava/io/File;
    .local v20, "dirData":Ljava/io/File;
    invoke-virtual {v14, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v2, v9}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2c

    .line 2455
    :try_start_2c
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2456
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v4, v9, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2457
    .local v4, "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    new-array v9, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2b

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v21, "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_2d
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v4, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2458
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2459
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2460
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2463
    const/4 v2, 0x0

    .line 2464
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 2465
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/net/URL;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2a

    .line 2467
    .local v10, "serverUrl":Ljava/net/URL;
    :try_start_2e
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    move-object v2, v11

    .line 2468
    :try_start_2f
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    .line 2469
    const/16 v11, 0x400

    new-array v13, v11, [B
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 2471
    .local v13, "data":[B
    :goto_28
    move-object/from16 v18, v4

    const/4 v14, 0x0

    .end local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .local v18, "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    :try_start_30
    invoke-virtual {v2, v13, v14, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    move v11, v4

    const/4 v14, -0x1

    .local v11, "count":I
    if-eq v4, v14, :cond_32

    .line 2472
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v9, v13, v4, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    move-object/from16 v4, v18

    const/16 v11, 0x400

    goto :goto_28

    .line 2474
    .end local v11    # "count":I
    .end local v13    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    goto/16 :goto_2b

    :cond_32
    nop

    .line 2475
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2476
    nop

    .line 2477
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2481
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v4, v11, v14, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2482
    .local v4, "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/String;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v22, v2

    const/4 v2, 0x0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v22, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v13, v11

    invoke-virtual {v4, v13}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2a

    .line 2484
    :try_start_33
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2485
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v2, v11, v14, v13}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_29

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v16, "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_34
    invoke-virtual {v14, v4}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v11, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-virtual {v2, v11}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_28

    .line 2490
    goto :goto_2a

    .line 2488
    :catch_28
    move-exception v0

    move-object v2, v0

    goto :goto_29

    .line 2487
    .end local v16    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_33
    return-void

    .line 2488
    :catch_29
    move-exception v0

    move-object/from16 v16, v4

    move-object v2, v0

    .line 2489
    .end local v4    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v16    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_29
    :try_start_35
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v4, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2491
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2492
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2493
    return-void

    .line 2474
    .end local v16    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .end local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2b

    .end local v18    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .end local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v4, "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v18, v4

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v18    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2b

    .end local v18    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .end local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v22, v2

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v18    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_2b
    if-eqz v22, :cond_34

    .line 2475
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->close()V

    .line 2476
    :cond_34
    if-eqz v9, :cond_35

    .line 2477
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2478
    :cond_35
    nop

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .end local v20    # "dirData":Ljava/io/File;
    .end local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    throw v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_2a

    .line 2458
    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "serverUrl":Ljava/net/URL;
    .end local v18    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .end local v22    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v5    # "dirObb":Ljava/io/File;
    .restart local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    .restart local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v20    # "dirData":Ljava/io/File;
    .restart local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v27    # "resume":I
    :cond_36
    move-object/from16 v18, v4

    .line 2495
    .end local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    nop

    .line 2499
    goto :goto_2d

    .line 2497
    :catch_2a
    move-exception v0

    move-object v2, v0

    goto :goto_2c

    .line 2496
    .end local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_37
    return-void

    .line 2497
    :catch_2b
    move-exception v0

    move-object/from16 v21, v2

    move-object v2, v0

    .line 2498
    .local v2, "e":Ljava/lang/Exception;
    .restart local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_2c
    :try_start_36
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x65

    invoke-static {v4, v9, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2c

    goto :goto_2d

    .line 2448
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v20    # "dirData":Ljava/io/File;
    .end local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v4, "dirData":Ljava/io/File;
    :cond_38
    move-object/from16 v20, v4

    .line 2501
    .end local v4    # "dirData":Ljava/io/File;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    :goto_2d
    nop

    .line 2505
    goto :goto_2f

    .line 2503
    :catch_2c
    move-exception v0

    move-object v2, v0

    goto :goto_2e

    .line 2502
    .end local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_39
    return-void

    .line 2503
    :catch_2d
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .line 2504
    .local v2, "e":Ljava/lang/Exception;
    .restart local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_2e
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2506
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void

    .line 2310
    .end local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .local v9, "resume":I
    :cond_3a
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download lite cache"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2311
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$2;

    invoke-direct {v4, v1, v3}, Lcom/santrope/launcher/SplashScreen$8$2;-><init>(Lcom/santrope/launcher/SplashScreen$8;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2328
    const/4 v2, 0x0

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2329
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2330
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v4, v5, v2, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2331
    .local v4, "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$800(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lite_cache.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-virtual {v4, v7}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2333
    :try_start_37
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2334
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$8$3;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$8$3;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2343
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2344
    .local v2, "dirData":Ljava/io/File;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v2}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2345
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/Android/obb/com.rockstargames.gtasa"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2346
    .restart local v5    # "dirObb":Ljava/io/File;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 2347
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2348
    .local v7, "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "dirData":Ljava/io/File;
    .local v17, "dirData":Ljava/io/File;
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lite_cache.zip"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v10, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/Android/data/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v10, v9

    invoke-virtual {v7, v10}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2349
    invoke-virtual {v7}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2350
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2351
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2353
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v2, v9, v14, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2354
    .local v2, "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_33

    move-object/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .local v20, "sp":Landroid/content/SharedPreferences;
    :try_start_38
    invoke-virtual {v14, v3}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-virtual {v2, v9}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_32

    .line 2356
    :try_start_39
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2357
    new-instance v3, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v3, v9, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2358
    .local v3, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v9, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_31

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v21, "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_3a
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v9, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-virtual {v3, v9}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2359
    invoke-virtual {v3}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2360
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2361
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2364
    const/4 v2, 0x0

    .line 2365
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 2366
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/net/URL;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_30

    .line 2368
    .restart local v10    # "serverUrl":Ljava/net/URL;
    :try_start_3b
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_7

    move-object v2, v11

    .line 2369
    :try_start_3c
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/Android/data/com.rockstargames.gtasa/files/gta_sa.set"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v11

    .line 2370
    const/16 v11, 0x400

    new-array v13, v11, [B
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    .line 2372
    .restart local v13    # "data":[B
    :goto_30
    move-object/from16 v16, v3

    const/4 v14, 0x0

    .end local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .local v16, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    :try_start_3d
    invoke-virtual {v2, v13, v14, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5

    move/from16 v18, v3

    const/4 v11, -0x1

    .local v18, "count":I
    if-eq v3, v11, :cond_3b

    .line 2373
    move/from16 v3, v18

    .end local v18    # "count":I
    .local v3, "count":I
    :try_start_3e
    invoke-virtual {v9, v13, v14, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_4

    move-object/from16 v3, v16

    const/16 v11, 0x400

    goto :goto_30

    .line 2375
    .end local v3    # "count":I
    .end local v13    # "data":[B
    :catchall_4
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    goto/16 :goto_33

    .line 2372
    .restart local v13    # "data":[B
    .restart local v18    # "count":I
    :cond_3b
    move/from16 v3, v18

    .line 2375
    .end local v13    # "data":[B
    .end local v18    # "count":I
    nop

    .line 2376
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2377
    nop

    .line 2378
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2382
    new-instance v3, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v3, v11, v14, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2383
    .local v3, "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/String;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v18, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-virtual {v14, v2}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v13, v11

    invoke-virtual {v3, v13}, Lcom/santrope/launcher/DownloadManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_30

    .line 2385
    :try_start_40
    invoke-virtual {v3}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2386
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v2, v11, v14, v13}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_2f

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v19, "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :try_start_41
    invoke-virtual {v14, v3}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aput-object v3, v11, v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v11, v12

    invoke-virtual {v2, v11}, Lcom/santrope/launcher/Decompress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_2e

    .line 2391
    goto :goto_32

    .line 2389
    :catch_2e
    move-exception v0

    move-object v2, v0

    goto :goto_31

    .line 2388
    .end local v19    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v3    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :cond_3c
    return-void

    .line 2389
    :catch_2f
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    .line 2390
    .end local v3    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v19    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :goto_31
    :try_start_42
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v3, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2392
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2393
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2394
    return-void

    .line 2375
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_5
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_33

    .end local v16    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    :catchall_6
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v16    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_33

    .end local v16    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    move-object v2, v0

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v16    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_33
    if-eqz v18, :cond_3d

    .line 2376
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    .line 2377
    :cond_3d
    if-eqz v9, :cond_3e

    .line 2378
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 2379
    :cond_3e
    nop

    .end local v4    # "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "dirData":Ljava/io/File;
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .end local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    throw v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_30

    .line 2359
    .end local v9    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v10    # "serverUrl":Ljava/net/URL;
    .end local v16    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v18    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v4    # "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v5    # "dirObb":Ljava/io/File;
    .restart local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v17    # "dirData":Ljava/io/File;
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    .restart local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v27    # "resume":I
    :cond_3f
    move-object/from16 v16, v3

    .line 2396
    .end local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    nop

    .line 2400
    goto :goto_35

    .line 2398
    :catch_30
    move-exception v0

    move-object v2, v0

    goto :goto_34

    .line 2397
    .end local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :cond_40
    return-void

    .line 2398
    :catch_31
    move-exception v0

    move-object/from16 v21, v2

    move-object v2, v0

    .line 2399
    .local v2, "e":Ljava/lang/Exception;
    .restart local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :goto_34
    :try_start_43
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x65

    invoke-static {v3, v9, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_32

    goto :goto_35

    .line 2404
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "dirData":Ljava/io/File;
    .end local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :catch_32
    move-exception v0

    move-object v2, v0

    goto :goto_36

    .line 2349
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .local v3, "sp":Landroid/content/SharedPreferences;
    .restart local v5    # "dirObb":Ljava/io/File;
    .restart local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v17    # "dirData":Ljava/io/File;
    :cond_41
    move-object/from16 v20, v3

    .line 2402
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "dirData":Ljava/io/File;
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    :goto_35
    nop

    .line 2406
    goto :goto_37

    .line 2403
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_42
    return-void

    .line 2404
    :catch_33
    move-exception v0

    move-object/from16 v20, v3

    move-object v2, v0

    .line 2405
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    :goto_36
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v3, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2407
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_37
    return-void

    .line 2290
    .end local v4    # "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    .end local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .end local v27    # "resume":I
    :catch_34
    move-exception v0

    move-object v2, v0

    .line 2291
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$8$1;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$8$1;-><init>(Lcom/santrope/launcher/SplashScreen$8;)V

    invoke-virtual {v3, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2300
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$8;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v3, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2301
    return-void
.end method
