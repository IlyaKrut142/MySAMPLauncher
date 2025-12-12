.class Lcom/santrope/launcher/Decompress$2;
.super Ljava/lang/Object;
.source "Decompress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/Decompress;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/Decompress;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/Decompress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/Decompress;

    .line 83
    iput-object p1, p0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/santrope/launcher/Decompress;->access$202(Lcom/santrope/launcher/Decompress;Ljava/util/Timer;)Ljava/util/Timer;

    .line 87
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v0}, Lcom/santrope/launcher/Decompress;->access$200(Lcom/santrope/launcher/Decompress;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/santrope/launcher/Decompress$2$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/Decompress$2$1;-><init>(Lcom/santrope/launcher/Decompress$2;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 95
    return-void
.end method
