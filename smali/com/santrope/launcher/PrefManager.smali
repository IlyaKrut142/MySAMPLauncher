.class Lcom/santrope/launcher/PrefManager;
.super Ljava/lang/Object;
.source "PrefManager.java"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "santrope-settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/santrope/launcher/PrefManager;->mPref:Landroid/content/SharedPreferences;

    .line 13
    iget-object v0, p0, Lcom/santrope/launcher/PrefManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/santrope/launcher/PrefManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 14
    return-void
.end method


# virtual methods
.method isFirstTimeLaunch()Z
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/santrope/launcher/PrefManager;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "isFirstTimeLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method setFirstTimeLaunch(Z)V
    .locals 2
    .param p1, "isFirstTime"    # Z

    .line 18
    iget-object v0, p0, Lcom/santrope/launcher/PrefManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isFirstTimeLaunch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object v0, p0, Lcom/santrope/launcher/PrefManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method
