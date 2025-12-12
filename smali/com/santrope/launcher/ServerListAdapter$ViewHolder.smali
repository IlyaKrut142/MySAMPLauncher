.class Lcom/santrope/launcher/ServerListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ServerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/santrope/launcher/ServerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field online:Landroid/widget/ImageView;

.field ping:Landroid/widget/TextView;

.field playerCount:Landroid/widget/TextView;

.field serverName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/santrope/launcher/ServerListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/santrope/launcher/ServerListAdapter$1;

    .line 17
    invoke-direct {p0}, Lcom/santrope/launcher/ServerListAdapter$ViewHolder;-><init>()V

    return-void
.end method
