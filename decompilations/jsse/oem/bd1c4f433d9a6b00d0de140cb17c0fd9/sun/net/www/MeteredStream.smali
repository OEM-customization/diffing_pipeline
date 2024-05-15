.class public Lsun/net/www/MeteredStream;
.super Ljava/io/FilterInputStream;
.source "MeteredStream.java"


# instance fields
.field protected closed:Z

.field protected count:J

.field protected expected:J

.field protected markLimit:I

.field protected markedCount:J

.field protected pi:Lsun/net/ProgressSource;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V
    .registers 10
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "expected"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 42
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    .line 43
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 51
    iput-object p2, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    .line 52
    iput-wide p3, p0, Lsun/net/www/MeteredStream;->expected:J

    .line 54
    if-eqz p2, :cond_18

    .line 55
    invoke-virtual {p2, v2, v3, p3, p4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 57
    :cond_18
    return-void
.end method

.method private isMarked()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 102
    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    if-gez v0, :cond_6

    .line 103
    return v4

    .line 107
    :cond_6
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    .line 108
    return v4

    .line 112
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private final justRead(J)V
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 66
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 67
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 69
    :cond_f
    return-void

    .line 72
    :cond_10
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 77
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 81
    :cond_24
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_31

    .line 82
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 84
    :cond_31
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 85
    return-void

    .line 90
    :cond_38
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    .line 91
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4b

    .line 92
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 95
    :cond_4b
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 172
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_5

    .line 162
    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_e

    .line 165
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    .line 167
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 168
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 169
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 211
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    .line 216
    :cond_c
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    .line 218
    return-void

    .line 214
    :catchall_10
    move-exception v0

    .line 216
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    .line 214
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readLimit"    # I

    .prologue
    monitor-enter p0

    .line 176
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 177
    return-void

    .line 179
    :cond_7
    :try_start_7
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 184
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 185
    iput p1, p0, Lsun/net/www/MeteredStream;->markLimit:I
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 186
    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_6

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 116
    :try_start_2
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1c

    if-eqz v1, :cond_8

    monitor-exit p0

    .line 117
    return v2

    .line 119
    :cond_8
    :try_start_8
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 120
    .local v0, "c":I
    if-eq v0, v2, :cond_17

    .line 121
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1c

    :goto_15
    monitor-exit p0

    .line 125
    return v0

    .line 123
    :cond_17
    int-to-long v2, v0

    :try_start_18
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_15

    .end local v0    # "c":I
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 130
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v1, :cond_8

    .line 131
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 133
    :cond_8
    :try_start_8
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 134
    .local v0, "n":I
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    monitor-exit p0

    .line 135
    return v0

    .end local v0    # "n":I
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 189
    :try_start_1
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_7

    monitor-exit p0

    .line 190
    return-void

    .line 193
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_19

    .line 194
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Resetting to an invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_19
    :try_start_19
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 198
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    monitor-exit p0

    .line 199
    return-void
.end method

.method public declared-synchronized skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v2, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v2, :cond_9

    .line 142
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    .line 153
    :cond_9
    :try_start_9
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_23

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long v0, v2, v4

    .line 154
    .local v0, "min":J
    :goto_18
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 156
    invoke-direct {p0, p1, p2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_25

    monitor-exit p0

    .line 157
    return-wide p1

    .line 153
    .end local v0    # "min":J
    :cond_23
    move-wide v0, p1

    .restart local v0    # "min":J
    goto :goto_18

    .end local v0    # "min":J
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method
