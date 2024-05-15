.class Ljava/net/SocketInputStream;
.super Ljava/io/FileInputStream;
.source "SocketInputStream.java"


# instance fields
.field private closing:Z

.field private eof:Z

.field private impl:Ljava/net/AbstractPlainSocketImpl;

.field private socket:Ljava/net/Socket;

.field private temp:[B


# direct methods
.method constructor <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 48
    iput-object v1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 50
    iput-object v1, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 60
    iput-object p1, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 61
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    .line 62
    return-void
.end method

.method private socketRead(Ljava/io/FileDescriptor;[BIII)I
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

    .prologue
    .line 114
    invoke-direct/range {p0 .. p5}, Ljava/net/SocketInputStream;->socketRead0(Ljava/io/FileDescriptor;[BIII)I

    move-result v0

    return v0
.end method

.method private native socketRead0(Ljava/io/FileDescriptor;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_6

    .line 261
    const/4 v0, 0x0

    return v0

    .line 263
    :cond_6
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 274
    return-void

    .line 275
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 276
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1d

    .line 277
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 278
    iget-object v0, p0, Ljava/net/SocketInputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 281
    :cond_19
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->closing:Z

    .line 282
    return-void

    .line 280
    :cond_1d
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    goto :goto_19
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 291
    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 219
    iget-boolean v1, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v1, :cond_8

    .line 220
    return v3

    .line 222
    :cond_8
    new-array v1, v4, [B

    iput-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    .line 223
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    invoke-virtual {p0, v1, v2, v4}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    .line 224
    .local v0, "n":I
    if-gtz v0, :cond_15

    .line 225
    return v3

    .line 227
    :cond_15
    iget-object v1, p0, Ljava/net/SocketInputStream;->temp:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->getTimeout()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/net/SocketInputStream;->read([BIII)I

    move-result v0

    return v0
.end method

.method read([BIII)I
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

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 146
    iget-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    if-eqz v0, :cond_7

    .line 147
    return v9

    .line 151
    :cond_7
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Connection reset"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_18
    if-lez p3, :cond_1c

    if-gez p2, :cond_1f

    .line 157
    :cond_1c
    if-nez p3, :cond_42

    .line 158
    return v2

    .line 156
    :cond_1f
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1c

    .line 164
    const/4 v6, 0x0

    .line 167
    .local v6, "gotReset":Z
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 169
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_2a
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 170
    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead(Ljava/io/FileDescriptor;[BIII)I
    :try_end_39
    .catch Lsun/net/ConnectionResetException; {:try_start_2a .. :try_end_39} :catch_95
    .catchall {:try_start_2a .. :try_end_39} :catchall_9d

    move-result v7

    .line 171
    .local v7, "n":I
    if-lez v7, :cond_73

    .line 177
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 172
    return v7

    .line 160
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "gotReset":Z
    .end local v7    # "n":I
    :cond_42
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "length == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, " off == "

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    const-string/jumbo v3, " buffer length == "

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    array-length v3, p1

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "gotReset":Z
    .restart local v7    # "n":I
    :cond_73
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 184
    .end local v7    # "n":I
    :goto_78
    if-eqz v6, :cond_a9

    .line 185
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    .line 186
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 188
    :try_start_89
    invoke-direct/range {v0 .. v5}, Ljava/net/SocketInputStream;->socketRead(Ljava/io/FileDescriptor;[BIII)I
    :try_end_8c
    .catch Lsun/net/ConnectionResetException; {:try_start_89 .. :try_end_8c} :catch_ba
    .catchall {:try_start_89 .. :try_end_8c} :catchall_c1

    move-result v7

    .line 189
    .restart local v7    # "n":I
    if-lez v7, :cond_a4

    .line 194
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 190
    return v7

    .line 174
    .end local v7    # "n":I
    :catch_95
    move-exception v8

    .line 175
    .local v8, "rstExc":Lsun/net/ConnectionResetException;
    const/4 v6, 0x1

    .line 177
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    goto :goto_78

    .line 176
    .end local v8    # "rstExc":Lsun/net/ConnectionResetException;
    :catchall_9d
    move-exception v0

    .line 177
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 176
    throw v0

    .line 194
    .restart local v7    # "n":I
    :cond_a4
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 202
    .end local v7    # "n":I
    :cond_a9
    :goto_a9
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 203
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :catch_ba
    move-exception v8

    .line 194
    .restart local v8    # "rstExc":Lsun/net/ConnectionResetException;
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    goto :goto_a9

    .line 193
    .end local v8    # "rstExc":Lsun/net/ConnectionResetException;
    :catchall_c1
    move-exception v0

    .line 194
    iget-object v2, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 193
    throw v0

    .line 205
    :cond_c8
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 206
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V

    .line 208
    :cond_d5
    iget-object v0, p0, Ljava/net/SocketInputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 209
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "Connection reset"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_e6
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketInputStream;->eof:Z

    .line 212
    return v9
.end method

.method setEOF(Z)V
    .registers 2
    .param p1, "eof"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Ljava/net/SocketInputStream;->eof:Z

    .line 286
    return-void
.end method

.method public skip(J)J
    .registers 14
    .param p1, "numbytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 237
    cmp-long v5, p1, v8

    if-gtz v5, :cond_8

    .line 238
    return-wide v8

    .line 240
    :cond_8
    move-wide v2, p1

    .line 241
    .local v2, "n":J
    const-wide/16 v6, 0x400

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .line 242
    .local v0, "buflen":I
    new-array v1, v0, [B

    .line 243
    .local v1, "data":[B
    :goto_12
    cmp-long v5, v2, v8

    if-lez v5, :cond_22

    .line 244
    int-to-long v6, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0, v1, v10, v5}, Ljava/net/SocketInputStream;->read([BII)I

    move-result v4

    .line 245
    .local v4, "r":I
    if-gez v4, :cond_25

    .line 250
    .end local v4    # "r":I
    :cond_22
    sub-long v6, p1, v2

    return-wide v6

    .line 248
    .restart local v4    # "r":I
    :cond_25
    int-to-long v6, v4

    sub-long/2addr v2, v6

    goto :goto_12
.end method
