.class Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;
.super Ljava/util/TimerTask;
.source "ToolsBootanim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsBootanim$8;

.field private final synthetic val$toast2:Landroid/widget/Toast;

.field private final synthetic val$u:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$8;Landroid/widget/Toast;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;->this$1:Lcom/androguide/pimp/my/rom/ToolsBootanim$8;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;->val$toast2:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;->val$u:Ljava/util/Timer;

    .line 935
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;->val$toast2:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 938
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;->val$u:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 939
    return-void
.end method