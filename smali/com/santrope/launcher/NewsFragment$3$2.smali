.class Lcom/santrope/launcher/NewsFragment$3$2;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/NewsFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/NewsFragment$3;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/NewsFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/NewsFragment$3;

    .line 122
    iput-object p1, p0, Lcom/santrope/launcher/NewsFragment$3$2;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/santrope/launcher/NewsFragment$3$2;->this$1:Lcom/santrope/launcher/NewsFragment$3;

    iget-object v0, v0, Lcom/santrope/launcher/NewsFragment$3;->val$unableVK:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    return-void
.end method
