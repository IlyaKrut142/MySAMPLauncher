.class Lcom/santrope/launcher/Server;
.super Ljava/lang/Object;
.source "Server.java"


# instance fields
.field address:Ljava/lang/String;

.field gameMode:Ljava/lang/String;

.field hostName:Ljava/lang/String;

.field language:Ljava/lang/String;

.field online:Ljava/lang/String;

.field password:Z

.field ping:Ljava/lang/String;

.field playerCount:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "online"    # Ljava/lang/String;
    .param p3, "password"    # Z
    .param p4, "hostName"    # Ljava/lang/String;
    .param p5, "playerCount"    # Ljava/lang/String;
    .param p6, "gameMode"    # Ljava/lang/String;
    .param p7, "language"    # Ljava/lang/String;
    .param p8, "ping"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/santrope/launcher/Server;->address:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/santrope/launcher/Server;->online:Ljava/lang/String;

    .line 16
    iput-boolean p3, p0, Lcom/santrope/launcher/Server;->password:Z

    .line 17
    iput-object p4, p0, Lcom/santrope/launcher/Server;->hostName:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/santrope/launcher/Server;->playerCount:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/santrope/launcher/Server;->gameMode:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/santrope/launcher/Server;->language:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/santrope/launcher/Server;->ping:Ljava/lang/String;

    .line 22
    return-void
.end method
