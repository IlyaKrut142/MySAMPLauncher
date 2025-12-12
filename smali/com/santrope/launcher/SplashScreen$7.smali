.class Lcom/santrope/launcher/SplashScreen$7;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen;->onCreate(Landroid/os/Bundle;)V
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

    .line 1465
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 1469
    :try_start_0
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Getting a file from the server with links to files"

    const/16 v5, 0x69

    invoke-static {v3, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1470
    new-instance v3, Ljava/net/URL;

    const-string v4, "http://145.239.133.5/info1.json"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v3, "ufURL":Ljava/net/URL;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1473
    .local v4, "ufReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1474
    .local v6, "ufData":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "ufLine":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1475
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1476
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 1477
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v7, "ufJSONData":Lorg/json/JSONObject;
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_CLIENT"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1302(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1479
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_FILES"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1002(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1480
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_LITE_CACHE"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$802(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1481
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_FULL_CACHE"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1402(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_UPD"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1602(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1483
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "URL_GAME_SETTINGS"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/santrope/launcher/SplashScreen;->access$1102(Lcom/santrope/launcher/SplashScreen;Ljava/lang/String;)Ljava/lang/String;

    .line 1485
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Getting a file from a server with Assembly versions"

    invoke-static {v9, v5, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1486
    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1600(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v9, "url":Ljava/net/URL;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1489
    .local v10, "sReader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .local v11, "sData":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v13, v12

    .local v13, "sLine":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1491
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1492
    :cond_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 1493
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v12, "serverJsonData":Lorg/json/JSONObject;
    const-string v14, "files"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$1702(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 1495
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1700()Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$902(I)I

    .line 1496
    const-string v14, "client"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/santrope/launcher/SplashScreen;->access$1202(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_34

    .line 1509
    nop

    .line 1511
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
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v4, 0x0

    const-string v6, "santrope-settings"

    invoke-virtual {v3, v6, v4}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1512
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v6, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v7, "santrope-settings"

    invoke-virtual {v6, v7, v4}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1514
    .local v6, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v7, -0x1

    const-string v8, "resume_type"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1515
    .local v9, "resume":I
    const-string v10, "/Android/data/com.rockstargames.gtasa"

    const-string v12, "/"

    const-string v13, "/Android/data/com.rockstargames.gtasa/files/"

    const/4 v14, 0x3

    const-string v15, "/client.zip"

    const-string v11, "/files.zip"

    const/4 v4, 0x1

    const/4 v2, 0x2

    if-eqz v9, :cond_39

    if-eq v9, v4, :cond_30

    if-eq v9, v2, :cond_2c

    if-eq v9, v14, :cond_2a

    .line 1789
    const-string v5, "reinstall"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1790
    .local v5, "reinstall":I
    if-eq v5, v4, :cond_28

    if-eq v5, v2, :cond_27

    if-eq v5, v14, :cond_23

    .line 1874
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

    .line 1875
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

    .line 1876
    .local v4, "fullCache":Ljava/io/File;
    new-instance v7, Lcom/santrope/launcher/PrefManager;

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v7, v14}, Lcom/santrope/launcher/PrefManager;-><init>(Landroid/content/Context;)V

    .line 1877
    .local v7, "prefManager":Lcom/santrope/launcher/PrefManager;
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v14

    move/from16 v16, v5

    const/4 v5, -0x1

    .end local v5    # "reinstall":I
    .local v16, "reinstall":I
    if-eq v14, v5, :cond_3

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v14

    if-eq v14, v5, :cond_3

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$2000(Lcom/santrope/launcher/SplashScreen;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1878
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v8, "Install the client"

    const/16 v10, 0x69

    invoke-static {v5, v10, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1880
    new-instance v5, Ljava/io/File;

    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/SplashScreen;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "client.apk"

    invoke-direct {v5, v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    .local v5, "fileInstall":Ljava/io/File;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 1882
    .local v8, "uri":Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1883
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v10, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1884
    const-string v11, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1885
    const-string v11, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1886
    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1887
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1888
    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lcom/santrope/launcher/SplashScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1889
    return-void

    .line 1877
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v16    # "reinstall":I
    .local v5, "reinstall":I
    :cond_2
    move/from16 v16, v5

    .line 1891
    .end local v5    # "reinstall":I
    .restart local v16    # "reinstall":I
    :cond_3
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1892
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v8, "Download the cache"

    const/16 v10, 0x69

    invoke-static {v5, v10, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1893
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v8, Lcom/santrope/launcher/SplashScreen$7$11;

    invoke-direct {v8, v1}, Lcom/santrope/launcher/SplashScreen$7$11;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v5, v8}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1900
    return-void

    .line 1902
    :cond_4
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    goto/16 :goto_6

    .line 1903
    :cond_6
    :goto_2
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Download files and client"

    const/16 v14, 0x69

    invoke-static {v5, v14, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1904
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v10, Lcom/santrope/launcher/SplashScreen$7$12;

    invoke-direct {v10, v1}, Lcom/santrope/launcher/SplashScreen$7$12;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v5, v10}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1914
    const/4 v5, 0x2

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1915
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1916
    new-instance v10, Lcom/santrope/launcher/DownloadManager;

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v20, v2

    .end local v2    # "liteCache":Ljava/io/File;
    .local v20, "liteCache":Ljava/io/File;
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v2

    invoke-direct {v10, v14, v5, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    move-object v2, v10

    .line 1917
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v10, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v10, v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1919
    :try_start_1
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1920
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v4, v5, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1921
    .local v4, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 1922
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1924
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1925
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1926
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v2, v5, v11, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1927
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v10, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1929
    :try_start_3
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1930
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v11

    const/4 v13, 0x1

    invoke-direct {v5, v10, v13, v11}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1935
    goto :goto_3

    .line 1932
    :cond_7
    return-void

    .line 1933
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 1934
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v10, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1936
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1937
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1938
    return-void

    .line 1940
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    :cond_8
    nop

    .line 1944
    goto :goto_5

    .line 1942
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    .line 1941
    .end local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_9
    return-void

    .line 1942
    :catch_2
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .line 1943
    .local v2, "e":Ljava/lang/Exception;
    .restart local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_4
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x65

    invoke-static {v4, v8, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1945
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    return-void

    .line 1902
    .end local v17    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v20    # "liteCache":Ljava/io/File;
    .end local v21    # "fullCache":Ljava/io/File;
    .local v2, "liteCache":Ljava/io/File;
    .local v4, "fullCache":Ljava/io/File;
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .line 1947
    .end local v2    # "liteCache":Ljava/io/File;
    .end local v4    # "fullCache":Ljava/io/File;
    .restart local v20    # "liteCache":Ljava/io/File;
    .restart local v21    # "fullCache":Ljava/io/File;
    :goto_6
    invoke-virtual {v7}, Lcom/santrope/launcher/PrefManager;->isFirstTimeLaunch()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1948
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$13;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$13;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1957
    const-string v2, "installType"

    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1960
    .local v2, "install_type":I
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Version of game: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v14, 0x69

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1961
    if-eqz v2, :cond_d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    goto/16 :goto_7

    .line 1984
    :cond_b
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Check full cache"

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1985
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

    .line 1986
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

    .line 1988
    .local v5, "mainFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_e

    .line 1989
    :cond_c
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

    .line 1990
    .local v8, "dir":Ljava/io/File;
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v10, v8}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1991
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v11, "Download full cache"

    const/16 v14, 0x69

    invoke-static {v10, v14, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1992
    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v11, Lcom/santrope/launcher/SplashScreen$7$15;

    invoke-direct {v11, v1}, Lcom/santrope/launcher/SplashScreen$7$15;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v10, v11}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2003
    return-void

    .line 1963
    .end local v4    # "patchFile":Ljava/io/File;
    .end local v5    # "mainFile":Ljava/io/File;
    .end local v8    # "dir":Ljava/io/File;
    :cond_d
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Check lite cache"

    invoke-static {v4, v14, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1964
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

    .line 1965
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1966
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

    .line 1967
    .local v5, "dir":Ljava/io/File;
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v8, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1968
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v10, "Download lite cache"

    const/16 v11, 0x69

    invoke-static {v8, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1969
    iget-object v8, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v10, Lcom/santrope/launcher/SplashScreen$7$14;

    invoke-direct {v10, v1}, Lcom/santrope/launcher/SplashScreen$7$14;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v8, v10}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1980
    return-void

    .line 2007
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "dir":Ljava/io/File;
    :cond_e
    :goto_7
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7$16;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$7$16;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2014
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Lcom/santrope/launcher/SplashScreen;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2017
    :try_start_5
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Getting a local file with the versions of the assemblies"

    const/16 v10, 0x69

    invoke-static {v4, v10, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2018
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2019
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

    .line 2021
    .local v5, "lReader":Ljava/io/BufferedReader;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2022
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
    if-eqz v14, :cond_f

    .line 2023
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

    .line 2232
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

    .line 2186
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

    .line 2024
    .restart local v4    # "lFile":Ljava/io/File;
    .restart local v5    # "lReader":Ljava/io/BufferedReader;
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v22    # "lLine":Ljava/lang/String;
    :cond_f
    move-object/from16 v14, v22

    .end local v22    # "lLine":Ljava/lang/String;
    .restart local v14    # "lLine":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1d

    .line 2026
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

    .line 2027
    .local v2, "localJsonData":Lorg/json/JSONObject;
    const-string v4, "files-vrs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1802(I)I

    .line 2028
    const-string v4, "client-vrs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1902(I)I

    .line 2031
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$2000(Lcom/santrope/launcher/SplashScreen;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2032
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    move-object/from16 v23, v2

    .end local v2    # "localJsonData":Lorg/json/JSONObject;
    .local v23, "localJsonData":Lorg/json/JSONObject;
    const-string v2, "Download files and client | Client was not installed"

    move-object/from16 v25, v5

    const/16 v5, 0x69

    .end local v5    # "lReader":Ljava/io/BufferedReader;
    .local v25, "lReader":Ljava/io/BufferedReader;
    invoke-static {v4, v5, v2}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2034
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2035
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2037
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2038
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2040
    :try_start_b
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2041
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 2042
    .local v4, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2043
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2045
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2046
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2047
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2048
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2050
    :try_start_d
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2051
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2056
    goto :goto_a

    .line 2054
    :catch_6
    move-exception v0

    move-object v2, v0

    goto :goto_9

    .line 2053
    .end local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_10
    return-void

    .line 2054
    :catch_7
    move-exception v0

    move-object/from16 v30, v2

    move-object v2, v0

    .line 2055
    .local v2, "e":Ljava/lang/Exception;
    .restart local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :goto_9
    :try_start_f
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2057
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2058
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_19
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_18

    .line 2059
    return-void

    .line 2043
    .end local v29    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v30    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    :cond_11
    move-object/from16 v29, v4

    .line 2061
    .end local v4    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    nop

    .line 2065
    goto :goto_c

    .line 2063
    :catch_8
    move-exception v0

    move-object v2, v0

    goto :goto_b

    .line 2062
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_12
    return-void

    .line 2063
    :catch_9
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2064
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_b
    :try_start_10
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2066
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c
    return-void

    .line 2232
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

    .line 2186
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

    .line 2070
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "localJsonData":Lorg/json/JSONObject;
    .restart local v5    # "lReader":Ljava/io/BufferedReader;
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    .restart local v24    # "lFile":Ljava/io/File;
    :cond_13
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

    if-le v2, v4, :cond_15

    .line 2071
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Local version of files larger than server version of files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2072
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$17;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$17;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2080
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2081
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2083
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v5

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2084
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2086
    :try_start_11
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2087
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2092
    goto :goto_f

    .line 2090
    :catch_d
    move-exception v0

    move-object v2, v0

    goto :goto_e

    .line 2089
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_14
    return-void

    .line 2090
    :catch_e
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2091
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_e
    :try_start_13
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2093
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2094
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2097
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_15
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 2098
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The local version of the files is smaller than the server version of the files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2099
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$18;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$18;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2107
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v2

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x3

    if-le v2, v4, :cond_17

    .line 2108
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The difference in versions is more than three"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2109
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2110
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2112
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v5

    const/4 v7, 0x2

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2113
    .local v2, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2115
    :try_start_14
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2116
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2121
    goto :goto_11

    .line 2119
    :catch_f
    move-exception v0

    move-object v2, v0

    goto :goto_10

    .line 2118
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .restart local v2    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_16
    return-void

    .line 2119
    :catch_10
    move-exception v0

    move-object/from16 v28, v2

    move-object v2, v0

    .line 2120
    .local v2, "e":Ljava/lang/Exception;
    .restart local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :goto_10
    :try_start_16
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_11
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2123
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2124
    .end local v28    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    goto/16 :goto_17

    .line 2125
    :cond_17
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "The difference in versions is less than three, download files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2126
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v2

    .line 2127
    .local v2, "currentVrs":I
    const/4 v4, 0x2

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2128
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2129
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_12
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v4

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v7

    sub-int/2addr v4, v7

    if-ge v5, v4, :cond_19

    .line 2130
    add-int/lit8 v2, v2, 0x1

    .line 2131
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v9, 0x2

    invoke-direct {v4, v7, v9, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17

    .line 2133
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

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2136
    goto :goto_14

    .line 2134
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

    .line 2135
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .local v7, "e":Lorg/json/JSONException;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    :goto_13
    :try_start_1a
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x65

    invoke-static {v9, v14, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17

    .line 2138
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_14
    :try_start_1b
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2139
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x2

    invoke-direct {v7, v9, v10, v2}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v9, v10, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 2144
    goto :goto_16

    .line 2142
    :catch_14
    move-exception v0

    move-object v2, v0

    goto :goto_15

    .line 2141
    .end local v30    # "currentVrs":I
    .restart local v2    # "currentVrs":I
    :cond_18
    return-void

    .line 2142
    :catch_15
    move-exception v0

    move/from16 v30, v2

    move-object v2, v0

    .line 2143
    .local v2, "e":Ljava/lang/Exception;
    .restart local v30    # "currentVrs":I
    :goto_15
    :try_start_1d
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2129
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
    :cond_19
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    .line 2146
    .end local v5    # "i":I
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2147
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_17

    .line 2097
    .end local v2    # "currentVrs":I
    .end local v28    # "lData":Ljava/lang/StringBuilder;
    .end local v29    # "lLine":Ljava/lang/String;
    .restart local v10    # "lData":Ljava/lang/StringBuilder;
    .restart local v14    # "lLine":Ljava/lang/String;
    :cond_1a
    move-object/from16 v28, v10

    move-object/from16 v29, v14

    .line 2151
    .end local v10    # "lData":Ljava/lang/StringBuilder;
    .end local v14    # "lLine":Ljava/lang/String;
    .restart local v28    # "lData":Ljava/lang/StringBuilder;
    .restart local v29    # "lLine":Ljava/lang/String;
    :goto_17
    const/4 v2, 0x0

    .line 2153
    .local v2, "client":Z
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v4

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    if-eq v4, v5, :cond_1c

    .line 2154
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "The local version of the client does not match the server version of the client, download the client"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2155
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7$19;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$7$19;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2164
    const/4 v4, 0x3

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2165
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2166
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2167
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2169
    :try_start_1e
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2170
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2175
    goto :goto_18

    .line 2172
    :cond_1b
    return-void

    .line 2173
    :catch_16
    move-exception v0

    move-object v5, v0

    .line 2174
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2176
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_18
    const/4 v2, 0x1

    .line 2177
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2178
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2181
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    :cond_1c
    if-nez v2, :cond_1d

    .line 2182
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-class v7, Lcom/santrope/launcher/MainActivity;

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2183
    .local v4, "launchIntent":Landroid/content/Intent;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v4}, Lcom/santrope/launcher/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 2184
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Lcom/santrope/launcher/SplashScreen;->finish()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_19
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_17

    goto :goto_1b

    .line 2232
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

    .line 2186
    :catch_18
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    :catch_19
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    .line 2232
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

    .line 2186
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

    .line 2232
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

    .line 2233
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .local v2, "exc":Ljava/lang/Exception;
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_1a
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2234
    .end local v2    # "exc":Ljava/lang/Exception;
    :cond_1d
    :goto_1b
    goto/16 :goto_21

    .line 2186
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

    .line 2187
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_1d
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7$20;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$7$20;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2195
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1800()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    .line 2196
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Files version not found"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2198
    const/4 v4, 0x2

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2199
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2200
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v9

    invoke-direct {v5, v7, v4, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2201
    .local v5, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v7, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v7, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2203
    :try_start_20
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2204
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v9

    const/4 v10, 0x2

    invoke-direct {v4, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    new-array v7, v10, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2209
    goto :goto_1e

    .line 2206
    :cond_1e
    return-void

    .line 2207
    :catch_20
    move-exception v0

    move-object v4, v0

    .line 2208
    .local v4, "e":Ljava/lang/Exception;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2210
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1e
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2211
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1f

    .line 2195
    .end local v5    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_1f
    const/4 v4, -0x1

    .line 2214
    :goto_1f
    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1900()I

    move-result v5

    if-ne v5, v4, :cond_1d

    .line 2215
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v5, "Client version not found"

    const/16 v7, 0x69

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2217
    const/4 v4, 0x3

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2218
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2219
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 2220
    .local v4, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2222
    :try_start_21
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2223
    new-instance v5, Lcom/santrope/launcher/Decompress;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 2228
    goto :goto_20

    .line 2225
    :cond_20
    return-void

    .line 2226
    :catch_21
    move-exception v0

    move-object v5, v0

    .line 2227
    .local v5, "e":Ljava/lang/Exception;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x65

    invoke-static {v7, v10, v9}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 2229
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_20
    const/4 v5, -0x1

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2230
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1b

    .line 2236
    .end local v4    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v2, "install_type":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :cond_21
    move/from16 v22, v2

    move-object/from16 v26, v7

    move/from16 v27, v9

    .end local v2    # "install_type":I
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v22    # "install_type":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$21;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$21;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_21

    .line 1947
    .end local v22    # "install_type":I
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .restart local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v9    # "resume":I
    :cond_22
    move-object/from16 v26, v7

    move/from16 v27, v9

    .line 2244
    .end local v7    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v9    # "resume":I
    .restart local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .restart local v27    # "resume":I
    :goto_21
    return-void

    .line 1829
    .end local v16    # "reinstall":I
    .end local v20    # "liteCache":Ljava/io/File;
    .end local v21    # "fullCache":Ljava/io/File;
    .end local v26    # "prefManager":Lcom/santrope/launcher/PrefManager;
    .end local v27    # "resume":I
    .local v5, "reinstall":I
    .restart local v9    # "resume":I
    :cond_23
    move/from16 v16, v5

    move/from16 v27, v9

    .end local v5    # "reinstall":I
    .end local v9    # "resume":I
    .restart local v16    # "reinstall":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the files and client"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1830
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$10;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$10;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1840
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1841
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1843
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    invoke-direct {v4, v5, v2, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1844
    .local v4, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1846
    :try_start_22
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1847
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1848
    .local v2, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1849
    invoke-virtual {v2}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1851
    const/4 v5, 0x3

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1852
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1853
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1854
    .local v5, "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1856
    :try_start_23
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 1857
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v7, v9, v11, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1862
    goto :goto_22

    .line 1859
    :cond_24
    return-void

    .line 1860
    :catch_22
    move-exception v0

    move-object v7, v0

    .line 1861
    .local v7, "e":Ljava/lang/Exception;
    :try_start_24
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x65

    invoke-static {v9, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1863
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_22
    const/4 v7, -0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1864
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_23

    .line 1865
    return-void

    .line 1867
    .end local v2    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v5    # "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_25
    nop

    .line 1871
    goto :goto_23

    .line 1868
    :cond_26
    return-void

    .line 1869
    :catch_23
    move-exception v0

    move-object v2, v0

    .line 1870
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-static {v5, v8, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1872
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_23
    return-void

    .line 1819
    .end local v4    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v16    # "reinstall":I
    .end local v27    # "resume":I
    .local v5, "reinstall":I
    .restart local v9    # "resume":I
    :cond_27
    move/from16 v16, v5

    .end local v5    # "reinstall":I
    .restart local v16    # "reinstall":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the game"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1820
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$9;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$9;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1827
    return-void

    .line 1792
    .end local v16    # "reinstall":I
    .restart local v5    # "reinstall":I
    :cond_28
    move/from16 v16, v5

    move/from16 v27, v9

    const/16 v5, 0x69

    .end local v5    # "reinstall":I
    .end local v9    # "resume":I
    .restart local v16    # "reinstall":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Reinstall the client"

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1793
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$8;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$8;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1802
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1803
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1805
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1806
    .local v2, "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1808
    :try_start_25
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1809
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1814
    goto :goto_24

    .line 1811
    :cond_29
    return-void

    .line 1812
    :catch_24
    move-exception v0

    move-object v4, v0

    .line 1813
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x65

    invoke-static {v5, v9, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1815
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_24
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1816
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1817
    return-void

    .line 1760
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v16    # "reinstall":I
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_2a
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download client"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1761
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$7;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$7;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1771
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1772
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1773
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v5

    const/4 v7, 0x1

    invoke-direct {v2, v4, v7, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1774
    .restart local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1776
    :try_start_26
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1777
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v7

    const/4 v9, 0x1

    invoke-direct {v4, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1782
    goto :goto_25

    .line 1779
    :cond_2b
    return-void

    .line 1780
    :catch_25
    move-exception v0

    move-object v4, v0

    .line 1781
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x65

    invoke-static {v5, v9, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1783
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_25
    const/4 v4, -0x1

    invoke-interface {v6, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1784
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1785
    return-void

    .line 1716
    .end local v2    # "downloadClient":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_2c
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download files"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1717
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$6;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$6;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1727
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1728
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1729
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    invoke-direct {v4, v5, v2, v7}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1730
    .local v4, "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1732
    :try_start_27
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1733
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v7

    const/4 v9, 0x2

    invoke-direct {v2, v5, v9, v7}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1734
    .local v2, "decompressFiles":Lcom/santrope/launcher/Decompress;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1735
    invoke-virtual {v2}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1737
    const/4 v5, 0x3

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1738
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1739
    new-instance v5, Lcom/santrope/launcher/DownloadManager;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v9

    const/4 v10, 0x1

    invoke-direct {v5, v7, v10, v9}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1740
    .local v5, "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v7}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v9, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1742
    :try_start_28
    invoke-virtual {v5}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1743
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v7, v9, v11, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1748
    goto :goto_26

    .line 1745
    :cond_2d
    return-void

    .line 1746
    :catch_26
    move-exception v0

    move-object v7, v0

    .line 1747
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_29
    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x65

    invoke-static {v9, v11, v10}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1749
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_26
    const/4 v7, -0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1750
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_27

    .line 1751
    return-void

    .line 1753
    .end local v2    # "decompressFiles":Lcom/santrope/launcher/Decompress;
    .end local v5    # "downloadClientForFiles":Lcom/santrope/launcher/DownloadManager;
    :cond_2e
    nop

    .line 1757
    goto :goto_27

    .line 1754
    :cond_2f
    return-void

    .line 1755
    :catch_27
    move-exception v0

    move-object v2, v0

    .line 1756
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    invoke-static {v5, v8, v7}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1758
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    return-void

    .line 1617
    .end local v4    # "downloadFiles":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .restart local v9    # "resume":I
    :cond_30
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download full cache"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1618
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$4;

    invoke-direct {v4, v1, v3}, Lcom/santrope/launcher/SplashScreen$7$4;-><init>(Lcom/santrope/launcher/SplashScreen$7;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1635
    const/4 v2, 0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1636
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1637
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v5}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1638
    .local v2, "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v4}, Lcom/santrope/launcher/SplashScreen;->access$1400(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1640
    :try_start_2a
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1641
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7$5;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$7$5;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v4, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1650
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

    .line 1651
    .local v4, "dirData":Ljava/io/File;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v4}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1652
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

    .line 1653
    .local v5, "dirObb":Ljava/io/File;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1654
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1655
    .local v7, "decompressFullCache":Lcom/santrope/launcher/Decompress;
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 1656
    invoke-virtual {v7}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1657
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1658
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1660
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v2, v9, v14, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1661
    .local v2, "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1663
    :try_start_2c
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1664
    new-instance v4, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v4, v9, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1665
    .local v4, "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    new-array v9, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 1666
    invoke-virtual {v4}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1667
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1668
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1671
    const/4 v2, 0x0

    .line 1672
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 1673
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/net/URL;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2a

    .line 1675
    .local v10, "serverUrl":Ljava/net/URL;
    :try_start_2e
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3

    move-object v2, v11

    .line 1676
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

    .line 1677
    const/16 v11, 0x400

    new-array v13, v11, [B
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    .line 1679
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
    if-eq v4, v14, :cond_31

    .line 1680
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v9, v13, v4, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    move-object/from16 v4, v18

    const/16 v11, 0x400

    goto :goto_28

    .line 1682
    .end local v11    # "count":I
    .end local v13    # "data":[B
    :catchall_0
    move-exception v0

    move-object/from16 v22, v2

    move-object v2, v0

    goto/16 :goto_2b

    :cond_31
    nop

    .line 1683
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1684
    nop

    .line 1685
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1689
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v4, v11, v14, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1690
    .local v4, "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/String;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1692
    :try_start_33
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1693
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v2, v11, v14, v13}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1698
    goto :goto_2a

    .line 1696
    :catch_28
    move-exception v0

    move-object v2, v0

    goto :goto_29

    .line 1695
    .end local v16    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v4    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_32
    return-void

    .line 1696
    :catch_29
    move-exception v0

    move-object/from16 v16, v4

    move-object v2, v0

    .line 1697
    .end local v4    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v16    # "downloadClientForFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_29
    :try_start_35
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v4, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1699
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1700
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1701
    return-void

    .line 1682
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
    if-eqz v22, :cond_33

    .line 1683
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedInputStream;->close()V

    .line 1684
    :cond_33
    if-eqz v9, :cond_34

    .line 1685
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1686
    :cond_34
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

    .line 1666
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
    :cond_35
    move-object/from16 v18, v4

    .line 1703
    .end local v4    # "decompressFilesForFullCache":Lcom/santrope/launcher/Decompress;
    nop

    .line 1707
    goto :goto_2d

    .line 1705
    :catch_2a
    move-exception v0

    move-object v2, v0

    goto :goto_2c

    .line 1704
    .end local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_36
    return-void

    .line 1705
    :catch_2b
    move-exception v0

    move-object/from16 v21, v2

    move-object v2, v0

    .line 1706
    .local v2, "e":Ljava/lang/Exception;
    .restart local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_2c
    :try_start_36
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x65

    invoke-static {v4, v9, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2c

    goto :goto_2d

    .line 1656
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v20    # "dirData":Ljava/io/File;
    .end local v21    # "downloadFilesForFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v4, "dirData":Ljava/io/File;
    :cond_37
    move-object/from16 v20, v4

    .line 1709
    .end local v4    # "dirData":Ljava/io/File;
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressFullCache":Lcom/santrope/launcher/Decompress;
    :goto_2d
    nop

    .line 1713
    goto :goto_2f

    .line 1711
    :catch_2c
    move-exception v0

    move-object v2, v0

    goto :goto_2e

    .line 1710
    .end local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    :cond_38
    return-void

    .line 1711
    :catch_2d
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .line 1712
    .local v2, "e":Ljava/lang/Exception;
    .restart local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    :goto_2e
    iget-object v4, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v4, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1714
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void

    .line 1517
    .end local v17    # "downloadFullCache":Lcom/santrope/launcher/DownloadManager;
    .end local v27    # "resume":I
    .local v9, "resume":I
    :cond_39
    move/from16 v27, v9

    .end local v9    # "resume":I
    .restart local v27    # "resume":I
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const-string v4, "Continue download lite cache"

    const/16 v5, 0x69

    invoke-static {v2, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1518
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$2;

    invoke-direct {v4, v1, v3}, Lcom/santrope/launcher/SplashScreen$7$2;-><init>(Lcom/santrope/launcher/SplashScreen$7;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1535
    const/4 v2, 0x0

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1536
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1537
    new-instance v4, Lcom/santrope/launcher/DownloadManager;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v4, v5, v2, v2}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1538
    .local v4, "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/String;

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v5}, Lcom/santrope/launcher/SplashScreen;->access$800(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1540
    :try_start_37
    invoke-virtual {v4}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1541
    iget-object v2, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v5, Lcom/santrope/launcher/SplashScreen$7$3;

    invoke-direct {v5, v1}, Lcom/santrope/launcher/SplashScreen$7$3;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v2, v5}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1550
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

    .line 1551
    .local v2, "dirData":Ljava/io/File;
    iget-object v5, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v5, v2}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1552
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

    .line 1553
    .restart local v5    # "dirObb":Ljava/io/File;
    iget-object v7, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v7, v5}, Lcom/santrope/launcher/SplashScreen;->deleteRecursive(Ljava/io/File;)V

    .line 1554
    new-instance v7, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1555
    .local v7, "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1556
    invoke-virtual {v7}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1557
    const/4 v2, 0x2

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1558
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1560
    new-instance v2, Lcom/santrope/launcher/DownloadManager;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v2, v9, v14, v10}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1561
    .local v2, "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    new-array v9, v14, [Ljava/lang/String;

    iget-object v10, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v10}, Lcom/santrope/launcher/SplashScreen;->access$1000(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    aput-object v10, v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 1563
    :try_start_39
    invoke-virtual {v2}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1564
    new-instance v3, Lcom/santrope/launcher/Decompress;

    iget-object v9, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$900()I

    move-result v10

    const/4 v14, 0x2

    invoke-direct {v3, v9, v14, v10}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    .line 1565
    .local v3, "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    new-array v9, v14, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    .line 1566
    invoke-virtual {v3}, Lcom/santrope/launcher/Decompress;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1567
    const/4 v2, 0x3

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1568
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1571
    const/4 v2, 0x0

    .line 1572
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 1573
    .local v9, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/net/URL;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1100(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_30

    .line 1575
    .restart local v10    # "serverUrl":Ljava/net/URL;
    :try_start_3b
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_7

    move-object v2, v11

    .line 1576
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

    .line 1577
    const/16 v11, 0x400

    new-array v13, v11, [B
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6

    .line 1579
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
    if-eq v3, v11, :cond_3a

    .line 1580
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

    .line 1582
    .end local v3    # "count":I
    .end local v13    # "data":[B
    :catchall_4
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    goto/16 :goto_33

    .line 1579
    .restart local v13    # "data":[B
    .restart local v18    # "count":I
    :cond_3a
    move/from16 v3, v18

    .line 1582
    .end local v13    # "data":[B
    .end local v18    # "count":I
    nop

    .line 1583
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1584
    nop

    .line 1585
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1589
    new-instance v3, Lcom/santrope/launcher/DownloadManager;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v3, v11, v14, v13}, Lcom/santrope/launcher/DownloadManager;-><init>(Landroid/app/Activity;II)V

    .line 1590
    .local v3, "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/String;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v11}, Lcom/santrope/launcher/SplashScreen;->access$1300(Lcom/santrope/launcher/SplashScreen;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1592
    :try_start_40
    invoke-virtual {v3}, Lcom/santrope/launcher/DownloadManager;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1593
    new-instance v2, Lcom/santrope/launcher/Decompress;

    iget-object v11, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {}, Lcom/santrope/launcher/SplashScreen;->access$1200()I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v2, v11, v14, v13}, Lcom/santrope/launcher/Decompress;-><init>(Landroid/app/Activity;II)V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;
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

    iget-object v13, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

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

    .line 1598
    goto :goto_32

    .line 1596
    :catch_2e
    move-exception v0

    move-object v2, v0

    goto :goto_31

    .line 1595
    .end local v19    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .restart local v3    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :cond_3b
    return-void

    .line 1596
    :catch_2f
    move-exception v0

    move-object/from16 v19, v3

    move-object v2, v0

    .line 1597
    .end local v3    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v19    # "downloadClientForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :goto_31
    :try_start_42
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    invoke-static {v3, v12, v11}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1599
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    const/4 v2, -0x1

    invoke-interface {v6, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1600
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1601
    return-void

    .line 1582
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
    if-eqz v18, :cond_3c

    .line 1583
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    .line 1584
    :cond_3c
    if-eqz v9, :cond_3d

    .line 1585
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1586
    :cond_3d
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

    .line 1566
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
    :cond_3e
    move-object/from16 v16, v3

    .line 1603
    .end local v3    # "decompressFilesForLiteCache":Lcom/santrope/launcher/Decompress;
    nop

    .line 1607
    goto :goto_35

    .line 1605
    :catch_30
    move-exception v0

    move-object v2, v0

    goto :goto_34

    .line 1604
    .end local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    .local v2, "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :cond_3f
    return-void

    .line 1605
    :catch_31
    move-exception v0

    move-object/from16 v21, v2

    move-object v2, v0

    .line 1606
    .local v2, "e":Ljava/lang/Exception;
    .restart local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :goto_34
    :try_start_43
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x65

    invoke-static {v3, v9, v8}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_32

    .line 1608
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v21    # "downloadFilesForLiteCache":Lcom/santrope/launcher/DownloadManager;
    :goto_35
    nop

    .line 1610
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "dirData":Ljava/io/File;
    nop

    .line 1614
    goto :goto_37

    .line 1612
    :catch_32
    move-exception v0

    move-object v2, v0

    goto :goto_36

    .line 1609
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .local v3, "sp":Landroid/content/SharedPreferences;
    .restart local v5    # "dirObb":Ljava/io/File;
    .restart local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .restart local v17    # "dirData":Ljava/io/File;
    :cond_40
    return-void

    .line 1611
    .end local v5    # "dirObb":Ljava/io/File;
    .end local v7    # "decompressLiteCache":Lcom/santrope/launcher/Decompress;
    .end local v17    # "dirData":Ljava/io/File;
    :cond_41
    return-void

    .line 1612
    :catch_33
    move-exception v0

    move-object/from16 v20, v3

    move-object v2, v0

    .line 1613
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v20    # "sp":Landroid/content/SharedPreferences;
    :goto_36
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x65

    invoke-static {v3, v7, v5}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1615
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_37
    return-void

    .line 1497
    .end local v4    # "downloadLiteCache":Lcom/santrope/launcher/DownloadManager;
    .end local v6    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .end local v27    # "resume":I
    :catch_34
    move-exception v0

    move-object v2, v0

    .line 1498
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-instance v4, Lcom/santrope/launcher/SplashScreen$7$1;

    invoke-direct {v4, v1}, Lcom/santrope/launcher/SplashScreen$7$1;-><init>(Lcom/santrope/launcher/SplashScreen$7;)V

    invoke-virtual {v3, v4}, Lcom/santrope/launcher/SplashScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1507
    iget-object v3, v1, Lcom/santrope/launcher/SplashScreen$7;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-static {v3, v5, v4}, Lcom/santrope/launcher/SanTropeLog;->writeLog(Landroid/app/Activity;CLjava/lang/String;)V

    .line 1508
    return-void
.end method
