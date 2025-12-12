.class Lcom/santrope/launcher/ViewDialogNews;
.super Ljava/lang/Object;
.source "ViewDialogNews.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method showDialog(Landroid/app/Activity;Lcom/santrope/launcher/News;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "news"    # Lcom/santrope/launcher/News;

    .line 13
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 16
    const v1, 0x7f0c002e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 18
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 19
    .local v1, "dateNews":Landroid/widget/TextView;
    iget-object v2, p2, Lcom/santrope/launcher/News;->mDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    const v2, 0x7f090047

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "nameNews":Landroid/widget/TextView;
    iget-object v3, p2, Lcom/santrope/launcher/News;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    const v3, 0x7f090048

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 25
    .local v3, "textNews":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/santrope/launcher/News;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 28
    const v4, 0x7f090031

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 29
    .local v4, "cancelButton":Landroid/widget/Button;
    new-instance v5, Lcom/santrope/launcher/ViewDialogNews$1;

    invoke-direct {v5, p0, v0}, Lcom/santrope/launcher/ViewDialogNews$1;-><init>(Lcom/santrope/launcher/ViewDialogNews;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 37
    return-void
.end method
