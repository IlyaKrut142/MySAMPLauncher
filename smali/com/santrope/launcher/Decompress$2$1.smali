.class Lcom/santrope/launcher/Decompress$2$1;
.super Ljava/util/TimerTask;
.source "Decompress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/Decompress$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/santrope/launcher/Decompress$2;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/Decompress$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/santrope/launcher/Decompress$2;

    .line 87
    iput-object p1, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v0, v0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v0}, Lcom/santrope/launcher/Decompress;->access$300(Lcom/santrope/launcher/Decompress;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 90
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v0, v0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    iget-object v1, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v1, v1, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v1}, Lcom/santrope/launcher/Decompress;->access$500(Lcom/santrope/launcher/Decompress;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v3, v3, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v3}, Lcom/santrope/launcher/Decompress;->access$300(Lcom/santrope/launcher/Decompress;)J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v0, v2}, Lcom/santrope/launcher/Decompress;->access$402(Lcom/santrope/launcher/Decompress;I)I

    .line 91
    iget-object v0, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v0, v0, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/santrope/launcher/Decompress$2$1;->this$1:Lcom/santrope/launcher/Decompress$2;

    iget-object v3, v3, Lcom/santrope/launcher/Decompress$2;->this$0:Lcom/santrope/launcher/Decompress;

    invoke-static {v3}, Lcom/santrope/launcher/Decompress;->access$400(Lcom/santrope/launcher/Decompress;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/santrope/launcher/Decompress;->access$600(Lcom/santrope/launcher/Decompress;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
