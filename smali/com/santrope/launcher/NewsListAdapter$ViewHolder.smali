.class Lcom/santrope/launcher/NewsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NewsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/santrope/launcher/NewsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field date:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field photo:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santrope/launcher/NewsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/santrope/launcher/NewsListAdapter$1;

    .line 16
    invoke-direct {p0}, Lcom/santrope/launcher/NewsListAdapter$ViewHolder;-><init>()V

    return-void
.end method
