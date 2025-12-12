.class Lcom/santrope/launcher/SplashScreen$6;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/SplashScreen;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/SplashScreen;

    .line 1447
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$6;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1450
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$6;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1451
    return-void
.end method
