.class Lcom/androguide/pimp/my/rom/Extras$1;
.super Ljava/lang/Object;
.source "Extras.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/Extras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/Extras;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/Extras;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Extras$1;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras$1;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #calls: Lcom/androguide/pimp/my/rom/Extras;->showWhatsNewDialog()V
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/Extras;->access$0(Lcom/androguide/pimp/my/rom/Extras;)V

    .line 353
    return-void
.end method