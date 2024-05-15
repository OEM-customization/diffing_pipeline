.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final greylist-max-o CANCELLED:I = 0x3

.field static final greylist-max-o EXECUTED:I = 0x2

.field static final greylist-max-o SCHEDULED:I = 0x1

.field static final greylist-max-o VIRGIN:I


# instance fields
.field final greylist-max-o lock:Ljava/lang/Object;

.field greylist-max-o nextExecutionTime:J

.field greylist period:J

.field greylist-max-o state:I


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TimerTask;->state:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/TimerTask;->period:J

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel()Z
    .registers 4

    .line 117
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget v1, p0, Ljava/util/TimerTask;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    move v1, v2

    .line 119
    .local v1, "result":Z
    const/4 v2, 0x3

    iput v2, p0, Ljava/util/TimerTask;->state:I

    .line 120
    monitor-exit v0

    return v1

    .line 121
    .end local v1    # "result":Z
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public abstract whitelist test-api run()V
.end method

.method public whitelist test-api scheduledExecutionTime()J
    .registers 6

    .line 153
    iget-object v0, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    iget-wide v1, p0, Ljava/util/TimerTask;->period:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_f

    iget-wide v3, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    add-long/2addr v3, v1

    goto :goto_12

    .line 155
    :cond_f
    iget-wide v3, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    sub-long/2addr v3, v1

    :goto_12
    monitor-exit v0

    .line 154
    return-wide v3

    .line 156
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method
