.class public Lcom/androguide/pimp/my/rom/ModsAlbum;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ModsAlbum.java"


# instance fields
.field Download:Landroid/widget/Button;

.field private DownloadListener:Landroid/view/View$OnClickListener;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->Download:Landroid/widget/Button;

    .line 137
    new-instance v0, Lcom/androguide/pimp/my/rom/ModsAlbum$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ModsAlbum$1;-><init>(Lcom/androguide/pimp/my/rom/ModsAlbum;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->DownloadListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 152
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsAlbum;->setHasOptionsMenu(Z)V

    .line 42
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 43
    const v0, 0x7f030027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->ll:Landroid/widget/RelativeLayout;

    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->Download:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->Download:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->DownloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->ll:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 160
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 162
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ModsAlbum;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x7f0401f9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateData()V
    .locals 4

    .prologue
    .line 58
    const v2, 0x7f090154

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAlbum;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ModsAlbum;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 62
    const v2, 0x7f090153

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAlbum;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    const v2, 0x7f09013d

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 65
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 71
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ModsAlbum$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ModsAlbum$2;-><init>(Lcom/androguide/pimp/my/rom/ModsAlbum;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 134
    return-void
.end method