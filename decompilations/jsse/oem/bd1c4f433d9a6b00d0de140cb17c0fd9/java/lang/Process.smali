.class public abstract Ljava/lang/Process;
.super Ljava/lang/Object;
.source "Process.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public destroyForcibly()Ljava/lang/Process;
    .registers 1

    .prologue
    .line 245
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 246
    return-object p0
.end method

.method public abstract exitValue()I
.end method

.method public abstract getErrorStream()Ljava/io/InputStream;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public isAlive()Z
    .registers 3

    .prologue
    .line 259
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_3} :catch_5

    .line 260
    const/4 v1, 0x0

    return v1

    .line 261
    :catch_5
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const/4 v1, 0x1

    return v1
.end method

.method public abstract waitFor()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public waitFor(JLjava/util/concurrent/TimeUnit;)Z
    .registers 21
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v14, 0x0

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 190
    .local v8, "startTime":J
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 194
    .local v6, "rem":J
    :cond_e
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Process;->exitValue()I
    :try_end_11
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_e .. :try_end_11} :catch_13

    .line 195
    const/4 v5, 0x1

    return v5

    .line 196
    :catch_13
    move-exception v4

    .line 197
    .local v4, "ex":Ljava/lang/IllegalThreadStateException;
    cmp-long v5, v6, v14

    if-lez v5, :cond_2a

    .line 199
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x64

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 198
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 201
    :cond_2a
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    sub-long v6, v10, v12

    .line 202
    cmp-long v5, v6, v14

    if-gtz v5, :cond_e

    .line 203
    const/4 v5, 0x0

    return v5
.end method
