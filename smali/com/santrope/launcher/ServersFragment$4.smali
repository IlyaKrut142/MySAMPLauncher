.class Lcom/santrope/launcher/ServersFragment$4;
.super Ljava/lang/Object;
.source "ServersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ServersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ServersFragment;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ServersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ServersFragment;

    .line 117
    iput-object p1, p0, Lcom/santrope/launcher/ServersFragment$4;->this$0:Lcom/santrope/launcher/ServersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 120
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 121
    .local v0, "updateServersTimer":Ljava/util/Timer;
    new-instance v1, Lcom/santrope/launcher/ServersFragment$4$1;

    invoke-direct {v1, p0}, Lcom/santrope/launcher/ServersFragment$4$1;-><init>(Lcom/santrope/launcher/ServersFragment$4;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 163
    return-void
.end method
