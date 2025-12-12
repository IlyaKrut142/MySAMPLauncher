.class Lcom/santrope/launcher/SplashScreen$5;
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

    .line 380
    iput-object p1, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 383
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-virtual {v0}, Lcom/santrope/launcher/SplashScreen;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v0}, Lcom/santrope/launcher/SplashScreen;->access$1500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    const/4 v1, 0x0

    const-string v2, "santrope-settings"

    invoke-virtual {v0, v2, v1}, Lcom/santrope/launcher/SplashScreen;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    const-string v3, "resume_type"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 388
    .local v3, "resume":I
    const v4, 0x7f090069

    const v5, 0x7f09009f

    const-string v6, "reinstall"

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v3, :cond_6

    const/4 v9, 0x1

    if-eq v3, v9, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v8, :cond_1

    .line 655
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_0

    .line 656
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v4, v1

    invoke-static {v2, v4, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 659
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$5$5;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$5$5;-><init>(Lcom/santrope/launcher/SplashScreen$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1439
    .local v1, "splashScreenThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 627
    .end local v1    # "splashScreenThread":Ljava/lang/Thread;
    :cond_1
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 629
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$5$4;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$5$4;-><init>(Lcom/santrope/launcher/SplashScreen$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 652
    .local v1, "resumeDownloadClient":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 653
    return-void

    .line 584
    .end local v1    # "resumeDownloadClient":Ljava/lang/Thread;
    :cond_2
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 586
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$5$3;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$5$3;-><init>(Lcom/santrope/launcher/SplashScreen$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 624
    .local v1, "resumeDownloadFiles":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 625
    return-void

    .line 487
    .end local v1    # "resumeDownloadFiles":Ljava/lang/Thread;
    :cond_3
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 491
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$600(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 492
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 494
    :cond_4
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 495
    :goto_0
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    :cond_5
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$5$2;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$5$2;-><init>(Lcom/santrope/launcher/SplashScreen$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 581
    .local v1, "resumeDownloadFullCache":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 582
    return-void

    .line 390
    .end local v1    # "resumeDownloadFullCache":Ljava/lang/Thread;
    :cond_6
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$200(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$300(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 392
    iget-object v9, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v9}, Lcom/santrope/launcher/SplashScreen;->access$400(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 394
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$600(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 395
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 397
    :cond_7
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 398
    :goto_1
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$700(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    :cond_8
    iget-object v2, p0, Lcom/santrope/launcher/SplashScreen$5;->this$0:Lcom/santrope/launcher/SplashScreen;

    invoke-static {v2}, Lcom/santrope/launcher/SplashScreen;->access$500(Lcom/santrope/launcher/SplashScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/santrope/launcher/SplashScreen$5$1;

    invoke-direct {v2, p0}, Lcom/santrope/launcher/SplashScreen$5$1;-><init>(Lcom/santrope/launcher/SplashScreen$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    .local v1, "resumeDownloadLiteCache":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 485
    return-void

    .line 1443
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "resumeDownloadLiteCache":Ljava/lang/Thread;
    .end local v3    # "resume":I
    :cond_9
    :goto_2
    return-void
.end method
