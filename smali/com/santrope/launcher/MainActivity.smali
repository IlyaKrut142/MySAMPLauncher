.class public Lcom/santrope/launcher/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field active:Landroidx/fragment/app/Fragment;

.field final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field final mNewsFragment:Lcom/santrope/launcher/NewsFragment;

.field private mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

.field final mServersFragment:Lcom/santrope/launcher/ServersFragment;

.field final mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/santrope/launcher/NewsFragment;

    invoke-direct {v0}, Lcom/santrope/launcher/NewsFragment;-><init>()V

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->mNewsFragment:Lcom/santrope/launcher/NewsFragment;

    .line 23
    new-instance v0, Lcom/santrope/launcher/ServersFragment;

    invoke-direct {v0}, Lcom/santrope/launcher/ServersFragment;-><init>()V

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->mServersFragment:Lcom/santrope/launcher/ServersFragment;

    .line 24
    new-instance v0, Lcom/santrope/launcher/SettingsFragment;

    invoke-direct {v0}, Lcom/santrope/launcher/SettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;

    .line 25
    invoke-virtual {p0}, Lcom/santrope/launcher/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 26
    iget-object v0, p0, Lcom/santrope/launcher/MainActivity;->mNewsFragment:Lcom/santrope/launcher/NewsFragment;

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->active:Landroidx/fragment/app/Fragment;

    .line 28
    new-instance v0, Lcom/santrope/launcher/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/santrope/launcher/MainActivity$1;-><init>(Lcom/santrope/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/santrope/launcher/MainActivity;->mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    const-string v0, ""

    const-string v1, "settings-ini-data"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f0c001c

    invoke-virtual {p0, v2}, Lcom/santrope/launcher/MainActivity;->setContentView(I)V

    .line 57
    const v2, 0x7f090084

    invoke-virtual {p0, v2}, Lcom/santrope/launcher/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 58
    .local v2, "mNavView":Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    iget-object v3, p0, Lcom/santrope/launcher/MainActivity;->mOnNavigationItemSelectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 59
    iget-object v3, p0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/santrope/launcher/MainActivity;->mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;

    const v5, 0x7f090079

    const-string v6, "3"

    invoke-virtual {v3, v5, v4, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/santrope/launcher/MainActivity;->mSettingsFragment:Lcom/santrope/launcher/SettingsFragment;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 60
    iget-object v3, p0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/santrope/launcher/MainActivity;->mServersFragment:Lcom/santrope/launcher/ServersFragment;

    const-string v6, "2"

    invoke-virtual {v3, v5, v4, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/santrope/launcher/MainActivity;->mServersFragment:Lcom/santrope/launcher/ServersFragment;

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 61
    iget-object v3, p0, Lcom/santrope/launcher/MainActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/santrope/launcher/MainActivity;->mNewsFragment:Lcom/santrope/launcher/NewsFragment;

    const-string v6, "1"

    invoke-virtual {v3, v5, v4, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 63
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/Android/data/com.rockstargames.gtasa/files/SAMP/settings.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, "settingsIni":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    :try_start_0
    const-string v4, "santrope-settings"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/santrope/launcher/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 67
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/santrope/launcher/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 68
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v6, v7

    .line 69
    .local v6, "output":Ljava/io/Writer;
    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 71
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "output":Ljava/io/Writer;
    :cond_0
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 78
    :cond_1
    :goto_0
    new-instance v0, Lcom/santrope/launcher/INIFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/santrope/launcher/INIFile;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 79
    .local v0, "config":Lcom/santrope/launcher/INIFile;
    const-string v1, "client"

    const-string v4, "name"

    invoke-virtual {v0, v1, v4}, Lcom/santrope/launcher/INIFile;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/santrope/launcher/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    new-instance v1, Lcom/santrope/launcher/ViewDialogNickname;

    invoke-direct {v1}, Lcom/santrope/launcher/ViewDialogNickname;-><init>()V

    .line 81
    .local v1, "dialog":Lcom/santrope/launcher/ViewDialogNickname;
    invoke-virtual {v1, p0}, Lcom/santrope/launcher/ViewDialogNickname;->showDialog(Landroid/app/Activity;)V

    .line 83
    .end local v1    # "dialog":Lcom/santrope/launcher/ViewDialogNickname;
    :cond_2
    return-void
.end method
