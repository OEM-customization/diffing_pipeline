.class final Ljava/util/concurrent/Executors$RunnableAdapter;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final greylist task:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .line 457
    .local p0, "this":Ljava/util/concurrent/Executors$RunnableAdapter;, "Ljava/util/concurrent/Executors$RunnableAdapter<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    .line 459
    iput-object p2, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    .line 460
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 462
    .local p0, "this":Ljava/util/concurrent/Executors$RunnableAdapter;, "Ljava/util/concurrent/Executors$RunnableAdapter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 463
    iget-object v0, p0, Ljava/util/concurrent/Executors$RunnableAdapter;->result:Ljava/lang/Object;

    return-object v0
.end method