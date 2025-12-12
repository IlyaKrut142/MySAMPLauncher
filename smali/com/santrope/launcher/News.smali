.class Lcom/santrope/launcher/News;
.super Ljava/lang/Object;
.source "News.java"


# instance fields
.field mDate:Ljava/lang/String;

.field mImage:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/String;

.field mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "image"    # Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/santrope/launcher/News;->mDate:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/santrope/launcher/News;->mName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/santrope/launcher/News;->mText:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/santrope/launcher/News;->mImage:Landroid/graphics/drawable/Drawable;

    .line 19
    return-void
.end method
