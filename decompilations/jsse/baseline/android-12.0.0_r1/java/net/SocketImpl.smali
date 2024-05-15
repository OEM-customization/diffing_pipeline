.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected whitelist test-api address:Ljava/net/InetAddress;

.field protected whitelist test-api fd:Ljava/io/FileDescriptor;

.field protected whitelist test-api localport:I

.field protected whitelist test-api port:I

.field greylist serverSocket:Ljava/net/ServerSocket;

.field greylist socket:Ljava/net/Socket;


# direct methods
.method public constructor whitelist test-api <init>()V
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
.method protected abstract whitelist test-api accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public greylist-max-o test-api getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .line 239
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist test-api getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 227
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected whitelist test-api getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .line 249
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract whitelist test-api getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api getLocalPort()I
    .registers 2

    .line 292
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

    .line 393
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 394
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 395
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 396
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 397
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_21

    .line 398
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 399
    :cond_21
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2b

    .line 400
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 401
    :cond_2b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_36

    .line 402
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 403
    :cond_36
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_40

    .line 404
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 405
    :cond_40
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4a

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 408
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract whitelist test-api getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist test-api getPort()I
    .registers 2

    .line 259
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method greylist-max-o getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .line 308
    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method greylist-max-o getSocket()Ljava/net/Socket;
    .registers 2

    .line 300
    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract whitelist test-api listen(I)V
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

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/SocketImpl;->port:I

    .line 324
    iput v0, p0, Ljava/net/SocketImpl;->localport:I

    .line 325
    return-void
.end method

.method protected abstract whitelist test-api sendUrgentData(I)V
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

    .line 373
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_a

    .line 374
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 375
    :cond_a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_14

    .line 376
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 377
    :cond_14
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1e

    .line 378
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 379
    :cond_1e
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_27

    .line 380
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 381
    :cond_27
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_31

    .line 382
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 383
    :cond_31
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3a

    .line 384
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_42

    .line 385
    :cond_3a
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_43

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 390
    :goto_42
    return-void

    .line 388
    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 370
    return-void
.end method

.method greylist-max-o setServerSocket(Ljava/net/ServerSocket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/ServerSocket;

    .line 304
    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 305
    return-void
.end method

.method greylist-max-o setSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/Socket;

    .line 296
    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 297
    return-void
.end method

.method protected whitelist test-api shutdownInput()V
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

.method protected whitelist test-api shutdownOutput()V
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

.method protected whitelist test-api supportsUrgentData()Z
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
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

    .line 317
    return-object v0
.end method
