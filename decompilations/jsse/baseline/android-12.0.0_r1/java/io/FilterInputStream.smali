.class public Ljava/io/FilterInputStream;
.super Ljava/io/InputStream;
.source "FilterInputStream.java"


# instance fields
.field protected volatile whitelist test-api in:Ljava/io/InputStream;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    iput-object p1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 182
    return-void
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 202
    monitor-exit p0

    return-void

    .line 200
    .end local p0    # "this":Ljava/io/FilterInputStream;
    .end local p1    # "readlimit":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 243
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 227
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Ljava/io/FilterInputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
