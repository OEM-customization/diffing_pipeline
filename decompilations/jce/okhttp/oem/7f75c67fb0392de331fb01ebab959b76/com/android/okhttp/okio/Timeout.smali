.class public Lcom/android/okhttp/okio/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final greylist-max-o NONE:Lcom/android/okhttp/okio/Timeout;


# instance fields
.field private greylist-max-o deadlineNanoTime:J

.field private greylist-max-o hasDeadline:Z

.field private greylist-max-o timeoutNanos:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/okhttp/okio/Timeout$1;

    invoke-direct {v0}, Lcom/android/okhttp/okio/Timeout$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/okio/Timeout;->NONE:Lcom/android/okhttp/okio/Timeout;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public greylist-max-o clearDeadline()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    .line 137
    return-object p0
.end method

.method public greylist-max-o clearTimeout()Lcom/android/okhttp/okio/Timeout;
    .registers 3

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    .line 131
    return-object p0
.end method

.method public final greylist-max-o deadline(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 8
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 123
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    .line 124
    if-eqz p3, :cond_16

    .line 125
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0

    .line 124
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o deadlineNanoTime()J
    .registers 3

    .line 106
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_7

    .line 107
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    return-wide v0

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o deadlineNanoTime(J)Lcom/android/okhttp/okio/Timeout;
    .registers 4
    .param p1, "deadlineNanoTime"    # J

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    .line 117
    iput-wide p1, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    .line 118
    return-object p0
.end method

.method public greylist-max-o hasDeadline()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    return v0
.end method

.method public greylist-max-o throwIfReached()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    .line 150
    iget-boolean v0, p0, Lcom/android/okhttp/okio/Timeout;->hasDeadline:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    goto :goto_20

    .line 151
    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_20
    :goto_20
    return-void

    .line 147
    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_17

    .line 84
    if-eqz p3, :cond_f

    .line 85
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    .line 86
    return-object p0

    .line 84
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o timeoutNanos()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/okhttp/okio/Timeout;->timeoutNanos:J

    return-wide v0
.end method
