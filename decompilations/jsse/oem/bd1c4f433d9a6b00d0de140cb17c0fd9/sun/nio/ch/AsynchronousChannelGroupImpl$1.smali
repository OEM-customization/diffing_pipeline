.class Lsun/nio/ch/AsynchronousChannelGroupImpl$1;
.super Ljava/lang/Object;
.source "AsynchronousChannelGroupImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/AsynchronousChannelGroupImpl;->bindToGroup(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

.field final synthetic val$task:Ljava/lang/Runnable;

.field final synthetic val$thisGroup:Lsun/nio/ch/AsynchronousChannelGroupImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;->this$0:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    iput-object p2, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;->val$thisGroup:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    iput-object p3, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;->val$task:Ljava/lang/Runnable;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;->val$thisGroup:Lsun/nio/ch/AsynchronousChannelGroupImpl;

    invoke-static {v0}, Lsun/nio/ch/Invoker;->bindToGroup(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    .line 112
    iget-object v0, p0, Lsun/nio/ch/AsynchronousChannelGroupImpl$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 113
    return-void
.end method
