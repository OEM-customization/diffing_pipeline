.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected whitelist core-platform-api test-api address:Ljava/net/InetAddress;

.field protected whitelist core-platform-api test-api fd:Ljava/io/FileDescriptor;

.field protected whitelist core-platform-api test-api localport:I

.field protected whitelist core-platform-api test-api port:I

.field greylist serverSocket:Ljava/net/ServerSocket;

.field greylist socket:Ljava/net/Socket;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 50
    iput-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method protected abstract whitelist core-platform-api test-api accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist core-platform-api test-api create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public greylist-max-o core-platform-api getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .line 235
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 227
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist core-platform-api test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 245
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist core-platform-api test-api getLocalPort()I
    .registers 2

    .line 288
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method greylist-max-o getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 390
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 391
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 392
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 393
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_21

    .line 394
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 395
    :cond_21
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2b

    .line 396
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 397
    :cond_2b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_36

    .line 398
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 399
    :cond_36
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_40

    .line 400
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 401
    :cond_40
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4a

    .line 402
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 404
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist core-platform-api test-api getPort()I
    .registers 2

    .line 255
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method greylist-max-o getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 304
    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method greylist-max-o getSocket()Ljava/net/Socket;
    .registers 2

    .line 296
    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract whitelist core-platform-api test-api listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/SocketImpl;->port:I

    .line 320
    iput v0, p0, Ljava/net/SocketImpl;->localport:I

    .line 321
    return-void
.end method

.method protected abstract whitelist core-platform-api test-api sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method greylist-max-o setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_a

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 371
    :cond_a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_14

    .line 372
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 373
    :cond_14
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1e

    .line 374
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 375
    :cond_1e
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_27

    .line 376
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 377
    :cond_27
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_31

    .line 378
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 379
    :cond_31
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3a

    .line 380
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 381
    :cond_3a
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_43

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 386
    :goto_42
    return-void

    .line 384
    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 366
    return-void
.end method

.method greylist-max-o setServerSocket(Ljava/net/ServerSocket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/ServerSocket;

    .line 300
    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 301
    return-void
.end method

.method greylist-max-o setSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/Socket;

    .line 292
    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 293
    return-void
.end method

.method protected whitelist core-platform-api test-api shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api supportsUrgentData()Z
    .registers 2

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",localport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    return-object v0
.end method
