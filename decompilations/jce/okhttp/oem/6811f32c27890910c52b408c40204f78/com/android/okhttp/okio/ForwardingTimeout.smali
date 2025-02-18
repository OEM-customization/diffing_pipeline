.class public Lcom/android/okhttp/okio/ForwardingTimeout;
.super Lcom/android/okhttp/okio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lcom/android/okhttp/okio/Timeout;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Timeout;)V
    .registers 4
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/okhttp/okio/Timeout;-><init>()V

    .line 26
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_e
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    .line 28
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearDeadline()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->clearTimeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 4
    .param p1, "deadlineNanoTime"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lcom/android/okhttp/okio/Timeout;)Lcom/android/okhttp/okio/ForwardingTimeout;
    .registers 4
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Timeout;

    .prologue
    .line 36
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_b
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    .line 38
    return-object p0
.end method

.method public throwIfReached()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingTimeout;->delegate:Lcom/android/okhttp/okio/Timeout;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
