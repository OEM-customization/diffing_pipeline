.class public abstract Lcom/android/okhttp/internal/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final blacklist name:Ljava/lang/String;


# direct methods
.method public varargs constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/NamedRunnable;->name:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract blacklist execute()V
.end method

.method public final whitelist core-platform-api test-api run()V
    .registers 4

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "oldName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/NamedRunnable;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    :try_start_11
    invoke-virtual {p0}, Lcom/android/okhttp/internal/NamedRunnable;->execute()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1d

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    return-void

    .line 37
    :catchall_1d
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    throw v1
.end method
