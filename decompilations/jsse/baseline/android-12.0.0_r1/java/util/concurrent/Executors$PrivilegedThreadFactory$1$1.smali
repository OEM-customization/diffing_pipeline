.class Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;)V
    .registers 2
    .param p1, "this$1"    # Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    .line 607
    iput-object p1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 607
    invoke-virtual {p0}, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 3

    .line 609
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    iget-object v1, v1, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->this$0:Ljava/util/concurrent/Executors$PrivilegedThreadFactory;

    iget-object v1, v1, Ljava/util/concurrent/Executors$PrivilegedThreadFactory;->ccl:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 610
    iget-object v0, p0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1$1;->this$1:Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;

    iget-object v0, v0, Ljava/util/concurrent/Executors$PrivilegedThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 611
    const/4 v0, 0x0

    return-object v0
.end method
