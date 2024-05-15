.class public abstract Ljava/net/SocketImpl;
.super Ljava/lang/Object;
.source "SocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected address:Ljava/net/InetAddress;

.field protected fd:Ljava/io/FileDescriptor;

.field protected localport:I

.field protected port:I

.field serverSocket:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 50
    iput-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract accept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract bind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract connect(Ljava/net/SocketAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract create(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFD$()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getLocalPort()I
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Ljava/net/SocketImpl;->localport:I

    return v0
.end method

.method getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_b

    .line 388
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 389
    :cond_b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_16

    .line 390
    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 391
    :cond_16
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_21

    .line 392
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 393
    :cond_21
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2b

    .line 394
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 395
    :cond_2b
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_36

    .line 396
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 397
    :cond_36
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_40

    .line 398
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 399
    :cond_40
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4a

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 402
    :cond_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getPort()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Ljava/net/SocketImpl;->port:I

    return v0
.end method

.method getServerSocket()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected abstract listen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/SocketImpl;->address:Ljava/net/InetAddress;

    .line 317
    iput v1, p0, Ljava/net/SocketImpl;->port:I

    .line 318
    iput v1, p0, Ljava/net/SocketImpl;->localport:I

    .line 319
    return-void
.end method

.method protected abstract sendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_a

    .line 368
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 384
    :goto_9
    return-void

    .line 369
    :cond_a
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_14

    .line 370
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 371
    :cond_14
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1e

    .line 372
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 373
    :cond_1e
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_27

    .line 374
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 375
    :cond_27
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_31

    .line 376
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 377
    :cond_31
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3a

    .line 378
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 379
    :cond_3a
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_43

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_9

    .line 382
    :cond_43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setPerformancePreferences(III)V
    .registers 4
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 364
    return-void
.end method

.method setServerSocket(Ljava/net/ServerSocket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/ServerSocket;

    .prologue
    .line 298
    iput-object p1, p0, Ljava/net/SocketImpl;->serverSocket:Ljava/net/ServerSocket;

    .line 299
    return-void
.end method

.method setSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "soc"    # Ljava/net/Socket;

    .prologue
    .line 290
    iput-object p1, p0, Ljava/net/SocketImpl;->socket:Ljava/net/Socket;

    .line 291
    return-void
.end method

.method protected shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Method not implemented!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected supportsUrgentData()Z
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, ",port="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getPort()I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, ",localport="

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v1

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    const-string/jumbo v1, "]"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
