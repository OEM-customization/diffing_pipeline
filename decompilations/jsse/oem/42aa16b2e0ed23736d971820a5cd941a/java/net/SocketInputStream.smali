.class Ljava/net/SocketInputStream;
.super Ljava/io/FileInputStream;
.source "SocketInputStream.java"


# instance fields
.field private blacklist closing:Z

.field private blacklist eof:Z

.field private blacklist impl:Ljava/net/AbstractPlainSocketImpl;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist temp:[B


# direct methods
.method constructor blacklist <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .registers 3
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 55
    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 65
    iput-object p1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 66
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 67
    return-void
.end method

.method private blacklist socketRead(Ljava/io/FileDescriptor;[BIII)I
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct/range {p0 .. p5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method private native blacklist socketRead0(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_6

    .line 267
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 280
    return-void

    .line 281
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 282
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_18

    .line 283
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 284
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_1d

    .line 286
    :cond_18
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 287
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 288
    return-void
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 1

    .line 297
    return-void
.end method

.method public final whitelist core-platform-api test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 226
    return v1

    .line 228
    :cond_6
    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, p0, Ljava/net/SocketInputStream;->temp:[B

    .line 229
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    .line 230
    .local v0, "n":I
    if-gtz v0, :cond_13

    .line 231
    return v1

    .line 233
    :cond_13
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public whitelist core-platform-api test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->getTimeout()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/net/SocketInputStream;->read([BIII)I

    move-result v0

    return v0
.end method

.method blacklist read([BIII)I
    .registers 15
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 152
    return v1

    .line 156
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    const-string v2, "Connection reset"

    if-nez v0, :cond_dd

    .line 161
    if-lez p3, :cond_b1

    if-ltz p2, :cond_b1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1a

    goto/16 :goto_b1

    .line 169
    :cond_1a
    const/4 v0, 0x0

    .line 172
    .local v0, "gotReset":Z
    iget-object v3, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v3}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 175
    .local v3, "fd":Ljava/io/FileDescriptor;
    :try_start_21
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 176
    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Ljava/net/SocketInputStream;->socketRead(Ljava/io/FileDescriptor;[BIII)I

    move-result v4
    :try_end_32
    .catch Lsun/net/ConnectionResetException; {:try_start_21 .. :try_end_32} :catch_48
    .catchall {:try_start_21 .. :try_end_32} :catchall_41

    .line 177
    .local v4, "n":I
    if-lez v4, :cond_3b

    .line 178
    nop

    .line 183
    iget-object v1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 178
    return v4

    .line 183
    :cond_3b
    iget-object v5, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v5}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 184
    goto :goto_50

    .line 183
    .end local v4    # "n":I
    :catchall_41
    move-exception v1

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 184
    throw v1

    .line 180
    :catch_48
    move-exception v4

    .line 181
    .local v4, "rstExc":Lsun/net/ConnectionResetException;
    const/4 v0, 0x1

    .line 183
    .end local v4    # "rstExc":Lsun/net/ConnectionResetException;
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 184
    nop

    .line 190
    :goto_50
    if-eqz v0, :cond_82

    .line 191
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    .line 192
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    .line 194
    move-object v4, p0

    move-object v5, v3

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    :try_start_62
    invoke-direct/range {v4 .. v9}, Ljava/net/SocketInputStream;->socketRead(Ljava/io/FileDescriptor;[BIII)I

    move-result v4
    :try_end_66
    .catch Lsun/net/ConnectionResetException; {:try_start_62 .. :try_end_66} :catch_7c
    .catchall {:try_start_62 .. :try_end_66} :catchall_75

    .line 195
    .local v4, "n":I
    if-lez v4, :cond_6f

    .line 196
    nop

    .line 200
    iget-object v1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 196
    return v4

    .line 200
    :cond_6f
    iget-object v5, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v5}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 201
    goto :goto_82

    .line 200
    .end local v4    # "n":I
    :catchall_75
    move-exception v1

    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 201
    throw v1

    .line 198
    :catch_7c
    move-exception v4

    .line 200
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 208
    :cond_82
    :goto_82
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v4

    if-nez v4, :cond_a9

    .line 211
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 212
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V

    .line 214
    :cond_97
    iget-object v4, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v4}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v4

    if-nez v4, :cond_a3

    .line 217
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/SocketInputStream;->eof:Z

    .line 218
    return v1

    .line 215
    :cond_a3
    new-instance v1, Ljava/net/SocketException;

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_a9
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    .end local v0    # "gotReset":Z
    .end local v3    # "fd":Ljava/io/FileDescriptor;
    :cond_b1
    :goto_b1
    if-nez p3, :cond_b5

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_b5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " off == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " buffer length == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_dd
    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setEOF(Z)V
    .registers 2
    .param p1, "eof"    # Z

    .line 291
    iput-boolean p1, p0, Ljava/net/SocketInputStream;->eof:Z

    .line 292
    return-void
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 12
    .param p1, "numbytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 244
    return-wide v0

    .line 246
    :cond_7
    move-wide v2, p1

    .line 247
    .local v2, "n":J
    const-wide/16 v4, 0x400

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 248
    .local v4, "buflen":I
    new-array v5, v4, [B

    .line 249
    .local v5, "data":[B
    :goto_11
    cmp-long v6, v2, v0

    if-lez v6, :cond_26

    .line 250
    const/4 v6, 0x0

    int-to-long v7, v4

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v6

    .line 251
    .local v6, "r":I
    if-gez v6, :cond_23

    .line 252
    goto :goto_26

    .line 254
    :cond_23
    int-to-long v7, v6

    sub-long/2addr v2, v7

    .line 255
    .end local v6    # "r":I
    goto :goto_11

    .line 256
    :cond_26
    :goto_26
    sub-long v0, p1, v2

    return-wide v0
.end method
