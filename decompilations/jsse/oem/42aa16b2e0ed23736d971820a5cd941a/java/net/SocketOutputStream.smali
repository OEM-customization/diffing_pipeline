.class Ljava/net/SocketOutputStream;
.super Ljava/io/FileOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private blacklist closing:Z

.field private blacklist impl:Ljava/net/AbstractPlainSocketImpl;

.field private blacklist socket:Ljava/net/Socket;

.field private blacklist temp:[B


# direct methods
.method constructor blacklist <init>(Ljava/net/AbstractPlainSocketImpl;)V
    .registers 4
    .param p1, "impl"    # Ljava/net/AbstractPlainSocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/net/SocketOutputStream;->temp:[B

    .line 53
    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 63
    iput-object p1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 64
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 65
    return-void
.end method

.method private blacklist socketWrite([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    if-lez p3, :cond_4c

    if-ltz p2, :cond_4c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_9

    goto :goto_4c

    .line 113
    :cond_9
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 116
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_f
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 117
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite0(Ljava/io/FileDescriptor;[BII)V
    :try_end_19
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_19} :catch_22
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    .line 129
    iget-object v1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 130
    nop

    .line 131
    return-void

    .line 129
    :catchall_20
    move-exception v1

    goto :goto_46

    .line 118
    :catch_22
    move-exception v1

    .line 119
    .local v1, "se":Ljava/net/SocketException;
    :try_start_23
    instance-of v2, v1, Lsun/net/ConnectionResetException;

    if-eqz v2, :cond_34

    .line 120
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    .line 121
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Connection reset"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 123
    :cond_34
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 124
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 126
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_44
    nop

    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "this":Ljava/net/SocketOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_20

    .line 129
    .end local v1    # "se":Ljava/net/SocketException;
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "this":Ljava/net/SocketOutputStream;
    .restart local p1    # "b":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :goto_46
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 130
    throw v1

    .line 106
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_4c
    :goto_4c
    if-nez p3, :cond_4f

    .line 107
    return-void

    .line 109
    :cond_4f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len == "

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
.end method

.method private native blacklist socketWrite0(Ljava/io/FileDescriptor;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 171
    return-void

    .line 172
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 173
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_18

    .line 174
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 175
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_1d

    .line 177
    :cond_18
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 178
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 179
    return-void
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 1

    .line 184
    return-void
.end method

.method public final whitelist core-platform-api test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 140
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 141
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

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 150
    return-void
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 162
    return-void
.end method
