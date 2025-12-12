.class public Lcom/santrope/launcher/INIFile$INIProperty;
.super Ljava/lang/Object;
.source "INIFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/santrope/launcher/INIFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INIProperty"
.end annotation


# instance fields
.field private mStrComments:Ljava/lang/String;

.field private mStrName:Ljava/lang/String;

.field private mStrValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/santrope/launcher/INIFile;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/INIFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/INIFile;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "comments"    # Ljava/lang/String;

    .line 315
    iput-object p1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->this$0:Lcom/santrope/launcher/INIFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrName:Ljava/lang/String;

    .line 317
    iput-object p3, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrValue:Ljava/lang/String;

    .line 318
    iput-object p4, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrComments:Ljava/lang/String;

    .line 319
    return-void
.end method


# virtual methods
.method getPropValue()Ljava/lang/String;
    .locals 7

    .line 328
    iget-object v0, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrValue:Ljava/lang/String;

    .line 329
    .local v0, "strRet":Ljava/lang/String;
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 330
    .local v2, "intStart":I
    if-ltz v2, :cond_0

    .line 331
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 332
    .local v1, "intEnd":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "strVar":Ljava/lang/String;
    iget-object v4, p0, Lcom/santrope/launcher/INIFile$INIProperty;->this$0:Lcom/santrope/launcher/INIFile;

    invoke-static {v4}, Lcom/santrope/launcher/INIFile;->access$000(Lcom/santrope/launcher/INIFile;)Ljava/util/Properties;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 335
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    .line 336
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .end local v1    # "intEnd":I
    .end local v3    # "strVar":Ljava/lang/String;
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method setPropValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrValue:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrComments:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 352
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrComments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/santrope/launcher/INIFile$INIProperty;->mStrValue:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
