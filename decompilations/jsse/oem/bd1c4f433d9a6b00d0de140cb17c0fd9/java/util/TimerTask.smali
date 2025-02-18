.class public abstract Ljava/util/TimerTask;
.super Ljava/lang/Object;
.source "TimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CANCELLED:I = 0x3

.field static final EXECUTED:I = 0x2

.field static final SCHEDULED:I = 0x1

.field static final VIRGIN:I


# instance fields
.field final lock:Ljava/lang/Object;

.field nextExecutionTime:J

.field period:J

.field state:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
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
.method public cancel()Z
    .registers 5

    .prologue
    .line 117
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :try_start_3
    iget v1, p0, Ljava/util/TimerTask;->state:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    const/4 v0, 0x1

    .line 119
    .local v0, "result":Z
    :goto_9
    const/4 v1, 0x3

    iput v1, p0, Ljava/util/TimerTask;->state:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    monitor-exit v2

    .line 120
    return v0

    .line 118
    .end local v0    # "result":Z
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_9

    .line 117
    .end local v0    # "result":Z
    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public abstract run()V
.end method

.method public scheduledExecutionTime()J
    .registers 7

    .prologue
    .line 153
    iget-object v2, p0, Ljava/util/TimerTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_3
    iget-wide v0, p0, Ljava/util/TimerTask;->period:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_12

    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_18

    add-long/2addr v0, v4

    :goto_10
    monitor-exit v2

    return-wide v0

    .line 155
    :cond_12
    :try_start_12
    iget-wide v0, p0, Ljava/util/TimerTask;->nextExecutionTime:J

    iget-wide v4, p0, Ljava/util/TimerTask;->period:J
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_18

    sub-long/2addr v0, v4

    goto :goto_10

    .line 153
    :catchall_18
    move-exception v0

    monitor-exit v2

    throw v0
.end method
