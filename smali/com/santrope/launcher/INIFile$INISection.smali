.class public Lcom/santrope/launcher/INIFile$INISection;
.super Ljava/lang/Object;
.source "INIFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/santrope/launcher/INIFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INISection"
.end annotation


# instance fields
.field private mHMapProps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/santrope/launcher/INIFile$INIProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mStrComment:Ljava/lang/String;

.field private mStrName:Ljava/lang/String;

.field final synthetic this$0:Lcom/santrope/launcher/INIFile;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/santrope/launcher/INIFile;
    .param p2, "section"    # Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lcom/santrope/launcher/INIFile$INISection;->this$0:Lcom/santrope/launcher/INIFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrName:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    .line 258
    return-void
.end method

.method constructor <init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/santrope/launcher/INIFile;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "comments"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/santrope/launcher/INIFile$INISection;->this$0:Lcom/santrope/launcher/INIFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrName:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrComment:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    .line 264
    return-void
.end method


# virtual methods
.method getProperty(Ljava/lang/String;)Lcom/santrope/launcher/INIFile$INIProperty;
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "objRet":Lcom/santrope/launcher/INIFile$INIProperty;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "strKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/santrope/launcher/INIFile$INIProperty;

    .line 284
    :cond_0
    return-object v0
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "comments"    # Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "strKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/santrope/launcher/INIFile$INIProperty;

    invoke-virtual {v1, p2}, Lcom/santrope/launcher/INIFile$INIProperty;->setPropValue(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/santrope/launcher/INIFile$INIProperty;

    iget-object v3, p0, Lcom/santrope/launcher/INIFile$INISection;->this$0:Lcom/santrope/launcher/INIFile;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/santrope/launcher/INIFile$INIProperty;-><init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 291
    .local v0, "objBuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrComment:Ljava/lang/String;

    const-string v2, "\r\n"

    if-eqz v1, :cond_1

    .line 292
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_1
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mStrName:Ljava/lang/String;

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v1, "]\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INISection;->mHMapProps:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 303
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/santrope/launcher/INIFile$INIProperty;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/santrope/launcher/INIFile$INIProperty;

    invoke-virtual {v4}, Lcom/santrope/launcher/INIFile$INIProperty;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/santrope/launcher/INIFile$INIProperty;>;"
    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
