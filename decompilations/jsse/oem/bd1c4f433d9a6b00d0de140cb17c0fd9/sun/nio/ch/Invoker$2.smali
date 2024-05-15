.class final Lsun/nio/ch/Invoker$2;
.super Ljava/lang/Object;
.source "Invoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachment:Ljava/lang/Object;

.field final synthetic val$exc:Ljava/lang/Throwable;

.field final synthetic val$handler:Ljava/nio/channels/CompletionHandler;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/ch/Invoker$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iput-object p2, p0, Lsun/nio/ch/Invoker$2;->val$attachment:Ljava/lang/Object;

    iput-object p3, p0, Lsun/nio/ch/Invoker$2;->val$result:Ljava/lang/Object;

    iput-object p4, p0, Lsun/nio/ch/Invoker$2;->val$exc:Ljava/lang/Throwable;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 216
    invoke-static {}, Lsun/nio/ch/Invoker;->-get0()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    .line 217
    .local v0, "thisGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v0, :cond_10

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->setInvokeCount(I)V

    .line 219
    :cond_10
    iget-object v1, p0, Lsun/nio/ch/Invoker$2;->val$handler:Ljava/nio/channels/CompletionHandler;

    iget-object v2, p0, Lsun/nio/ch/Invoker$2;->val$attachment:Ljava/lang/Object;

    iget-object v3, p0, Lsun/nio/ch/Invoker$2;->val$result:Ljava/lang/Object;

    iget-object v4, p0, Lsun/nio/ch/Invoker$2;->val$exc:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3, v4}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 220
    return-void
.end method
