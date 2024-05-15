.class Ljava/net/SocketOutputStream;
.super Ljava/io/FileOutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private closing:Z

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

    .line 57
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 46
    iput-object v1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    .line 48
    iput-object v1, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 58
    iput-object p1, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    .line 59
    invoke-virtual {p1}, Ljava/net/AbstractPlainSocketImpl;->getSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    .line 60
    return-void
.end method

.method private socketWrite([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    if-lez p3, :cond_4

    if-gez p2, :cond_7

    .line 99
    :cond_4
    if-nez p3, :cond_21

    .line 100
    return-void

    .line 98
    :cond_7
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_4

    .line 106
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 108
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_11
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 109
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite0(Ljava/io/FileDescriptor;[BII)V
    :try_end_1b
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_1b} :catch_52
    .catchall {:try_start_11 .. :try_end_1b} :catchall_75

    .line 121
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 123
    return-void

    .line 102
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    :cond_21
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "len == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string/jumbo v4, " off == "

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string/jumbo v4, " buffer length == "

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    array-length v4, p1

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .restart local v0    # "fd":Ljava/io/FileDescriptor;
    :catch_52
    move-exception v1

    .line 111
    .local v1, "se":Ljava/net/SocketException;
    :try_start_53
    instance-of v2, v1, Lsun/net/ConnectionResetException;

    if-eqz v2, :cond_64

    .line 112
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V

    .line 113
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "se":Ljava/net/SocketException;
    const-string/jumbo v2, "Connection reset"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v1    # "se":Ljava/net/SocketException;
    :cond_64
    iget-object v2, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v2}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 116
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_75

    .line 120
    .end local v1    # "se":Ljava/net/SocketException;
    :catchall_75
    move-exception v2

    .line 121
    iget-object v3, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v3}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 120
    throw v2

    .line 118
    .restart local v1    # "se":Ljava/net/SocketException;
    :cond_7c
    :try_start_7c
    throw v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_75
.end method

.method private native socketWrite0(Ljava/io/FileDescriptor;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    if-eqz v0, :cond_5

    .line 163
    return-void

    .line 164
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 165
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1d

    .line 166
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 167
    iget-object v0, p0, Ljava/net/SocketOutputStream;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 170
    :cond_19
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocketOutputStream;->closing:Z

    .line 171
    return-void

    .line 169
    :cond_1d
    iget-object v0, p0, Ljava/net/SocketOutputStream;->impl:Ljava/net/AbstractPlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    goto :goto_19
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 132
    iget-object v0, p0, Ljava/net/SocketOutputStream;->temp:[B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 133
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 142
    return-void
.end method

.method public write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocketOutputStream;->socketWrite([BII)V

    .line 154
    return-void
.end method
