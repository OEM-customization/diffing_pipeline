.class public Lcom/android/okhttp/okio/ForwardingTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private blacklist delegate:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/okio/Timeout;)V
    .registers 4
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    .line 27
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    .line 28
    if-eqz p1, :cond_8

    .line 29
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    .line 30
    return-void

    .line 28
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deadlineNanoTime()J
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 4
    .param p1, "deadlineNanoTime"    # J

    .line 60
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist delegate()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public blacklist hasDeadline()Z
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final blacklist setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;
    .registers 4
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    .line 38
    if-eqz p1, :cond_5

    .line 39
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    .line 40
    return-object p0

    .line 38
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist throwIfReached()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 73
    return-void
.end method

.method public blacklist timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 44
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist timeoutNanos()J
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
