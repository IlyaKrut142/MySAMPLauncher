.class Lcom/santrope/launcher/ViewDialogConfirm$3;
.super Ljava/lang/Object;
.source "ViewDialogConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/santrope/launcher/ViewDialogConfirm;->showDialog(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/santrope/launcher/ViewDialogConfirm;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:I

.field final synthetic val$urlGameSettings:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/santrope/launcher/ViewDialogConfirm;ILandroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/santrope/launcher/ViewDialogConfirm;

    .line 128
    iput-object p1, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->this$0:Lcom/santrope/launcher/ViewDialogConfirm;

    iput p2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$type:I

    iput-object p3, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$urlGameSettings:Ljava/lang/String;

    iput-object p5, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->this$0:Lcom/santrope/launcher/ViewDialogConfirm;

    iget-object v3, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/santrope/launcher/ViewDialogConfirm;->access$000(Lcom/santrope/launcher/ViewDialogConfirm;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$urlGameSettings:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/santrope/launcher/ViewDialogConfirm$3$1;

    invoke-direct {v1, p0}, Lcom/santrope/launcher/ViewDialogConfirm$3$1;-><init>(Lcom/santrope/launcher/ViewDialogConfirm$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .local v0, "downloadData":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    .end local v0    # "downloadData":Ljava/lang/Thread;
    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u0441\u0441\u044b\u043b\u043a\u0443 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u041d\u0435\u0442 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u044f \u0441 \u0441\u0435\u0440\u0432\u0435\u0440\u043e\u043c..\n\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u0435 \u043f\u043e\u043f\u044b\u0442\u043a\u0443 \u043f\u043e\u0437\u0436\u0435"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 171
    :cond_2
    const-string v3, "reinstall"

    const-string v4, "santrope-settings"

    if-ne v0, v2, :cond_3

    .line 172
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v1, "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 177
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 178
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "launchIntent":Landroid/content/Intent;
    goto :goto_1

    .line 179
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 180
    iget-object v0, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .restart local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/santrope/launcher/SplashScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 185
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 186
    iget-object v2, p0, Lcom/santrope/launcher/ViewDialogConfirm$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 179
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_4
    :goto_1
    nop

    .line 188
    :goto_2
    return-void
.end method
