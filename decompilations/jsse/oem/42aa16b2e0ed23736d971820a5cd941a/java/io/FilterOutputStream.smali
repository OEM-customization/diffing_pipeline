.class public Ljava/io/FilterOutputStream;
.super Ljava/io/OutputStream;
.source "FilterOutputStream.java"


# instance fields
.field private blacklist closed:Z

.field protected whitelist core-platform-api test-api out:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 66
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 68
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-boolean v0, p0, Ljava/io/FilterOutputStream;->closed:Z

    if-eqz v0, :cond_5

    .line 173
    return-void

    .line 175
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/FilterOutputStream;->closed:Z

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "flushException":Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_32

    .line 184
    if-nez v0, :cond_14

    .line 185
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1a

    .line 188
    :cond_14
    :try_start_14
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1b

    .line 202
    nop

    .line 205
    :goto_1a
    return-void

    .line 189
    :catchall_1b
    move-exception v1

    .line 191
    .local v1, "closeException":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_2c

    instance-of v2, v1, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_25

    goto :goto_2c

    .line 193
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    move-object v2, v0

    check-cast v2, Ljava/lang/ThreadDeath;

    throw v2

    .line 197
    :cond_2c
    :goto_2c
    if-eq v0, v1, :cond_31

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 201
    :cond_31
    throw v1

    .line 180
    .end local v1    # "closeException":Ljava/lang/Throwable;
    :catchall_32
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Throwable;
    move-object v0, v1

    .line 182
    nop

    .end local v0    # "flushException":Ljava/lang/Throwable;
    .end local p0    # "this":Ljava/io/FilterOutputStream;
    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 184
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "flushException":Ljava/lang/Throwable;
    .restart local p0    # "this":Ljava/io/FilterOutputStream;
    :catchall_36
    move-exception v1

    .line 188
    :try_start_37
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3e

    .line 202
    nop

    .line 204
    throw v1

    .line 189
    :catchall_3e
    move-exception v1

    .line 191
    .local v1, "closeException":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_4f

    instance-of v2, v1, Ljava/lang/ThreadDeath;

    if-eqz v2, :cond_48

    goto :goto_4f

    .line 193
    :cond_48
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 194
    move-object v2, v0

    check-cast v2, Ljava/lang/ThreadDeath;

    throw v2

    .line 197
    :cond_4f
    :goto_4f
    if-eq v0, v1, :cond_54

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 201
    :cond_54
    throw v1
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 147
    return-void
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    return-void
.end method

.method public whitelist core-platform-api test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 104
    return-void
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p3, p2

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int v1, p2, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1a

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, p3, :cond_19

    .line 131
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 133
    .end local v0    # "i":I
    :cond_19
    return-void

    .line 128
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
