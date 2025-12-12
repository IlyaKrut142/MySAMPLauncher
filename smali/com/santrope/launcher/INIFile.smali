.class Lcom/santrope/launcher/INIFile;
.super Ljava/lang/Object;
.source "INIFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/santrope/launcher/INIFile$INIProperty;,
        Lcom/santrope/launcher/INIFile$INISection;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mHMapSections:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/santrope/launcher/INIFile$INISection;",
            ">;"
        }
    .end annotation
.end field

.field private mPropEnv:Ljava/util/Properties;

.field private mStrFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pathAndName"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/santrope/launcher/INIFile;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 28
    invoke-direct {p0}, Lcom/santrope/launcher/INIFile;->getEnvVars()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/santrope/launcher/INIFile;->mPropEnv:Ljava/util/Properties;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    .line 30
    iput-object p2, p0, Lcom/santrope/launcher/INIFile;->mStrFile:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p2}, Lcom/santrope/launcher/INIFile;->checkFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/santrope/launcher/INIFile;->loadFile()V

    .line 35
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/santrope/launcher/INIFile;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Lcom/santrope/launcher/INIFile;

    .line 20
    iget-object v0, p0, Lcom/santrope/launcher/INIFile;->mPropEnv:Ljava/util/Properties;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 241
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "objFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 246
    .local v1, "blnRet":Z
    :goto_0
    goto :goto_1

    .line 244
    .end local v0    # "objFile":Ljava/io/File;
    .end local v1    # "blnRet":Z
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "blnRet":Z
    :goto_1
    return v1
.end method

.method private closeReader(Ljava/io/Reader;)V
    .locals 1
    .param p1, "rdr"    # Ljava/io/Reader;

    .line 215
    if-nez p1, :cond_0

    .line 216
    return-void

    .line 219
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    :goto_0
    return-void
.end method

.method private closeWriter(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 226
    if-nez p1, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    :goto_0
    return-void
.end method

.method private getEnvVars()Ljava/util/Properties;
    .locals 5

    .line 132
    const/4 v0, 0x0

    .line 136
    .local v0, "envVars":Ljava/util/Properties;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v1

    .line 137
    .local v1, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    move-object v0, v2

    .line 138
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, "envName":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v3    # "envName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 145
    .end local v1    # "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    goto :goto_1

    .line 143
    :catch_1
    move-exception v1

    .line 146
    goto :goto_1

    .line 141
    :catch_2
    move-exception v1

    .line 146
    nop

    .line 147
    :goto_1
    return-object v0
.end method

.method private loadFile()V
    .locals 4

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "objFRdr":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 155
    .local v1, "objBRdr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/santrope/launcher/INIFile;->mStrFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 156
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 157
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->loadFile(Ljava/io/BufferedReader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "ex":Ljava/io/FileNotFoundException;
    :try_start_1
    iget-object v3, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    :goto_0
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeReader(Ljava/io/Reader;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/santrope/launcher/INIFile;->closeReader(Ljava/io/Reader;)V

    .line 165
    nop

    .line 166
    return-void

    .line 163
    :goto_1
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeReader(Ljava/io/Reader;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/santrope/launcher/INIFile;->closeReader(Ljava/io/Reader;)V

    .line 165
    throw v2
.end method

.method private loadFile(Ljava/io/BufferedReader;)V
    .locals 7
    .param p1, "objBRdr"    # Ljava/io/BufferedReader;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "strSection":Ljava/lang/String;
    const/4 v1, 0x0

    .line 173
    .local v1, "strRemarks":Ljava/lang/String;
    const/4 v2, 0x0

    .line 176
    .local v2, "objSec":Lcom/santrope/launcher/INIFile$INISection;
    :try_start_0
    const-string v3, ""

    .line 177
    .local v3, "strLine":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 178
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 179
    invoke-static {v3}, Lcom/santrope/launcher/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-static {v1}, Lcom/santrope/launcher/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    move-object v1, v3

    goto :goto_0

    .line 185
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 186
    :cond_3
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 188
    if-eqz v2, :cond_4

    .line 189
    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 192
    new-instance v4, Lcom/santrope/launcher/INIFile$INISection;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1}, Lcom/santrope/launcher/INIFile$INISection;-><init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    .line 193
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    :cond_5
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .local v5, "iPos":I
    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    .line 196
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v1}, Lcom/santrope/launcher/INIFile$INISection;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 200
    .end local v5    # "iPos":I
    :cond_6
    if-eqz v2, :cond_7

    .line 201
    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_7
    goto :goto_1

    .line 209
    .end local v3    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 210
    .local v3, "NPExIgnore":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_1

    .line 206
    .end local v3    # "NPExIgnore":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 207
    .local v3, "IOExIgnore":Ljava/io/IOException;
    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 211
    .end local v3    # "IOExIgnore":Ljava/io/IOException;
    goto :goto_1

    .line 203
    :catch_2
    move-exception v3

    .line 204
    .local v3, "FNFExIgnore":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 211
    .end local v3    # "FNFExIgnore":Ljava/io/FileNotFoundException;
    nop

    .line 212
    :goto_1
    return-void
.end method


# virtual methods
.method public getIntegerProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    .line 60
    .local v0, "intRet":Ljava/lang/Integer;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/santrope/launcher/INIFile$INISection;

    .line 62
    .local v2, "objSec":Lcom/santrope/launcher/INIFile$INISection;
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2, p2}, Lcom/santrope/launcher/INIFile$INISection;->getProperty(Ljava/lang/String;)Lcom/santrope/launcher/INIFile$INIProperty;

    move-result-object v3

    .line 65
    .local v3, "objProp":Lcom/santrope/launcher/INIFile$INIProperty;
    if-eqz v3, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {v3}, Lcom/santrope/launcher/INIFile$INIProperty;->getPropValue()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 71
    .end local v4    # "strVal":Ljava/lang/String;
    :catch_0
    move-exception v4

    nop

    .line 74
    .end local v3    # "objProp":Lcom/santrope/launcher/INIFile$INIProperty;
    :cond_0
    :goto_0
    return-object v0
.end method

.method getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 43
    .local v0, "strRet":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/santrope/launcher/INIFile$INISection;

    .line 45
    .local v2, "objSec":Lcom/santrope/launcher/INIFile$INISection;
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2, p2}, Lcom/santrope/launcher/INIFile$INISection;->getProperty(Ljava/lang/String;)Lcom/santrope/launcher/INIFile$INIProperty;

    move-result-object v3

    .line 47
    .local v3, "objProp":Lcom/santrope/launcher/INIFile$INIProperty;
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v3}, Lcom/santrope/launcher/INIFile$INIProperty;->getPropValue()Ljava/lang/String;

    move-result-object v0

    .line 50
    .end local v3    # "objProp":Lcom/santrope/launcher/INIFile$INIProperty;
    :cond_0
    return-object v0
.end method

.method save()V
    .locals 8

    .line 105
    const-string v0, "\r\n"

    const/4 v1, 0x0

    .line 106
    .local v1, "objWriter":Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/santrope/launcher/INIFile;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const-string v3, "santrope-settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 109
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    iget-object v3, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 127
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeWriter(Ljava/io/Writer;)V

    .line 109
    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/santrope/launcher/INIFile;->mStrFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, "objFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 114
    :cond_1
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v4, "data":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 117
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/santrope/launcher/INIFile$INISection;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/santrope/launcher/INIFile$INISection;

    invoke-virtual {v7}, Lcom/santrope/launcher/INIFile$INISection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/santrope/launcher/INIFile$INISection;

    invoke-virtual {v7}, Lcom/santrope/launcher/INIFile$INISection;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/santrope/launcher/INIFile$INISection;>;"
    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "settings-ini-data"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v4    # "data":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeWriter(Ljava/io/Writer;)V

    .line 128
    goto :goto_1

    .line 127
    .end local v3    # "objFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeWriter(Ljava/io/Writer;)V

    .line 128
    throw v0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    invoke-direct {p0, v1}, Lcom/santrope/launcher/INIFile;->closeWriter(Ljava/io/Writer;)V

    .line 128
    nop

    .line 129
    :goto_1
    return-void
.end method

.method setIntegerProperty(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "comments"    # Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "strKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santrope/launcher/INIFile$INISection;

    .line 96
    .local v1, "objSec":Lcom/santrope/launcher/INIFile$INISection;
    if-nez v1, :cond_0

    .line 97
    new-instance v2, Lcom/santrope/launcher/INIFile$INISection;

    invoke-direct {v2, p0, p1}, Lcom/santrope/launcher/INIFile$INISection;-><init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;)V

    move-object v1, v2

    .line 98
    iget-object v2, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, p4}, Lcom/santrope/launcher/INIFile$INISection;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method setStringProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "prop"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/String;
    .param p4, "comments"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "strKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santrope/launcher/INIFile$INISection;

    .line 83
    .local v1, "objSec":Lcom/santrope/launcher/INIFile$INISection;
    if-nez v1, :cond_0

    .line 84
    new-instance v2, Lcom/santrope/launcher/INIFile$INISection;

    invoke-direct {v2, p0, p1}, Lcom/santrope/launcher/INIFile$INISection;-><init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;)V

    move-object v1, v2

    .line 85
    iget-object v2, p0, Lcom/santrope/launcher/INIFile;->mHMapSections:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/santrope/launcher/INIFile$INISection;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
