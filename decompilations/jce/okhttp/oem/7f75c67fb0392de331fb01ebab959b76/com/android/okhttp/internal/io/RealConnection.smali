.class public final Lcom/android/okhttp/internal/io/RealConnection;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lcom/android/okhttp/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    }
.end annotation


# static fields
.field private static final blacklist INF_NUMBER:I = 0x2

.field protected static final blacklist SOCK_CONN_TIME_OUT:I = 0x2710

.field private static blacklist lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static blacklist lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field public final blacklist allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/android/okhttp/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist bTagUidSet:Z

.field private blacklist connTimeout:I

.field private blacklist destPorts:[I

.field public volatile blacklist framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist handshake:Lcom/android/okhttp/Handshake;

.field public blacklist idleAtNanos:J

.field public blacklist isSSL:Z

.field private blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;

.field public blacklist mDestIPver:I

.field private blacklist mProxy:[Ljava/net/Proxy;

.field private blacklist mTag:I

.field private blacklist mUid:I

.field private blacklist mainTimeout:I

.field private blacklist multiSockDestAddr:[Ljava/net/InetAddress;

.field private blacklist multiSocket:[Ljava/net/Socket;

.field private blacklist multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

.field public blacklist noNewStreams:Z

.field private blacklist protocol:Lcom/android/okhttp/Protocol;

.field private blacklist rawSocket:Ljava/net/Socket;

.field private final blacklist route:Lcom/android/okhttp/Route;

.field public blacklist sink:Lcom/android/okhttp/okio/BufferedSink;

.field public blacklist socket:Ljava/net/Socket;

.field public blacklist source:Lcom/android/okhttp/okio/BufferedSource;

.field public blacklist ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

.field public blacklist ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

.field public blacklist startExtremSocketCreation:J

.field public blacklist startSampleSocketCreation:J

.field public blacklist startSocketCreation:J

.field public blacklist streamCount:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Route;)V
    .registers 6
    .param p1, "route"    # Lcom/android/okhttp/Route;

    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 115
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/net/InetAddress;

    iput-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    .line 116
    iput v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 121
    new-array v3, v2, [Ljava/net/Socket;

    iput-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    .line 122
    new-array v3, v2, [Ljava/net/Proxy;

    iput-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    .line 123
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    .line 125
    iput-boolean v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->bTagUidSet:Z

    .line 126
    iput v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mTag:I

    .line 127
    iput v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mUid:I

    .line 128
    iput v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    .line 130
    iput-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 132
    iput-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 134
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 1312
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1313
    return-void
.end method

.method private blacklist connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;
    .registers 14
    .param p1, "connectTimeout"    # I
    .param p2, "addresses"    # [Ljava/net/InetAddress;
    .param p3, "destPort"    # I
    .param p4, "sourceAddr"    # Ljava/net/InetAddress;
    .param p5, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "socketCandidate":Ljava/net/Socket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_199

    .line 704
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v3, " with Proxy "

    if-eqz v2, :cond_2b

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http socket try to connect to destination address from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 705
    :cond_2b
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v4, ":"

    const-string v5, " from "

    if-eqz v2, :cond_65

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http socket try to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v1

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 707
    :cond_65
    :try_start_65
    iget-boolean v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->bTagUidSet:Z

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v2, :cond_77

    .line 708
    iget v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->mTag:I

    invoke-static {v2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->setThreadStatsTag(I)V

    .line 709
    iget v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->mUid:I

    invoke-static {v2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->setThreadStatsUid(I)V

    .line 711
    :cond_77
    if-eqz p5, :cond_87

    invoke-virtual {p5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v2, v6, :cond_87

    .line 712
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, p5}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_8c

    .line 713
    :cond_87
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_8c} :catch_132

    :goto_8c
    move-object v0, v2

    .line 714
    if-eqz p4, :cond_c4

    .line 716
    :try_start_8f
    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 717
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    invoke-direct {v2, p4, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 718
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket bind to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_8f .. :try_end_b8} :catchall_b9

    .line 722
    :cond_b8
    :goto_b8
    goto :goto_cf

    .line 720
    :catchall_b9
    move-exception v2

    .line 721
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_ba
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_b8

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_b8

    .line 725
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_c4
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_cf

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "main socket not bind "

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 727
    :cond_cf
    :goto_cf
    if-eqz p5, :cond_e2

    invoke-virtual {p5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v6, :cond_da

    goto :goto_e2

    .line 730
    :cond_da
    invoke-virtual {p5}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_ec

    .line 728
    :cond_e2
    :goto_e2
    new-instance v2, Ljava/net/InetSocketAddress;

    aget-object v6, p2, v1

    invoke-direct {v2, v6, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 732
    :goto_ec
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_fb

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_fb

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "http socket connected to destination socket"

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 733
    :cond_fb
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_131

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_131

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http socket connected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-virtual {v2, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_131} :catch_132

    .line 735
    :cond_131
    goto :goto_199

    .line 736
    :catch_132
    move-exception v2

    .line 737
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_157

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v4, :cond_157

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to connect to destination address from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 738
    :cond_157
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_187

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v4, :cond_187

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v1

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 739
    :cond_187
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_195

    .line 741
    if-eqz v0, :cond_193

    .line 742
    :try_start_18e
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V
    :try_end_191
    .catchall {:try_start_18e .. :try_end_191} :catchall_192

    goto :goto_193

    .line 744
    :catchall_192
    move-exception v3

    :cond_193
    :goto_193
    nop

    .line 745
    throw v2

    .line 703
    .end local v2    # "e":Ljava/io/IOException;
    :cond_195
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 749
    .end local v1    # "i":I
    :cond_199
    :goto_199
    return-object v0
.end method

.method private blacklist connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 10
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1391
    :try_start_5
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_14
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_14} :catch_85

    .line 1394
    nop

    .line 1395
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 1396
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 1398
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1399
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/io/RealConnection;->connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    goto :goto_45

    .line 1401
    :cond_3d
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 1402
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 1405
    :goto_45
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-eq v0, v1, :cond_51

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_84

    .line 1406
    :cond_51
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1408
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1409
    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 1410
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 1411
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    .line 1412
    .local v0, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 1415
    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 1417
    .end local v0    # "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    :cond_84
    return-void

    .line 1392
    :catch_85
    move-exception v0

    .line 1393
    .local v0, "e":Ljava/net/ConnectException;
    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v3}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTls: connectionSpecSelector = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1424
    :cond_1a
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 1425
    iput-boolean v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    .line 1429
    :cond_21
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1430
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 1433
    :cond_2c
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    .line 1434
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 1435
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v3, 0x0

    .line 1436
    .local v3, "success":Z
    const/4 v4, 0x0

    .line 1439
    .local v4, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_38
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 1440
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v7

    .line 1439
    invoke-virtual {v2, v5, v6, v7, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    move-object v4, v1

    .line 1443
    invoke-virtual {p3, v4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v1

    .line 1444
    .local v1, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v1}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1445
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v5

    .line 1446
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v7

    .line 1445
    invoke-virtual {v5, v4, v6, v7}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 1450
    :cond_62
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 1451
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v5

    .line 1454
    .local v5, "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_ed

    .line 1463
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v6

    sget-object v7, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    if-eq v6, v7, :cond_a7

    .line 1464
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/internal/io/RealConnection;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v6

    .line 1465
    .local v6, "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    new-instance v7, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;

    invoke-direct {v7, v6}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;-><init>(Lcom/android/okhttp/internal/tls/TrustRootIndex;)V

    .line 1466
    invoke-virtual {v5}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1467
    .local v7, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 1471
    .end local v6    # "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .end local v7    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_a7
    invoke-virtual {v1}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1472
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b7

    .line 1473
    :cond_b6
    const/4 v6, 0x0

    :goto_b7
    nop

    .line 1474
    .local v6, "maybeProtocol":Ljava/lang/String;
    iput-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 1475
    invoke-static {v4}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 1476
    iget-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 1477
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 1478
    if-eqz v6, :cond_d9

    .line 1479
    invoke-static {v6}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v7

    goto :goto_db

    .line 1480
    :cond_d9
    sget-object v7, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    :goto_db
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;
    :try_end_dd
    .catch Ljava/lang/AssertionError; {:try_start_38 .. :try_end_dd} :catch_13d
    .catchall {:try_start_38 .. :try_end_dd} :catchall_13b

    .line 1481
    const/4 v1, 0x1

    .line 1486
    .end local v3    # "success":Z
    .end local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    .local v1, "success":Z
    if-eqz v4, :cond_e7

    .line 1487
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 1489
    :cond_e7
    if-nez v1, :cond_ec

    .line 1490
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1493
    :cond_ec
    return-void

    .line 1455
    .local v1, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .restart local v3    # "success":Z
    .restart local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :cond_ed
    :try_start_ed
    invoke-virtual {v5}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1456
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Hostname "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not verified:\n    certificate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {v6}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    DN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-static {v6}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "success":Z
    .end local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v7
    :try_end_13b
    .catch Ljava/lang/AssertionError; {:try_start_ed .. :try_end_13b} :catch_13d
    .catchall {:try_start_ed .. :try_end_13b} :catchall_13b

    .line 1486
    .end local v1    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v3    # "success":Z
    .restart local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :catchall_13b
    move-exception v1

    goto :goto_14c

    .line 1482
    :catch_13d
    move-exception v1

    .line 1483
    .local v1, "e":Ljava/lang/AssertionError;
    :try_start_13e
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_14a

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "success":Z
    .end local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v5

    .line 1484
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v3    # "success":Z
    .restart local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :cond_14a
    nop

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "success":Z
    .end local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v1
    :try_end_14c
    .catchall {:try_start_13e .. :try_end_14c} :catchall_13b

    .line 1486
    .end local v1    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v3    # "success":Z
    .restart local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :goto_14c
    if-eqz v4, :cond_155

    .line 1487
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 1489
    :cond_155
    if-nez v3, :cond_15a

    .line 1490
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1492
    :cond_15a
    throw v1
.end method

.method private blacklist createTunnel(II)V
    .registers 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1519
    invoke-direct {p0}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnelRequest()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 1520
    .local v0, "tunnelRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    .line 1521
    .local v1, "url":Lcom/android/okhttp/HttpUrl;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " HTTP/1.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    .local v2, "requestLine":Ljava/lang/String;
    :goto_23
    new-instance v3, Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 1525
    .local v3, "tunnelConnection":Lcom/android/okhttp/internal/http/Http1xStream;
    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v4, :cond_45

    .line 1526
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v4, :cond_38

    .line 1527
    iput p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    goto :goto_51

    .line 1529
    :cond_38
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v4

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    goto :goto_51

    .line 1532
    :cond_45
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v4

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 1535
    :goto_51
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v4

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 1536
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/Http1xStream;->finishRequest()V

    .line 1538
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 1541
    .local v4, "response":Lcom/android/okhttp/Response;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v5

    .line 1542
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_7f

    .line 1543
    const-wide/16 v5, 0x0

    .line 1545
    :cond_7f
    invoke-virtual {v3, v5, v6}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v7

    .line 1546
    .local v7, "body":Lcom/android/okhttp/okio/Source;
    const v8, 0x7fffffff

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v8, v9}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 1547
    invoke-interface {v7}, Lcom/android/okhttp/okio/Source;->close()V

    .line 1549
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_d5

    const/16 v9, 0x197

    if-ne v8, v9, :cond_ba

    .line 1561
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1562
    invoke-virtual {v8}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    .line 1561
    invoke-static {v8, v4, v9}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 1563
    if-eqz v0, :cond_b2

    goto/16 :goto_23

    .line 1564
    :cond_b2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to authenticate with proxy"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1567
    :cond_ba
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected response code for CONNECT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1555
    :cond_d5
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_ee

    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 1558
    return-void

    .line 1556
    :cond_ee
    new-instance v8, Ljava/io/IOException;

    const-string v9, "TLS tunnel buffered too many bytes!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private blacklist createTunnelRequest()Lcom/android/okhttp/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1581
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1582
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1583
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 1584
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 1585
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 1581
    return-object v0
.end method

.method private blacklist extremeConditionConnectInternal(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;
    .registers 52
    .param p1, "netType"    # I
    .param p2, "oriReqHeaders"    # Lcom/android/okhttp/Request;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "fullSize"    # J
    .param p9, "multiSock"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p10, "bUpdateTime"    # Z
    .param p11, "bDonotBindIfNull"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 875
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    const/4 v0, 0x0

    .line 878
    .local v0, "socketCandidate":Ljava/net/Socket;
    invoke-virtual/range {p0 .. p1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 880
    .local v1, "localAddr":Ljava/net/InetAddress;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_3a

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecting socket for Main or Extreme for netType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and get IP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bDonotBindIfNull="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p11

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3a
    move/from16 v15, p11

    .line 881
    :goto_3c
    if-eqz v1, :cond_79c

    .line 884
    if-nez v1, :cond_43

    const-string v2, "[DefaultLocalInf]"

    goto :goto_47

    :cond_43
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :goto_47
    move-object v8, v2

    .line 885
    .local v8, "socketName":Ljava/lang/String;
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aget-object v2, v2, v10

    .line 886
    .local v2, "requestHeaders":Lcom/android/okhttp/Request;
    if-nez v2, :cond_55

    .line 887
    move-object/from16 v2, p2

    move-object/from16 v16, v2

    goto :goto_57

    .line 886
    :cond_55
    move-object/from16 v16, v2

    .line 889
    .end local v2    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v16, "requestHeaders":Lcom/android/okhttp/Request;
    :goto_57
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 890
    .local v7, "host":Ljava/lang/String;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_83

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening Socket for sending 2nd request by socket :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " config :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 892
    :cond_83
    const/4 v2, 0x1

    .line 895
    .local v2, "notOkResponse":Z
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    .line 897
    .local v6, "range":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 900
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v17

    .line 902
    .local v17, "uri":Ljava/net/URI;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 904
    .local v3, "newUrl":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 906
    .local v4, "previousUrl":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v5

    move-object/from16 v18, v0

    .end local v0    # "socketCandidate":Ljava/net/Socket;
    .local v18, "socketCandidate":Ljava/net/Socket;
    const-string v0, "Host"

    invoke-virtual {v5, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "location":Ljava/lang/String;
    const/4 v5, 0x0

    .line 909
    .local v5, "rsp":Lcom/android/okhttp/Response;
    const/16 v19, 0x0

    .line 910
    .local v19, "redirectionCount":I
    move-object/from16 v20, v0

    .end local v0    # "location":Ljava/lang/String;
    .local v20, "location":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    move-object/from16 v21, v1

    .end local v1    # "localAddr":Ljava/net/InetAddress;
    .local v21, "localAddr":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v22, v2

    .end local v2    # "notOkResponse":Z
    .local v22, "notOkResponse":Z
    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v23, v5

    move/from16 v24, v19

    move-object v5, v3

    move-object/from16 v19, v4

    .line 911
    .end local v3    # "newUrl":Ljava/net/URL;
    .end local v4    # "previousUrl":Ljava/net/URL;
    .local v1, "newHeader":Lcom/android/okhttp/Request;
    .local v5, "newUrl":Ljava/net/URL;
    .local v19, "previousUrl":Ljava/net/URL;
    .local v23, "rsp":Lcom/android/okhttp/Response;
    .local v24, "redirectionCount":I
    :goto_d2
    if-eqz v22, :cond_796

    .line 912
    const/4 v2, 0x0

    .line 914
    .local v2, "newUri":Ljava/net/URI;
    :try_start_d5
    invoke-static {v5}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 915
    .local v0, "url":Lcom/android/okhttp/HttpUrl;
    const/16 v25, 0x0

    if-nez v0, :cond_de

    .line 916
    return-object v25

    .line 918
    :cond_de
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v3
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_e2} :catch_775

    move-object/from16 v26, v3

    .line 919
    .end local v2    # "newUri":Ljava/net/URI;
    .local v26, "newUri":Ljava/net/URI;
    :try_start_e4
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e6} :catch_76a

    if-eqz v2, :cond_113

    :try_start_e8
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_113

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecting to destination url with protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_106} :catch_107

    goto :goto_113

    .line 922
    .end local v0    # "url":Lcom/android/okhttp/HttpUrl;
    :catch_107
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v29, v6

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v2, v26

    goto/16 :goto_77d

    .line 920
    .restart local v0    # "url":Lcom/android/okhttp/HttpUrl;
    :cond_113
    :goto_113
    :try_start_113
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_115} :catch_76a

    if-eqz v2, :cond_141

    :try_start_117
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_141

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecting to url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_141} :catch_107

    .line 924
    .end local v0    # "url":Lcom/android/okhttp/HttpUrl;
    :cond_141
    nop

    .line 925
    invoke-virtual {v1}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v0, v3, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    .line 926
    .end local v1    # "newHeader":Lcom/android/okhttp/Request;
    .local v4, "newHeader":Lcom/android/okhttp/Request;
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    .line 927
    .local v3, "h":Lcom/android/okhttp/Headers;
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lcom/android/okhttp/internal/io/RealConnection;->getProxy(ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v2

    .line 928
    .local v2, "curProxy":Ljava/net/Proxy;
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v0, v0, v10

    invoke-direct {v9, v2, v0}, Lcom/android/okhttp/internal/io/RealConnection;->isSameProxy(Ljava/net/Proxy;Ljava/net/Proxy;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v27, v0

    .line 929
    .local v27, "bProxyChanged":Z
    if-eqz v27, :cond_1ae

    .line 930
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a3

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v5

    .end local v5    # "newUrl":Ljava/net/URL;
    .local v29, "newUrl":Ljava/net/URL;
    const-string v5, "proxy updated from "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v5, v5, v10

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for netType "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_1a5

    .end local v29    # "newUrl":Ljava/net/URL;
    .restart local v5    # "newUrl":Ljava/net/URL;
    :cond_1a3
    move-object/from16 v29, v5

    .line 931
    .end local v5    # "newUrl":Ljava/net/URL;
    .restart local v29    # "newUrl":Ljava/net/URL;
    :goto_1a5
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aput-object v2, v0, v10

    .line 932
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v25, v0, v10

    goto :goto_1b0

    .line 929
    .end local v29    # "newUrl":Ljava/net/URL;
    .restart local v5    # "newUrl":Ljava/net/URL;
    :cond_1ae
    move-object/from16 v29, v5

    .line 934
    .end local v5    # "newUrl":Ljava/net/URL;
    .restart local v29    # "newUrl":Ljava/net/URL;
    :goto_1b0
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    invoke-static/range {v26 .. v26}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v1

    aput v1, v0, v10

    .line 935
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/io/RealConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "requestLine":Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestHeadersBytes(Lcom/android/okhttp/Headers;Ljava/lang/String;)[B

    move-result-object v1

    .line 938
    .local v1, "headBytes":[B
    :try_start_1c8
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1df

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_1df

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    :try_end_1d2
    .catchall {:try_start_1c8 .. :try_end_1d2} :catchall_1e2

    move-object/from16 v30, v2

    .end local v2    # "curProxy":Ljava/net/Proxy;
    .local v30, "curProxy":Ljava/net/Proxy;
    :try_start_1d4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1d4 .. :try_end_1dc} :catchall_1dd

    goto :goto_1e5

    .line 940
    :catchall_1dd
    move-exception v0

    goto :goto_1e5

    .line 938
    .end local v30    # "curProxy":Ljava/net/Proxy;
    .restart local v2    # "curProxy":Ljava/net/Proxy;
    :cond_1df
    move-object/from16 v30, v2

    .end local v2    # "curProxy":Ljava/net/Proxy;
    .restart local v30    # "curProxy":Ljava/net/Proxy;
    goto :goto_1e5

    .line 940
    .end local v30    # "curProxy":Ljava/net/Proxy;
    .restart local v2    # "curProxy":Ljava/net/Proxy;
    :catchall_1e2
    move-exception v0

    move-object/from16 v30, v2

    .end local v2    # "curProxy":Ljava/net/Proxy;
    .restart local v30    # "curProxy":Ljava/net/Proxy;
    :goto_1e5
    nop

    .line 942
    :try_start_1e6
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e6 .. :try_end_1e8} :catch_740

    if-eqz v0, :cond_21d

    :try_start_1ea
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_21d

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f5} :catch_20c

    move-object/from16 v31, v1

    .end local v1    # "headBytes":[B
    .local v31, "headBytes":[B
    :try_start_1f7
    const-string v1, "connecting socketName:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oriSSL:     redSSL:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_1f7 .. :try_end_20b} :catch_252

    goto :goto_21f

    .line 1028
    .end local v31    # "headBytes":[B
    .restart local v1    # "headBytes":[B
    :catch_20c
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v34, v29

    move-object/from16 v29, v6

    .end local v1    # "headBytes":[B
    .restart local v31    # "headBytes":[B
    goto/16 :goto_74f

    .line 942
    .end local v31    # "headBytes":[B
    .restart local v1    # "headBytes":[B
    :cond_21d
    move-object/from16 v31, v1

    .line 943
    .end local v1    # "headBytes":[B
    .restart local v31    # "headBytes":[B
    :goto_21f
    :try_start_21f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_221} :catch_732

    if-eqz v0, :cond_261

    :try_start_223
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_261

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connecting socketName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oriSSL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", redSSL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_251} :catch_252

    goto :goto_261

    .line 1028
    :catch_252
    move-exception v0

    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v34, v29

    move-object/from16 v29, v6

    goto/16 :goto_74f

    .line 944
    :cond_261
    :goto_261
    :try_start_261
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v0, v0, v10
    :try_end_265
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_265} :catch_732

    if-eqz v0, :cond_319

    .line 946
    :try_start_267
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v0, v0, v10

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->getIPVersion(Ljava/net/InetAddress;)I

    move-result v0

    invoke-static {v10, v0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterface(II)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_273
    .catch Ljava/io/IOException; {:try_start_267 .. :try_end_273} :catch_308

    move-object v2, v0

    .line 948
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .local v2, "localAddr":Ljava/net/InetAddress;
    if-eqz p10, :cond_27f

    move-object/from16 v21, v2

    .end local v2    # "localAddr":Ljava/net/InetAddress;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    :try_start_278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->startExtremSocketCreation:J
    :try_end_27e
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_27e} :catch_252

    goto :goto_281

    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .restart local v2    # "localAddr":Ljava/net/InetAddress;
    :cond_27f
    move-object/from16 v21, v2

    .line 951
    .end local v2    # "localAddr":Ljava/net/InetAddress;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    :goto_281
    :try_start_281
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v0, v0, v10
    :try_end_285
    .catchall {:try_start_281 .. :try_end_285} :catchall_2a3

    move-object/from16 v2, v21

    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .restart local v2    # "localAddr":Ljava/net/InetAddress;
    :try_start_287
    invoke-direct {v9, v2, v0}, Lcom/android/okhttp/internal/io/RealConnection;->matchIPver(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v0

    if-nez v0, :cond_2a0

    .line 952
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    :try_end_290
    .catchall {:try_start_287 .. :try_end_290} :catchall_2a1

    .line 953
    const/16 v18, 0x0

    .line 954
    const/16 v22, 0x0

    .line 955
    move-object/from16 v21, v2

    move-object v1, v4

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v5, v29

    move-object/from16 v29, v6

    goto/16 :goto_79b

    .line 960
    :cond_2a0
    goto :goto_2c1

    .line 958
    :catchall_2a1
    move-exception v0

    goto :goto_2a6

    .end local v2    # "localAddr":Ljava/net/InetAddress;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    :catchall_2a3
    move-exception v0

    move-object/from16 v2, v21

    .line 959
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .local v0, "exx":Ljava/lang/Throwable;
    .restart local v2    # "localAddr":Ljava/net/InetAddress;
    :goto_2a6
    :try_start_2a6
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_2a8
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2a8} :catch_2f5

    if-eqz v1, :cond_2c1

    :try_start_2aa
    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2aa .. :try_end_2af} :catch_2b0

    goto :goto_2c1

    .line 1028
    .end local v0    # "exx":Ljava/lang/Throwable;
    :catch_2b0
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v34, v29

    move-object/from16 v29, v6

    goto/16 :goto_74f

    .line 961
    :cond_2c1
    :goto_2c1
    :try_start_2c1
    iget v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;
    :try_end_2c6
    .catch Ljava/io/IOException; {:try_start_2c1 .. :try_end_2c6} :catch_2f5

    move-object/from16 v21, v2

    .end local v2    # "localAddr":Ljava/net/InetAddress;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    :try_start_2c8
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v2, v2, v10

    const/16 v28, 0x0

    aput-object v2, v1, v28

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v28, v2, v10
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2c8 .. :try_end_2d4} :catch_308

    move-object/from16 v2, v31

    move-object/from16 v31, v1

    .end local v31    # "headBytes":[B
    .local v2, "headBytes":[B
    move-object/from16 v1, p0

    move-object v15, v2

    .end local v2    # "headBytes":[B
    .local v15, "headBytes":[B
    move v2, v0

    move-object/from16 v33, v3

    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .local v33, "h":Lcom/android/okhttp/Headers;
    move-object/from16 v3, v31

    move-object v13, v4

    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .local v13, "newHeader":Lcom/android/okhttp/Request;
    move/from16 v4, v28

    move-object/from16 v28, v5

    move-object/from16 v14, v29

    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v29    # "newUrl":Ljava/net/URL;
    .local v14, "newUrl":Ljava/net/URL;
    .local v28, "requestLine":Ljava/lang/String;
    move-object/from16 v5, v21

    move-object/from16 v29, v6

    .end local v6    # "range":Ljava/lang/StringBuffer;
    .local v29, "range":Ljava/lang/StringBuffer;
    move-object/from16 v6, v30

    :try_start_2ed
    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v0
    :try_end_2f1
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_2f1} :catch_3eb

    move-object/from16 v18, v0

    goto/16 :goto_3f5

    .line 1028
    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "newUrl":Ljava/net/URL;
    .end local v15    # "headBytes":[B
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .local v2, "localAddr":Ljava/net/InetAddress;
    .restart local v3    # "h":Lcom/android/okhttp/Headers;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "requestLine":Ljava/lang/String;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .local v29, "newUrl":Ljava/net/URL;
    .restart local v31    # "headBytes":[B
    :catch_2f5
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 v33, v3

    move-object/from16 v28, v5

    move-object/from16 v14, v29

    move-object/from16 v29, v6

    move-object v13, v4

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object v14, v8

    .end local v2    # "localAddr":Ljava/net/InetAddress;
    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v31    # "headBytes":[B
    .restart local v13    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v14    # "newUrl":Ljava/net/URL;
    .restart local v15    # "headBytes":[B
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    .restart local v28    # "requestLine":Ljava/lang/String;
    .local v29, "range":Ljava/lang/StringBuffer;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    goto/16 :goto_74f

    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "newUrl":Ljava/net/URL;
    .end local v15    # "headBytes":[B
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v3    # "h":Lcom/android/okhttp/Headers;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "requestLine":Ljava/lang/String;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .local v29, "newUrl":Ljava/net/URL;
    .restart local v31    # "headBytes":[B
    :catch_308
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v28, v5

    move-object/from16 v14, v29

    move-object/from16 v29, v6

    move-object v13, v4

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object v14, v8

    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v31    # "headBytes":[B
    .restart local v13    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v14    # "newUrl":Ljava/net/URL;
    .restart local v15    # "headBytes":[B
    .restart local v28    # "requestLine":Ljava/lang/String;
    .local v29, "range":Ljava/lang/StringBuffer;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    goto/16 :goto_74f

    .line 964
    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "newUrl":Ljava/net/URL;
    .end local v15    # "headBytes":[B
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v3    # "h":Lcom/android/okhttp/Headers;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "requestLine":Ljava/lang/String;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .local v29, "newUrl":Ljava/net/URL;
    .restart local v31    # "headBytes":[B
    :cond_319
    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v14, v29

    move-object/from16 v15, v31

    move-object/from16 v29, v6

    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v31    # "headBytes":[B
    .restart local v13    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v14    # "newUrl":Ljava/net/URL;
    .restart local v15    # "headBytes":[B
    .restart local v28    # "requestLine":Ljava/lang/String;
    .local v29, "range":Ljava/lang/StringBuffer;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    :try_start_324
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lcom/android/okhttp/internal/io/RealConnection;->getAllByName(ILjava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_32c} :catch_729

    move-object v1, v0

    .line 967
    .local v1, "addresses":[Ljava/net/InetAddress;
    if-eqz v1, :cond_3f5

    .line 968
    :try_start_32f
    array-length v0, v1

    if-lez v0, :cond_33f

    .line 969
    const/4 v2, 0x0

    aget-object v0, v1, v2

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->getIPVersion(Ljava/net/InetAddress;)I

    move-result v0

    invoke-static {v10, v0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterface(II)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_33d
    .catch Ljava/io/IOException; {:try_start_32f .. :try_end_33d} :catch_3eb

    move-object v6, v0

    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .local v0, "localAddr":Ljava/net/InetAddress;
    goto :goto_341

    .line 968
    .end local v0    # "localAddr":Ljava/net/InetAddress;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    :cond_33f
    move-object/from16 v6, v21

    .line 972
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .local v6, "localAddr":Ljava/net/InetAddress;
    :goto_341
    :try_start_341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_346
    .catch Ljava/io/IOException; {:try_start_341 .. :try_end_346} :catch_3dd

    move-object v5, v0

    .line 975
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_348
    :try_start_348
    array-length v2, v1

    if-ge v0, v2, :cond_35b

    .line 976
    aget-object v2, v1, v0

    invoke-direct {v9, v6, v2}, Lcom/android/okhttp/internal/io/RealConnection;->matchIPver(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_358

    .line 977
    aget-object v2, v1, v0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_358
    add-int/lit8 v0, v0, 0x1

    goto :goto_348

    .line 980
    .end local v0    # "i":I
    :cond_35b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_371

    .line 981
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 982
    const/16 v18, 0x0

    .line 983
    const/16 v22, 0x0

    .line 984
    move-object/from16 v21, v6

    move-object/from16 v32, v7

    move-object v1, v13

    move-object v5, v14

    move-object v14, v8

    goto/16 :goto_79b

    .line 987
    :cond_371
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/net/InetAddress;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    move-object v1, v0

    .line 989
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_396

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of IP address after filtering with IP version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_396
    .catchall {:try_start_348 .. :try_end_396} :catchall_398

    .line 993
    :cond_396
    move-object v0, v1

    goto :goto_3b0

    .line 991
    :catchall_398
    move-exception v0

    .line 992
    .local v0, "exx":Ljava/lang/Throwable;
    :try_start_399
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_39b
    .catch Ljava/io/IOException; {:try_start_399 .. :try_end_39b} :catch_3dd

    if-eqz v2, :cond_3af

    :try_start_39d
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_3af

    .line 1028
    .end local v0    # "exx":Ljava/lang/Throwable;
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_3a3
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v31, v15

    move-object v14, v8

    goto/16 :goto_74f

    .line 994
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_3af
    :goto_3af
    move-object v0, v1

    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .local v0, "addresses":[Ljava/net/InetAddress;
    :goto_3b0
    if-eqz p10, :cond_3b8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->startExtremSocketCreation:J
    :try_end_3b8
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3b8} :catch_3a3

    .line 995
    :cond_3b8
    :try_start_3b8
    iget v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v4, v1, v10
    :try_end_3be
    .catch Ljava/io/IOException; {:try_start_3b8 .. :try_end_3be} :catch_3dd

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v21, v5

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    move-object v5, v6

    move-object/from16 v31, v6

    .end local v6    # "localAddr":Ljava/net/InetAddress;
    .local v31, "localAddr":Ljava/net/InetAddress;
    move-object/from16 v6, v30

    :try_start_3c8
    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v1
    :try_end_3cc
    .catch Ljava/io/IOException; {:try_start_3c8 .. :try_end_3cc} :catch_3d1

    move-object/from16 v18, v1

    move-object/from16 v21, v31

    goto :goto_3f5

    .line 1028
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_3d1
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v21, v31

    move-object v14, v8

    move-object/from16 v31, v15

    goto/16 :goto_74f

    .end local v31    # "localAddr":Ljava/net/InetAddress;
    .restart local v6    # "localAddr":Ljava/net/InetAddress;
    :catch_3dd
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v21, v31

    move-object v14, v8

    move-object/from16 v31, v15

    .end local v6    # "localAddr":Ljava/net/InetAddress;
    .restart local v31    # "localAddr":Ljava/net/InetAddress;
    goto/16 :goto_74f

    .end local v31    # "localAddr":Ljava/net/InetAddress;
    .local v21, "localAddr":Ljava/net/InetAddress;
    :catch_3eb
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v31, v15

    move-object v14, v8

    goto/16 :goto_74f

    .line 1000
    :cond_3f5
    :goto_3f5
    :try_start_3f5
    const-string v0, "https"

    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_3ff
    .catch Ljava/io/IOException; {:try_start_3f5 .. :try_end_3ff} :catch_70a

    if-eqz v0, :cond_470

    .line 1001
    :try_start_401
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 1002
    invoke-virtual/range {v26 .. v26}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v0, v0, v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v31
    :try_end_419
    .catch Ljava/io/IOException; {:try_start_401 .. :try_end_419} :catch_466

    .line 1001
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v30

    move-object/from16 v32, v7

    .end local v7    # "host":Ljava/lang/String;
    .local v32, "host":Ljava/lang/String;
    move v7, v0

    move-object/from16 v34, v14

    move-object v14, v8

    .end local v8    # "socketName":Ljava/lang/String;
    .local v14, "socketName":Ljava/lang/String;
    .local v34, "newUrl":Ljava/net/URL;
    move/from16 v8, v31

    :try_start_427
    invoke-virtual/range {v1 .. v8}, Lcom/android/okhttp/internal/io/RealConnection;->connectTlsForSecChunk(Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_42b
    .catch Ljava/io/IOException; {:try_start_427 .. :try_end_42b} :catch_461

    move-object v1, v0

    .line 1003
    .end local v18    # "socketCandidate":Ljava/net/Socket;
    .local v1, "socketCandidate":Ljava/net/Socket;
    :try_start_42c
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_43b

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_43b

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "connect TLS for Sec Chunk "

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1004
    :cond_43b
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_477

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_477

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect TLS for Sec Chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_459
    .catch Ljava/io/IOException; {:try_start_42c .. :try_end_459} :catch_45a

    goto :goto_477

    .line 1007
    :catch_45a
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v31, v15

    goto/16 :goto_712

    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .restart local v18    # "socketCandidate":Ljava/net/Socket;
    :catch_461
    move-exception v0

    move-object/from16 v31, v15

    goto/16 :goto_712

    .end local v32    # "host":Ljava/lang/String;
    .end local v34    # "newUrl":Ljava/net/URL;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v14, "newUrl":Ljava/net/URL;
    :catch_466
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object v14, v8

    move-object/from16 v31, v15

    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v14, "socketName":Ljava/lang/String;
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    goto/16 :goto_712

    .line 1000
    .end local v32    # "host":Ljava/lang/String;
    .end local v34    # "newUrl":Ljava/net/URL;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v14, "newUrl":Ljava/net/URL;
    :cond_470
    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object v14, v8

    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v14, "socketName":Ljava/lang/String;
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    move-object/from16 v1, v18

    .line 1013
    .end local v18    # "socketCandidate":Ljava/net/Socket;
    .restart local v1    # "socketCandidate":Ljava/net/Socket;
    :cond_477
    :goto_477
    nop

    .line 1015
    :try_start_478
    iget v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I
    :try_end_47a
    .catch Ljava/io/IOException; {:try_start_478 .. :try_end_47a} :catch_704

    if-lez v0, :cond_483

    .line 1017
    :try_start_47c
    iget v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_481
    .catchall {:try_start_47c .. :try_end_481} :catchall_482

    goto :goto_483

    .line 1019
    :catchall_482
    move-exception v0

    .line 1021
    :cond_483
    :goto_483
    :try_start_483
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_485
    .catch Ljava/io/IOException; {:try_start_483 .. :try_end_485} :catch_704

    if-eqz v0, :cond_4bb

    :try_start_487
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_4bb

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside try after extreme connecting with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", socket addr is ..... for net type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startExtremSocketCreation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->startExtremSocketCreation:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4b3
    .catch Ljava/io/IOException; {:try_start_487 .. :try_end_4b3} :catch_4b4

    goto :goto_4bb

    .line 1028
    :catch_4b4
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v31, v15

    goto/16 :goto_74f

    .line 1024
    :cond_4bb
    :goto_4bb
    :try_start_4bb
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_4bd
    .catch Ljava/io/IOException; {:try_start_4bb .. :try_end_4bd} :catch_704

    if-eqz v0, :cond_4f3

    :try_start_4bf
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_4f3

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside try after extreme connecting with:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", socket addr is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for net type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", startExtremSocketCreation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->startExtremSocketCreation:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4f3
    .catch Ljava/io/IOException; {:try_start_4bf .. :try_end_4f3} :catch_4b4

    .line 1032
    :cond_4f3
    nop

    .line 1035
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1036
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1038
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {v3, v15}, Ljava/io/OutputStream;->write([B)V

    .line 1040
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratUtil;->readResponseHeaders(Ljava/io/InputStream;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v5

    .line 1042
    .end local v23    # "rsp":Lcom/android/okhttp/Response;
    .local v5, "rsp":Lcom/android/okhttp/Response;
    :try_start_50b
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_540

    .line 1043
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get response "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1044
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v0, :cond_540

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_540

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V
    :try_end_53e
    .catchall {:try_start_50b .. :try_end_53e} :catchall_53f

    goto :goto_540

    .line 1047
    :catchall_53f
    move-exception v0

    :cond_540
    :goto_540
    nop

    .line 1048
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->code()I

    move-result v4

    .line 1049
    .local v4, "responseCode":I
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_574

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HttpConnection startOffset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " endOffset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p5

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v31, v15

    .end local v15    # "headBytes":[B
    .local v31, "headBytes":[B
    const-string v15, " response code: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_578

    .end local v31    # "headBytes":[B
    .restart local v15    # "headBytes":[B
    :cond_574
    move-wide/from16 v7, p5

    move-object/from16 v31, v15

    .line 1050
    .end local v15    # "headBytes":[B
    .restart local v31    # "headBytes":[B
    :goto_578
    const/16 v0, 0xc8

    if-eq v4, v0, :cond_66e

    const/16 v0, 0xce

    if-eq v4, v0, :cond_66e

    packed-switch v4, :pswitch_data_7b8

    .line 1108
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1109
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1110
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .local v0, "socketCandidate":Ljava/net/Socket;
    const/4 v1, 0x0

    move-object/from16 v18, v0

    move/from16 v22, v1

    move-object v8, v5

    move-object/from16 v5, v34

    .end local v22    # "notOkResponse":Z
    .local v1, "notOkResponse":Z
    goto/16 :goto_6f0

    .line 1055
    .end local v0    # "socketCandidate":Ljava/net/Socket;
    .local v1, "socketCandidate":Ljava/net/Socket;
    .restart local v22    # "notOkResponse":Z
    :pswitch_597
    add-int/lit8 v0, v24, 0x1

    .end local v24    # "redirectionCount":I
    .local v0, "redirectionCount":I
    sget v6, Lcom/android/okhttp/internal/http/HttpEngine;->MAX_REDIRECTS:I

    if-gt v0, v6, :cond_662

    .line 1058
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    const-string v15, "Location"

    invoke-virtual {v6, v15}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1059
    .end local v20    # "location":Ljava/lang/String;
    .local v6, "location":Ljava/lang/String;
    if-nez v6, :cond_5c1

    .line 1060
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1061
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1062
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1063
    const/4 v1, 0x0

    .line 1064
    const/4 v15, 0x0

    .line 1065
    .end local v22    # "notOkResponse":Z
    .local v15, "notOkResponse":Z
    move/from16 v24, v0

    move-object/from16 v18, v1

    move-object v8, v5

    move-object/from16 v20, v6

    move/from16 v22, v15

    move-object/from16 v5, v34

    goto/16 :goto_6f0

    .line 1067
    .end local v15    # "notOkResponse":Z
    .restart local v22    # "notOkResponse":Z
    :cond_5c1
    move-object/from16 v15, v34

    .line 1068
    .end local v19    # "previousUrl":Ljava/net/URL;
    .local v15, "previousUrl":Ljava/net/URL;
    move/from16 v18, v0

    .end local v0    # "redirectionCount":I
    .local v18, "redirectionCount":I
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v15, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1069
    .end local v34    # "newUrl":Ljava/net/URL;
    .local v0, "newUrl":Ljava/net/URL;
    sget-boolean v19, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v19, :cond_605

    move/from16 v35, v4

    .end local v4    # "responseCode":I
    .local v35, "responseCode":I
    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-object/from16 v20, v6

    .end local v6    # "location":Ljava/lang/String;
    .restart local v20    # "location":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "redirected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", prevPro="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newPro="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_609

    .end local v20    # "location":Ljava/lang/String;
    .end local v35    # "responseCode":I
    .restart local v4    # "responseCode":I
    .restart local v6    # "location":Ljava/lang/String;
    :cond_605
    move/from16 v35, v4

    move-object/from16 v20, v6

    .line 1070
    .end local v4    # "responseCode":I
    .end local v6    # "location":Ljava/lang/String;
    .restart local v20    # "location":Ljava/lang/String;
    .restart local v35    # "responseCode":I
    :goto_609
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_645

    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-boolean v4, v4, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    if-nez v4, :cond_645

    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    if-eqz v4, :cond_623

    iget-boolean v4, v4, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    if-nez v4, :cond_645

    .line 1071
    :cond_623
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_62e

    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "redirected to a diffrent schema, not support"

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1072
    :cond_62e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1073
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1074
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1075
    const/4 v1, 0x0

    .line 1076
    const/4 v4, 0x0

    .line 1077
    .end local v22    # "notOkResponse":Z
    .local v4, "notOkResponse":Z
    move/from16 v22, v4

    move-object v8, v5

    move-object/from16 v19, v15

    move/from16 v24, v18

    move-object v5, v0

    move-object/from16 v18, v1

    goto/16 :goto_6f0

    .line 1080
    .end local v4    # "notOkResponse":Z
    .restart local v22    # "notOkResponse":Z
    :cond_645
    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v25, v4, v10

    .line 1081
    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aput-object v25, v4, v10

    .line 1082
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1083
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1084
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1085
    move-object v8, v5

    move-object/from16 v19, v15

    move/from16 v24, v18

    move-object v5, v0

    move-object/from16 v18, v1

    goto/16 :goto_6f0

    .line 1056
    .end local v15    # "previousUrl":Ljava/net/URL;
    .end local v18    # "redirectionCount":I
    .end local v35    # "responseCode":I
    .local v0, "redirectionCount":I
    .local v4, "responseCode":I
    .restart local v19    # "previousUrl":Ljava/net/URL;
    .restart local v34    # "newUrl":Ljava/net/URL;
    :cond_662
    move/from16 v18, v0

    move/from16 v35, v4

    .end local v0    # "redirectionCount":I
    .end local v4    # "responseCode":I
    .restart local v18    # "redirectionCount":I
    .restart local v35    # "responseCode":I
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Too many redirects"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    .end local v18    # "redirectionCount":I
    .end local v35    # "responseCode":I
    .restart local v4    # "responseCode":I
    .restart local v24    # "redirectionCount":I
    :cond_66e
    move/from16 v35, v4

    .line 1088
    .end local v4    # "responseCode":I
    .restart local v35    # "responseCode":I
    monitor-enter p0

    .line 1090
    :try_start_671
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aget-object v0, v0, v10
    :try_end_677
    .catchall {:try_start_671 .. :try_end_677} :catchall_6fe

    if-nez v0, :cond_684

    .line 1091
    :try_start_679
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aput-object v13, v0, v10
    :try_end_67f
    .catchall {:try_start_679 .. :try_end_67f} :catchall_680

    goto :goto_684

    .line 1104
    :catchall_680
    move-exception v0

    move-object v8, v5

    goto/16 :goto_700

    .line 1092
    :cond_684
    :goto_684
    :try_start_684
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v0, v0, v10
    :try_end_688
    .catchall {:try_start_684 .. :try_end_688} :catchall_6fe

    if-nez v0, :cond_692

    .line 1093
    :try_start_68a
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v10
    :try_end_692
    .catchall {:try_start_68a .. :try_end_692} :catchall_680

    .line 1094
    :cond_692
    :try_start_692
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_694
    .catchall {:try_start_692 .. :try_end_694} :catchall_6fe

    if-eqz v0, :cond_6c0

    :try_start_696
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set socket dest IP after extrem connecting with:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", socket addr is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v6, v6, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for net type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_6c0
    .catchall {:try_start_696 .. :try_end_6c0} :catchall_680

    .line 1096
    :cond_6c0
    :try_start_6c0
    invoke-static {v5}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v6

    .line 1097
    .local v6, "sampleRequestSize":J
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0
    :try_end_6c8
    .catchall {:try_start_6c0 .. :try_end_6c8} :catchall_6fe

    move-object v8, v5

    .end local v5    # "rsp":Lcom/android/okhttp/Response;
    .local v8, "rsp":Lcom/android/okhttp/Response;
    const-wide/16 v4, -0x1

    :try_start_6cb
    invoke-static {v0, v4, v5}, Lcom/android/okhttp/internal/http/MultiratUtil;->getFullContentLength(Lcom/android/okhttp/Headers;J)J

    move-result-wide v4

    .line 1098
    .local v4, "fullContentLength":J
    sub-long v36, p5, v11

    const-wide/16 v38, 0x1

    add-long v36, v36, v38

    cmp-long v0, v6, v36

    if-nez v0, :cond_6dd

    cmp-long v0, v4, p7

    if-eqz v0, :cond_6e8

    .line 1099
    :cond_6dd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1100
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1101
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1102
    const/4 v0, 0x0

    move-object v1, v0

    .line 1104
    .end local v4    # "fullContentLength":J
    .end local v6    # "sampleRequestSize":J
    :cond_6e8
    monitor-exit p0

    .line 1105
    const/4 v0, 0x0

    .line 1106
    .end local v22    # "notOkResponse":Z
    .local v0, "notOkResponse":Z
    move/from16 v22, v0

    move-object/from16 v18, v1

    move-object/from16 v5, v34

    .line 1115
    .end local v0    # "notOkResponse":Z
    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v26    # "newUri":Ljava/net/URI;
    .end local v27    # "bProxyChanged":Z
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v30    # "curProxy":Ljava/net/Proxy;
    .end local v31    # "headBytes":[B
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "newUrl":Ljava/net/URL;
    .end local v35    # "responseCode":I
    .local v5, "newUrl":Ljava/net/URL;
    .local v18, "socketCandidate":Ljava/net/Socket;
    .restart local v22    # "notOkResponse":Z
    :goto_6f0
    move/from16 v15, p11

    move-object/from16 v23, v8

    move-object v1, v13

    move-object v8, v14

    move-object/from16 v6, v29

    move-object/from16 v7, v32

    move-wide/from16 v13, p5

    goto/16 :goto_d2

    .line 1104
    .end local v8    # "rsp":Lcom/android/okhttp/Response;
    .end local v18    # "socketCandidate":Ljava/net/Socket;
    .restart local v1    # "socketCandidate":Ljava/net/Socket;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v5, "rsp":Lcom/android/okhttp/Response;
    .restart local v26    # "newUri":Ljava/net/URI;
    .restart local v27    # "bProxyChanged":Z
    .restart local v28    # "requestLine":Ljava/lang/String;
    .restart local v30    # "curProxy":Ljava/net/Proxy;
    .restart local v31    # "headBytes":[B
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "newUrl":Ljava/net/URL;
    .restart local v35    # "responseCode":I
    :catchall_6fe
    move-exception v0

    move-object v8, v5

    .end local v5    # "rsp":Lcom/android/okhttp/Response;
    .restart local v8    # "rsp":Lcom/android/okhttp/Response;
    :goto_700
    monitor-exit p0
    :try_end_701
    .catchall {:try_start_6cb .. :try_end_701} :catchall_702

    throw v0

    :catchall_702
    move-exception v0

    goto :goto_700

    .line 1028
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v8    # "rsp":Lcom/android/okhttp/Response;
    .end local v31    # "headBytes":[B
    .end local v35    # "responseCode":I
    .local v15, "headBytes":[B
    .restart local v23    # "rsp":Lcom/android/okhttp/Response;
    :catch_704
    move-exception v0

    move-object/from16 v31, v15

    move-object/from16 v18, v1

    .end local v15    # "headBytes":[B
    .restart local v31    # "headBytes":[B
    goto :goto_74f

    .line 1007
    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .end local v31    # "headBytes":[B
    .end local v32    # "host":Ljava/lang/String;
    .end local v34    # "newUrl":Ljava/net/URL;
    .restart local v7    # "host":Ljava/lang/String;
    .local v8, "socketName":Ljava/lang/String;
    .local v14, "newUrl":Ljava/net/URL;
    .restart local v15    # "headBytes":[B
    .restart local v18    # "socketCandidate":Ljava/net/Socket;
    :catch_70a
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v31, v15

    move-object v14, v8

    .line 1008
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .end local v15    # "headBytes":[B
    .local v0, "ex":Ljava/io/IOException;
    .local v14, "socketName":Ljava/lang/String;
    .restart local v31    # "headBytes":[B
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    :goto_712
    :try_start_712
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_71b

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1009
    :cond_71b
    invoke-static/range {v18 .. v18}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    :try_end_71e
    .catch Ljava/io/IOException; {:try_start_712 .. :try_end_71e} :catch_727

    .line 1010
    const/16 v18, 0x0

    .line 1011
    const/16 v22, 0x0

    .line 1012
    move-object v1, v13

    move-object/from16 v5, v34

    goto/16 :goto_79b

    .line 1028
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_727
    move-exception v0

    goto :goto_74f

    .end local v31    # "headBytes":[B
    .end local v32    # "host":Ljava/lang/String;
    .end local v34    # "newUrl":Ljava/net/URL;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v14, "newUrl":Ljava/net/URL;
    .restart local v15    # "headBytes":[B
    :catch_729
    move-exception v0

    move-object/from16 v32, v7

    move-object/from16 v34, v14

    move-object/from16 v31, v15

    move-object v14, v8

    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .end local v15    # "headBytes":[B
    .local v14, "socketName":Ljava/lang/String;
    .restart local v31    # "headBytes":[B
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    goto :goto_74f

    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "socketName":Ljava/lang/String;
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v32    # "host":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "newUrl":Ljava/net/URL;
    .local v3, "h":Lcom/android/okhttp/Headers;
    .local v4, "newHeader":Lcom/android/okhttp/Request;
    .local v5, "requestLine":Ljava/lang/String;
    .local v6, "range":Ljava/lang/StringBuffer;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v29, "newUrl":Ljava/net/URL;
    :catch_732
    move-exception v0

    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v34, v29

    move-object/from16 v29, v6

    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .restart local v13    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v14    # "socketName":Ljava/lang/String;
    .restart local v28    # "requestLine":Ljava/lang/String;
    .local v29, "range":Ljava/lang/StringBuffer;
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "newUrl":Ljava/net/URL;
    goto :goto_74f

    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "socketName":Ljava/lang/String;
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v31    # "headBytes":[B
    .end local v32    # "host":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "newUrl":Ljava/net/URL;
    .local v1, "headBytes":[B
    .restart local v3    # "h":Lcom/android/okhttp/Headers;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "requestLine":Ljava/lang/String;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v29, "newUrl":Ljava/net/URL;
    :catch_740
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v33, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v34, v29

    move-object/from16 v29, v6

    .line 1029
    .end local v1    # "headBytes":[B
    .end local v3    # "h":Lcom/android/okhttp/Headers;
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "requestLine":Ljava/lang/String;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v13    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v14    # "socketName":Ljava/lang/String;
    .restart local v28    # "requestLine":Ljava/lang/String;
    .local v29, "range":Ljava/lang/StringBuffer;
    .restart local v31    # "headBytes":[B
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "newUrl":Ljava/net/URL;
    :goto_74f
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_769

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting socketName inside exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1030
    :cond_769
    throw v0

    .line 922
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "newHeader":Lcom/android/okhttp/Request;
    .end local v14    # "socketName":Ljava/lang/String;
    .end local v27    # "bProxyChanged":Z
    .end local v28    # "requestLine":Ljava/lang/String;
    .end local v29    # "range":Ljava/lang/StringBuffer;
    .end local v30    # "curProxy":Ljava/net/Proxy;
    .end local v31    # "headBytes":[B
    .end local v32    # "host":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "newUrl":Ljava/net/URL;
    .local v1, "newHeader":Lcom/android/okhttp/Request;
    .local v5, "newUrl":Ljava/net/URL;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    :catch_76a
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v29, v6

    move-object/from16 v32, v7

    move-object v14, v8

    move-object/from16 v2, v26

    .end local v5    # "newUrl":Ljava/net/URL;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .restart local v14    # "socketName":Ljava/lang/String;
    .restart local v29    # "range":Ljava/lang/StringBuffer;
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    goto :goto_77d

    .end local v14    # "socketName":Ljava/lang/String;
    .end local v26    # "newUri":Ljava/net/URI;
    .end local v29    # "range":Ljava/lang/StringBuffer;
    .end local v32    # "host":Ljava/lang/String;
    .end local v34    # "newUrl":Ljava/net/URL;
    .local v2, "newUri":Ljava/net/URI;
    .restart local v5    # "newUrl":Ljava/net/URL;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    :catch_775
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v29, v6

    move-object/from16 v32, v7

    move-object v14, v8

    .line 923
    .end local v5    # "newUrl":Ljava/net/URL;
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v14    # "socketName":Ljava/lang/String;
    .restart local v29    # "range":Ljava/lang/StringBuffer;
    .restart local v32    # "host":Ljava/lang/String;
    .restart local v34    # "newUrl":Ljava/net/URL;
    :goto_77d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v34

    .end local v34    # "newUrl":Ljava/net/URL;
    .restart local v5    # "newUrl":Ljava/net/URL;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 911
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "newUri":Ljava/net/URI;
    .end local v14    # "socketName":Ljava/lang/String;
    .end local v29    # "range":Ljava/lang/StringBuffer;
    .end local v32    # "host":Ljava/lang/String;
    .restart local v6    # "range":Ljava/lang/StringBuffer;
    .restart local v7    # "host":Ljava/lang/String;
    .restart local v8    # "socketName":Ljava/lang/String;
    :cond_796
    move-object/from16 v29, v6

    move-object/from16 v32, v7

    move-object v14, v8

    .line 1116
    .end local v6    # "range":Ljava/lang/StringBuffer;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "socketName":Ljava/lang/String;
    .restart local v14    # "socketName":Ljava/lang/String;
    .restart local v29    # "range":Ljava/lang/StringBuffer;
    .restart local v32    # "host":Ljava/lang/String;
    :goto_79b
    return-object v18

    .line 882
    .end local v5    # "newUrl":Ljava/net/URL;
    .end local v14    # "socketName":Ljava/lang/String;
    .end local v16    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v17    # "uri":Ljava/net/URI;
    .end local v18    # "socketCandidate":Ljava/net/Socket;
    .end local v19    # "previousUrl":Ljava/net/URL;
    .end local v20    # "location":Ljava/lang/String;
    .end local v21    # "localAddr":Ljava/net/InetAddress;
    .end local v22    # "notOkResponse":Z
    .end local v23    # "rsp":Lcom/android/okhttp/Response;
    .end local v24    # "redirectionCount":I
    .end local v29    # "range":Ljava/lang/StringBuffer;
    .end local v32    # "host":Ljava/lang/String;
    .local v0, "socketCandidate":Ljava/net/Socket;
    .local v1, "localAddr":Ljava/net/InetAddress;
    :cond_79c
    move-object/from16 v18, v0

    move-object/from16 v21, v1

    .end local v0    # "socketCandidate":Ljava/net/Socket;
    .end local v1    # "localAddr":Ljava/net/InetAddress;
    .restart local v18    # "socketCandidate":Ljava/net/Socket;
    .restart local v21    # "localAddr":Ljava/net/InetAddress;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find local Address for netType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_7b8
    .packed-switch 0x12c
        :pswitch_597
        :pswitch_597
        :pswitch_597
        :pswitch_597
    .end packed-switch
.end method

.method private blacklist getAllByName(ILjava/lang/String;)[Ljava/net/InetAddress;
    .registers 12
    .param p1, "netType"    # I
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 666
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/net/InetAddress;

    .line 668
    .local v1, "ret":[Ljava/net/InetAddress;
    const/4 v2, 0x1

    const-string v3, " at time "

    if-ne p1, v2, :cond_79

    .line 669
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/io/RealConnection;->getIPStyle(I)I

    move-result v2

    .line 670
    .local v2, "ipStyle":I
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_e
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_e} :catch_12b

    const-string v5, "start to get IP for host with new style("

    if-eqz v4, :cond_36

    :try_start_12
    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") at time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 671
    :cond_36
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_64

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v4, :cond_64

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 672
    :cond_64
    const-wide/16 v4, 0x0

    .line 673
    .local v4, "threadID":J
    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v6, :cond_71

    .line 674
    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getMainThreadID()J

    move-result-wide v6

    move-wide v4, v6

    .line 675
    :cond_71
    iget-boolean v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    invoke-static {v4, v5, p2, v2, v6}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getAddrsByHost(JLjava/lang/String;IZ)[Ljava/net/InetAddress;

    move-result-object v6

    move-object v1, v6

    .line 676
    .end local v2    # "ipStyle":I
    .end local v4    # "threadID":J
    goto :goto_c8

    .line 678
    :cond_79
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_9b

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to get IP for host with default, at time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 679
    :cond_9b
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_c3

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_c3

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start to get IP for host with default "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 680
    :cond_c3
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_c7
    .catch Ljava/net/UnknownHostException; {:try_start_12 .. :try_end_c7} :catch_12b

    move-object v1, v2

    .line 686
    :goto_c8
    nop

    .line 687
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v4, ", result number "

    if-eqz v2, :cond_f8

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_f8

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish to get IP for host at time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_ed

    move v6, v0

    goto :goto_ee

    :cond_ed
    array-length v6, v1

    :goto_ee
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 688
    :cond_f8
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_12a

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_12a

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish to get IP for host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_11f

    goto :goto_120

    :cond_11f
    array-length v0, v1

    :goto_120
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 689
    :cond_12a
    return-object v1

    .line 683
    :catch_12b
    move-exception v0

    .line 684
    .local v0, "ex":Ljava/net/UnknownHostException;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_135

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 685
    :cond_135
    throw v0
.end method

.method private blacklist getIPStyle(I)I
    .registers 7
    .param p1, "netType"    # I

    .line 251
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 252
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 253
    .local v1, "addr0":Ljava/net/InetAddress;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 254
    .local v3, "addr1":Ljava/net/InetAddress;
    if-eqz v1, :cond_25

    if-nez v3, :cond_12

    goto :goto_25

    .line 255
    :cond_12
    instance-of v4, v1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1b

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-nez v4, :cond_1b

    .line 256
    return v2

    .line 257
    :cond_1b
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_24

    instance-of v4, v1, Ljava/net/Inet4Address;

    if-nez v4, :cond_24

    .line 258
    return v2

    .line 260
    :cond_24
    return v0

    .line 254
    :cond_25
    :goto_25
    return v0
.end method

.method private blacklist getProxy(ILjava/lang/String;)Ljava/net/Proxy;
    .registers 10
    .param p1, "netType"    # I
    .param p2, "host"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "ret":Ljava/net/Proxy;
    :try_start_1
    invoke-static {p1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getHttpProxy(I)[Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "sProxyInfo":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_d

    .line 268
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object v0, v2

    goto/16 :goto_bd

    .line 271
    :cond_d
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 272
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_3a

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Proxy for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 273
    :cond_3a
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_60

    sget-boolean v3, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get Proxy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 274
    :cond_60
    const/4 v3, 0x2

    aget-object v4, v1, v3

    invoke-direct {p0, v4, p2}, Lcom/android/okhttp/internal/io/RealConnection;->isExcluded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 275
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_89

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host is in the exclusion list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 276
    :cond_89
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_b1

    sget-boolean v4, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v4, :cond_b1

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in the exclusion list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 277
    :cond_b1
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object v0, v3

    goto :goto_bd

    .line 280
    :cond_b5
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v3, v4, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_bc
    .catchall {:try_start_1 .. :try_end_bc} :catchall_be

    move-object v0, v3

    .line 287
    .end local v1    # "sProxyInfo":[Ljava/lang/String;
    .end local v2    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :goto_bd
    goto :goto_ce

    .line 284
    :catchall_be
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_cc

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 286
    :cond_cc
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 288
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_ce
    return-object v0
.end method

.method private blacklist isExcluded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "exclusionList"    # Ljava/lang/String;
    .param p2, "urlDomain"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "mParsedExclusionList":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_8

    .line 294
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_48

    .line 297
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "splitExclusionList":[Ljava/lang/String;
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 299
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    array-length v5, v3

    if-ge v4, v5, :cond_48

    .line 300
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "s":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 302
    :cond_2d
    mul-int/lit8 v7, v4, 0x2

    aput-object v5, v0, v7

    .line 303
    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 299
    .end local v5    # "s":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 307
    .end local v3    # "splitExclusionList":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_48
    :goto_48
    if-eqz p2, :cond_70

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_70

    array-length v3, v0

    if-nez v3, :cond_54

    goto :goto_70

    .line 311
    :cond_54
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    array-length v4, v0

    if-ge v3, v4, :cond_6f

    .line 312
    aget-object v4, v0, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6e

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    goto :goto_6e

    .line 311
    :cond_6b
    add-int/lit8 v3, v3, 0x2

    goto :goto_55

    .line 313
    :cond_6e
    :goto_6e
    return v2

    .line 316
    .end local v3    # "i":I
    :cond_6f
    return v1

    .line 309
    :cond_70
    :goto_70
    return v1
.end method

.method private blacklist isSameProxy(Ljava/net/Proxy;Ljava/net/Proxy;)Z
    .registers 7
    .param p1, "p1"    # Ljava/net/Proxy;
    .param p2, "p2"    # Ljava/net/Proxy;

    .line 321
    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 322
    return v0

    .line 323
    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    .line 324
    :try_start_b
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1c

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1c

    .line 325
    return v0

    .line 326
    :cond_1c
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v2, :cond_31

    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v2, :cond_31

    .line 327
    invoke-virtual {p1, p2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_32

    return v0

    .line 330
    :cond_31
    return v1

    .line 335
    :catchall_32
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Throwable;
    return v1

    .line 333
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_34
    return v1
.end method

.method private blacklist matchIPver(Ljava/net/InetAddress;Ljava/net/InetAddress;)Z
    .registers 6
    .param p1, "addr1"    # Ljava/net/InetAddress;
    .param p2, "addr2"    # Ljava/net/InetAddress;

    .line 852
    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 853
    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    .line 854
    :cond_8
    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_11

    instance-of v2, p2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_11

    return v0

    .line 855
    :cond_11
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1a

    instance-of v2, p2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1a

    return v0

    .line 856
    :cond_1a
    return v1
.end method

.method private static declared-synchronized blacklist trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 4
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    const-class v0, Lcom/android/okhttp/internal/io/RealConnection;

    monitor-enter v0

    .line 1504
    :try_start_3
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_1b

    .line 1505
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 1506
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/Platform;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v2

    sput-object v2, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;

    .line 1507
    sput-object p0, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 1509
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1b
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    .line 1503
    .end local p0    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public blacklist allocationLimit()I
    .registers 3

    .line 1611
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 1612
    .local v0, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    if-eqz v0, :cond_9

    .line 1613
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    goto :goto_a

    .line 1614
    :cond_9
    const/4 v1, 0x1

    .line 1612
    :goto_a
    return v1
.end method

.method public blacklist bBothInfAvail()I
    .registers 10

    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v1

    .line 638
    .local v1, "addr0":Ljava/net/InetAddress;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 639
    .local v3, "addr1":Ljava/net/InetAddress;
    if-eqz v1, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v0

    .line 640
    .local v4, "ret0":Z
    :goto_f
    if-eqz v3, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v0

    .line 641
    .local v5, "ret1":Z
    :goto_14
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_51

    .line 642
    if-eqz v4, :cond_46

    if-eqz v5, :cond_46

    .line 646
    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bBothInfAvail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 647
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v6, :cond_51

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v7, "The above addresses might not be the real addresses being used for connection"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_51

    .line 649
    :cond_46
    if-nez v4, :cond_51

    if-nez v5, :cond_51

    .line 650
    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v7, "bBothInfAvail false and false"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 653
    :cond_51
    :goto_51
    if-eqz v4, :cond_57

    if-eqz v5, :cond_57

    const/4 v0, 0x3

    return v0

    .line 654
    :cond_57
    if-nez v4, :cond_5d

    if-eqz v5, :cond_5d

    const/4 v0, 0x2

    return v0

    .line 655
    :cond_5d
    if-eqz v4, :cond_62

    if-nez v5, :cond_62

    return v2

    .line 656
    :cond_62
    return v0
.end method

.method public blacklist cancel()V
    .registers 4

    .line 1601
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel rawsocket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1603
    :cond_1c
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1604
    return-void
.end method

.method public blacklist close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_45

    .line 619
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close connection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " while multiSocketStream is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 620
    :cond_28
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v0, :cond_3f

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2d
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3a

    .line 622
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 624
    .end local v0    # "i":I
    :cond_3a
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 626
    :cond_3f
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_4c

    .line 629
    :cond_45
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 630
    :cond_4c
    :goto_4c
    return-void
.end method

.method public blacklist connect(IIILjava/util/List;Z)V
    .registers 23
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 1317
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p4

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_1bf

    .line 1320
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_7a

    .line 1321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->startSocketCreation:J

    .line 1322
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v2, ", proxy is "

    if-eqz v0, :cond_42

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_42

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http socket try to connect to destination address with time out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1323
    :cond_42
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_7a

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_7a

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http socket try to connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with time out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1327
    :cond_7a
    const/4 v0, 0x0

    .line 1328
    .local v0, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v2, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v2, v13}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    move-object v14, v2

    .line 1329
    .local v14, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v15

    .line 1330
    .local v15, "proxy":Ljava/net/Proxy;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v16

    .line 1332
    .local v16, "address":Lcom/android/okhttp/Address;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_be

    sget-object v2, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 1333
    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    goto :goto_be

    .line 1334
    :cond_a2
    new-instance v2, Lcom/android/okhttp/internal/http/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEARTEXT communication not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1338
    :cond_be
    :goto_be
    move-object v10, v0

    .end local v0    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v10, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_bf
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_1be

    .line 1340
    :try_start_c3
    invoke-virtual {v15}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_18b

    if-eq v0, v2, :cond_de

    :try_start_cb
    invoke-virtual {v15}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_d4

    goto :goto_de

    .line 1342
    :cond_d4
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v15}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d9} :catch_da

    goto :goto_e6

    .line 1363
    :catch_da
    move-exception v0

    move-object v11, v10

    goto/16 :goto_18d

    .line 1341
    :cond_de
    :goto_de
    :try_start_de
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 1342
    :goto_e6
    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 1343
    move/from16 v9, p3

    invoke-direct {v1, v11, v12, v9, v14}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    .line 1345
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_185

    .line 1346
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_f3} :catch_18b

    if-eqz v0, :cond_135

    :try_start_f5
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http socket connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v3}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 1347
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with reading time out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1346
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_135} :catch_da

    .line 1348
    :cond_135
    :try_start_135
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_13d} :catch_18b

    if-eqz v0, :cond_143

    .line 1349
    const/4 v0, 0x1

    :try_start_140
    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_142} :catch_da

    goto :goto_146

    .line 1352
    :cond_143
    const/4 v0, 0x0

    :try_start_144
    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    .line 1354
    :goto_146
    iput v12, v1, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 1355
    const/16 v0, 0x2710

    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    .line 1357
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-boolean v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_152} :catch_18b

    const/4 v5, 0x0

    move-object v2, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object v11, v10

    .end local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v11, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    move/from16 v10, p5

    :try_start_15f
    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;-><init>(ZLcom/android/okhttp/Route;Lcom/android/okhttp/Request;IIILjava/util/List;Z)V

    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 1359
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_186

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl_oriReq.connectionSpecs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_182} :catch_183

    goto :goto_186

    .line 1363
    :catch_183
    move-exception v0

    goto :goto_18d

    .line 1345
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_185
    move-object v11, v10

    .line 1382
    .end local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_186
    :goto_186
    move-object v10, v11

    move/from16 v11, p1

    goto/16 :goto_bf

    .line 1363
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :catch_18b
    move-exception v0

    move-object v11, v10

    .line 1364
    .end local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_18d
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1365
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 1366
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 1367
    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 1368
    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 1369
    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 1370
    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 1371
    iput-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 1373
    if-nez v11, :cond_1ad

    .line 1374
    new-instance v2, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v2, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v10, v2

    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v2, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    goto :goto_1b1

    .line 1376
    .end local v2    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_1ad
    invoke-virtual {v11, v0}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    move-object v10, v11

    .line 1379
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_1b1
    if-eqz p5, :cond_1bd

    invoke-virtual {v14, v0}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_1bd

    .line 1382
    .end local v0    # "e":Ljava/io/IOException;
    move/from16 v11, p1

    goto/16 :goto_bf

    .line 1380
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1bd
    throw v10

    .line 1384
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1be
    return-void

    .line 1317
    .end local v10    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v14    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v15    # "proxy":Ljava/net/Proxy;
    .end local v16    # "address":Lcom/android/okhttp/Address;
    :cond_1bf
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist connect(IIILjava/util/List;ZILcom/android/okhttp/internal/io/RealConnection;)V
    .registers 28
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnable"    # Z
    .param p6, "netType"    # I
    .param p7, "oriCon"    # Lcom/android/okhttp/internal/io/RealConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;ZI",
            "Lcom/android/okhttp/internal/io/RealConnection;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 413
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_318

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->startSocketCreation:J

    .line 417
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v2, ", proxy is "

    if-eqz v0, :cond_40

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http socket try to connect to destination address with time out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 418
    :cond_40
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_78

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_78

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http socket try to connect to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with time out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 420
    :cond_78
    const/4 v0, 0x0

    .line 421
    .local v0, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v2, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v2, v13}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    move-object v15, v2

    .line 422
    .local v15, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v10

    .line 423
    .local v10, "proxy":Ljava/net/Proxy;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v16

    .line 425
    .local v16, "address":Lcom/android/okhttp/Address;
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-nez v2, :cond_bc

    sget-object v2, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 426
    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    goto :goto_bc

    .line 427
    :cond_a0
    new-instance v2, Lcom/android/okhttp/internal/http/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEARTEXT communication not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 431
    :cond_bc
    :goto_bc
    move-object v9, v0

    .end local v0    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v9, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_bd
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    const-string v8, "ssl_oriReq.connectionSpecs = "

    const-string v3, " from "

    const-string v4, "http socket connected to "

    const-string v7, " with reading time out "

    const-string v2, ":"

    if-nez v0, :cond_1cf

    .line 433
    :try_start_cb
    invoke-virtual {v10}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d1} :catch_198

    if-eq v0, v6, :cond_e9

    :try_start_d3
    invoke-virtual {v10}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v6, :cond_dc

    goto :goto_e9

    .line 435
    :cond_dc
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v10}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e1} :catch_e2

    goto :goto_f1

    .line 455
    :catch_e2
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    goto/16 :goto_19d

    .line 434
    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 435
    :goto_f1
    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 436
    move/from16 v6, p3

    invoke-direct {v1, v11, v12, v6, v15}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    .line 438
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_18e

    .line 439
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_fe} :catch_198

    if-eqz v0, :cond_138

    :try_start_100
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 440
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_138} :catch_e2

    .line 441
    :cond_138
    :try_start_138
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_140} :catch_198

    if-eqz v0, :cond_146

    .line 442
    const/4 v0, 0x1

    :try_start_143
    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_145} :catch_e2

    goto :goto_149

    .line 445
    :cond_146
    const/4 v0, 0x0

    :try_start_147
    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    .line 447
    :goto_149
    iput v12, v1, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 448
    const/16 v0, 0x2710

    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    .line 450
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-boolean v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_155} :catch_198

    const/4 v5, 0x0

    move-object v2, v0

    const/4 v7, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v18, v8

    move/from16 v8, p3

    move-object/from16 v19, v9

    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v19, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    move-object/from16 v9, p4

    move-object/from16 v17, v10

    .end local v10    # "proxy":Ljava/net/Proxy;
    .local v17, "proxy":Ljava/net/Proxy;
    move/from16 v10, p5

    :try_start_168
    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;-><init>(ZLcom/android/okhttp/Route;Lcom/android/okhttp/Request;IIILjava/util/List;Z)V

    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 452
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_192

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v18

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_18b} :catch_18c

    goto :goto_192

    .line 455
    :catch_18c
    move-exception v0

    goto :goto_19d

    .line 438
    .end local v17    # "proxy":Ljava/net/Proxy;
    .end local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v10    # "proxy":Ljava/net/Proxy;
    :cond_18e
    move-object/from16 v19, v9

    move-object/from16 v17, v10

    .line 474
    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v10    # "proxy":Ljava/net/Proxy;
    .restart local v17    # "proxy":Ljava/net/Proxy;
    .restart local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_192
    :goto_192
    move-object/from16 v10, v17

    move-object/from16 v9, v19

    goto/16 :goto_bd

    .line 455
    .end local v17    # "proxy":Ljava/net/Proxy;
    .end local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v10    # "proxy":Ljava/net/Proxy;
    :catch_198
    move-exception v0

    move-object/from16 v19, v9

    move-object/from16 v17, v10

    .line 456
    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v10    # "proxy":Ljava/net/Proxy;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "proxy":Ljava/net/Proxy;
    .restart local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_19d
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 457
    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 458
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 459
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 460
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 461
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 462
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 463
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 465
    move-object/from16 v9, v19

    .end local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    if-nez v9, :cond_1bf

    .line 466
    new-instance v2, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v2, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v9, v2

    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v2, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    goto :goto_1c2

    .line 468
    .end local v2    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_1bf
    invoke-virtual {v9, v0}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 471
    :goto_1c2
    if-eqz p5, :cond_1ce

    invoke-virtual {v15, v0}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_1ce

    .line 474
    .end local v0    # "e":Ljava/io/IOException;
    move-object/from16 v10, v17

    goto/16 :goto_bd

    .line 472
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1ce
    throw v9

    .line 477
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "proxy":Ljava/net/Proxy;
    .restart local v10    # "proxy":Ljava/net/Proxy;
    :cond_1cf
    move-object/from16 v17, v10

    const/4 v5, 0x0

    move-object v10, v8

    .end local v10    # "proxy":Ljava/net/Proxy;
    .restart local v17    # "proxy":Ljava/net/Proxy;
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_209

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_209

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http socket connected to destination address from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 478
    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalPort()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 480
    :cond_209
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_249

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_249

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 481
    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 484
    :cond_249
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_257

    .line 485
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    goto :goto_25a

    .line 488
    :cond_257
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    .line 490
    :goto_25a
    iput v12, v1, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 491
    const/16 v0, 0x2710

    iput v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    .line 493
    if-nez v14, :cond_265

    .line 494
    iput-object v5, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    goto :goto_269

    .line 496
    :cond_265
    iget-object v0, v14, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 498
    :goto_269
    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    if-nez v0, :cond_2c2

    .line 499
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-boolean v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    const/4 v5, 0x0

    move-object v2, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v19, v9

    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    move-object/from16 v9, p4

    move-object v11, v10

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;-><init>(ZLcom/android/okhttp/Route;Lcom/android/okhttp/Request;IIILjava/util/List;Z)V

    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 501
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2a3

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 502
    :cond_2a3
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_317

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl_oriReq.connectTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_317

    .line 505
    .end local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_2c2
    move-object/from16 v19, v9

    .end local v9    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-boolean v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    iget-object v4, v1, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    const/4 v5, 0x0

    move-object v2, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;-><init>(ZLcom/android/okhttp/Route;Lcom/android/okhttp/Request;IIILjava/util/List;Z)V

    iput-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 507
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2f9

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl_redirect.connectionSpecs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 508
    :cond_2f9
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_317

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssl_redirect.connectTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget v3, v3, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 510
    :cond_317
    :goto_317
    return-void

    .line 413
    .end local v15    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v16    # "address":Lcom/android/okhttp/Address;
    .end local v17    # "proxy":Ljava/net/Proxy;
    .end local v19    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist connectSocket(ILjava/net/URI;)Ljava/net/Socket;
    .registers 15
    .param p1, "iNetType"    # I
    .param p2, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 760
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v1, "connecting socket for netType "

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and URI ........"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 761
    :cond_23
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_47

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 763
    :cond_47
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 764
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 766
    .local v0, "localAddr":Ljava/net/InetAddress;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " get address "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 767
    :cond_77
    if-nez v0, :cond_bc

    .line 768
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_93

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get local ip for interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 769
    :cond_93
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 770
    if-nez v0, :cond_bc

    .line 771
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_bb

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "also fail to get local ip for interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 772
    :cond_bb
    return-object v2

    .line 776
    :cond_bc
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/okhttp/internal/io/RealConnection;->getProxy(ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 777
    .local v1, "curProxy":Ljava/net/Proxy;
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v3, v3, p1

    invoke-direct {p0, v1, v3}, Lcom/android/okhttp/internal/io/RealConnection;->isSameProxy(Ljava/net/Proxy;Ljava/net/Proxy;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move v11, v3

    .line 778
    .local v11, "bProxyChanged":Z
    if-eqz v11, :cond_107

    .line 779
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_ff

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxy updated from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for netType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 780
    :cond_ff
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aput-object v1, v3, p1

    .line 781
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v2, v3, p1

    .line 784
    :cond_107
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v3

    aput v3, v2, p1

    .line 785
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v3, v2, p1

    if-eqz v3, :cond_12e

    .line 786
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    iget v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    new-array v6, v4, [Ljava/net/InetAddress;

    const/4 v4, 0x0

    aget-object v2, v2, p1

    aput-object v2, v6, v4

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v7, v2, p1

    move-object v4, p0

    move-object v8, v0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v2

    aput-object v2, v3, p1

    goto :goto_148

    .line 789
    :cond_12e
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/okhttp/internal/io/RealConnection;->getAllByName(ILjava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 790
    .local v2, "addresses":[Ljava/net/InetAddress;
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    iget v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v7, v4, p1

    move-object v4, p0

    move-object v6, v2

    move-object v8, v0

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v4

    aput-object v4, v3, p1

    .line 793
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    :goto_148
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 794
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    aget-object v6, v2, p1

    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v9, v3, p1

    const/4 v10, 0x0

    move-object v3, p0

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/okhttp/internal/io/RealConnection;->connectTlsForSecChunk(Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    aput-object v3, v2, p1

    .line 795
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_17c

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v2, :cond_17c

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "connect TLS for Second Chunk"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 796
    :cond_17c
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_19e

    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v2, :cond_19e

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect TLS for Second Chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 799
    :cond_19e
    iget v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    if-lez v2, :cond_1ab

    .line 801
    :try_start_1a2
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    aget-object v3, v3, p1

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1a9
    .catchall {:try_start_1a2 .. :try_end_1a9} :catchall_1aa

    goto :goto_1ab

    .line 803
    :catchall_1aa
    move-exception v2

    .line 805
    :cond_1ab
    :goto_1ab
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocket:[Ljava/net/Socket;

    aget-object v2, v2, p1

    return-object v2
.end method

.method public blacklist connectTlsForSecChunk(Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 28
    .param p1, "ssl_oriReq"    # Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .param p2, "ssl_redirect"    # Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .param p3, "sock"    # Ljava/net/Socket;
    .param p4, "proxy"    # Ljava/net/Proxy;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "bGetOriRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 519
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v7, "connectTlsForSecChunk()"

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 520
    :cond_1b
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_56

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_56

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connectTlsForSecChunk("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_58

    :cond_56
    move-object/from16 v9, p4

    .line 522
    :goto_58
    move-object/from16 v0, p1

    .line 524
    .local v0, "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    if-nez v6, :cond_66

    if-eqz v2, :cond_66

    iget-boolean v7, v2, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    if-eqz v7, :cond_66

    .line 525
    move-object/from16 v0, p2

    move-object v7, v0

    goto :goto_67

    .line 529
    :cond_66
    move-object v7, v0

    .end local v0    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .local v7, "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    :goto_67
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_87

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_87

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectTlsForSecChunk: sslInfo.connectionSpecs = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 530
    :cond_87
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_a5

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_a5

    iget-object v0, v1, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "usingSSL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 533
    :cond_a5
    iget-boolean v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->isSSL:Z

    if-nez v0, :cond_aa

    return-object v3

    .line 535
    :cond_aa
    iget-object v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v8

    .line 536
    .local v8, "address":Lcom/android/okhttp/Address;
    new-instance v0, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    iget-object v10, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionSpecs:Ljava/util/List;

    invoke-direct {v0, v10}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    move-object v10, v0

    .line 537
    .local v10, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    const/4 v0, 0x0

    move-object v11, v0

    .line 545
    .local v11, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :goto_ba
    iget-object v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual/range {p4 .. p4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v12, :cond_d9

    iget-object v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    if-eqz v0, :cond_d9

    .line 547
    iget v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->readTimeout:I

    iget v12, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->writeTimeout:I

    invoke-direct {v1, v0, v12}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 550
    :cond_d9
    const/4 v12, 0x0

    .line 552
    .local v12, "sslSocket":Ljavax/net/ssl/SSLSocket;
    const/4 v14, 0x1

    :try_start_db
    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    move-object v15, v0

    .line 554
    .local v15, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    if-eqz v15, :cond_1ae

    .line 559
    nop

    .line 560
    invoke-virtual {v15, v3, v4, v5, v14}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v12, v0

    .line 563
    invoke-virtual {v10, v12}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    move-object/from16 v16, v0

    .line 564
    .local v16, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v0
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_f4} :catch_1b6

    move-object/from16 v17, v0

    .line 565
    .local v17, "platform":Lcom/android/okhttp/internal/Platform;
    const/16 v18, 0x0

    .line 566
    .local v18, "handshake":Lcom/android/okhttp/Handshake;
    const/16 v19, 0x0

    .line 568
    .local v19, "alpnProtocol":Lcom/android/okhttp/Protocol;
    :try_start_fa
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 569
    iget-object v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    .line 570
    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v0
    :try_end_10a
    .catchall {:try_start_fa .. :try_end_10a} :catchall_1a6

    .line 569
    move-object/from16 v14, v17

    .end local v17    # "platform":Lcom/android/okhttp/internal/Platform;
    .local v14, "platform":Lcom/android/okhttp/internal/Platform;
    :try_start_10c
    invoke-virtual {v14, v12, v4, v0}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_112

    .line 568
    .end local v14    # "platform":Lcom/android/okhttp/internal/Platform;
    .restart local v17    # "platform":Lcom/android/okhttp/internal/Platform;
    :cond_110
    move-object/from16 v14, v17

    .line 573
    .end local v17    # "platform":Lcom/android/okhttp/internal/Platform;
    .restart local v14    # "platform":Lcom/android/okhttp/internal/Platform;
    :goto_112
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v0

    move-object/from16 v18, v0

    .line 576
    invoke-virtual/range {v16 .. v16}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 577
    invoke-virtual {v14, v12}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .local v17, "maybeProtocol":Ljava/lang/String;
    if-eqz v0, :cond_130

    .line 578
    invoke-static/range {v17 .. v17}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v0
    :try_end_12e
    .catchall {:try_start_10c .. :try_end_12e} :catchall_1a4

    move-object/from16 v19, v0

    .line 581
    .end local v17    # "maybeProtocol":Ljava/lang/String;
    :cond_130
    :try_start_130
    invoke-virtual {v14, v12}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 582
    nop

    .line 585
    iget-object v0, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v13

    invoke-interface {v0, v4, v13}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 596
    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v13

    .line 597
    invoke-virtual/range {v18 .. v18}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    .line 596
    invoke-virtual {v0, v13, v1}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 599
    return-object v12

    .line 586
    :cond_158
    invoke-virtual {v12}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 587
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 588
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v13, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not verified:\n    certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-static {v0}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n    subjectAltNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v0}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local v8    # "address":Lcom/android/okhttp/Address;
    .end local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p3    # "sock":Ljava/net/Socket;
    .end local p4    # "proxy":Ljava/net/Proxy;
    .end local p5    # "host":Ljava/lang/String;
    .end local p6    # "port":I
    .end local p7    # "bGetOriRequest":Z
    throw v13

    .line 581
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local v8    # "address":Lcom/android/okhttp/Address;
    .restart local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p3    # "sock":Ljava/net/Socket;
    .restart local p4    # "proxy":Ljava/net/Proxy;
    .restart local p5    # "host":Ljava/lang/String;
    .restart local p6    # "port":I
    .restart local p7    # "bGetOriRequest":Z
    :catchall_1a4
    move-exception v0

    goto :goto_1a9

    .end local v14    # "platform":Lcom/android/okhttp/internal/Platform;
    .local v17, "platform":Lcom/android/okhttp/internal/Platform;
    :catchall_1a6
    move-exception v0

    move-object/from16 v14, v17

    .end local v17    # "platform":Lcom/android/okhttp/internal/Platform;
    .restart local v14    # "platform":Lcom/android/okhttp/internal/Platform;
    :goto_1a9
    invoke-virtual {v14, v12}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 582
    nop

    .end local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local v8    # "address":Lcom/android/okhttp/Address;
    .end local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p3    # "sock":Ljava/net/Socket;
    .end local p4    # "proxy":Ljava/net/Proxy;
    .end local p5    # "host":Ljava/lang/String;
    .end local p6    # "port":I
    .end local p7    # "bGetOriRequest":Z
    throw v0

    .line 555
    .end local v14    # "platform":Lcom/android/okhttp/internal/Platform;
    .end local v16    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v18    # "handshake":Lcom/android/okhttp/Handshake;
    .end local v19    # "alpnProtocol":Lcom/android/okhttp/Protocol;
    .restart local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local v8    # "address":Lcom/android/okhttp/Address;
    .restart local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p3    # "sock":Ljava/net/Socket;
    .restart local p4    # "proxy":Ljava/net/Proxy;
    .restart local p5    # "host":Ljava/lang/String;
    .restart local p6    # "port":I
    .restart local p7    # "bGetOriRequest":Z
    :cond_1ae
    new-instance v0, Ljava/io/IOException;

    const-string v1, "sslSocketFactory is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local v8    # "address":Lcom/android/okhttp/Address;
    .end local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .end local p3    # "sock":Ljava/net/Socket;
    .end local p4    # "proxy":Ljava/net/Proxy;
    .end local p5    # "host":Ljava/lang/String;
    .end local p6    # "port":I
    .end local p7    # "bGetOriRequest":Z
    throw v0
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_1b6} :catch_1b6

    .line 601
    .end local v15    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v7    # "sslInfo":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local v8    # "address":Lcom/android/okhttp/Address;
    .restart local v10    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "ssl_oriReq":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p2    # "ssl_redirect":Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;
    .restart local p3    # "sock":Ljava/net/Socket;
    .restart local p4    # "proxy":Ljava/net/Proxy;
    .restart local p5    # "host":Ljava/lang/String;
    .restart local p6    # "port":I
    .restart local p7    # "bGetOriRequest":Z
    :catch_1b6
    move-exception v0

    .line 602
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, v7, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->connectionRetryEnable:Z

    if-eqz v1, :cond_1c3

    invoke-virtual {v10, v0}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_1c3

    const/4 v13, 0x1

    goto :goto_1c4

    :cond_1c3
    const/4 v13, 0x0

    :goto_1c4
    move v1, v13

    .line 603
    .local v1, "canRetry":Z
    invoke-static {v12}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 604
    invoke-static/range {p3 .. p3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 605
    if-nez v11, :cond_1d4

    .line 606
    new-instance v2, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v2, v0}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v11, v2

    .end local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .local v2, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    goto :goto_1d7

    .line 608
    .end local v2    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .restart local v11    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_1d4
    invoke-virtual {v11, v0}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 610
    :goto_1d7
    if-eqz v1, :cond_1df

    .line 614
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "canRetry":Z
    .end local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    goto/16 :goto_ba

    .line 611
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "canRetry":Z
    .restart local v12    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_1df
    throw v11
.end method

.method public blacklist extremeConditionConnect(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;
    .registers 29
    .param p1, "netType"    # I
    .param p2, "requestHeaders"    # Lcom/android/okhttp/Request;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "fullSize"    # J
    .param p9, "multiSock"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p10, "bTryAnother"    # Z
    .param p11, "bUpdateTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 825
    move-object/from16 v13, p0

    move/from16 v14, p1

    const/4 v15, 0x0

    .line 827
    .local v15, "sock":Ljava/net/Socket;
    :try_start_5
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1f

    iget-object v0, v13, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connecting socket for Main or Extrem :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 828
    :cond_1f
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnectInternal(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_35} :catch_36

    .line 841
    .end local v15    # "sock":Ljava/net/Socket;
    .local v0, "sock":Ljava/net/Socket;
    goto :goto_92

    .line 830
    .end local v0    # "sock":Ljava/net/Socket;
    .restart local v15    # "sock":Ljava/net/Socket;
    :catch_36
    move-exception v0

    .line 831
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_51

    iget-object v1, v13, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to connecting socket for Main or Extrem :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 832
    :cond_51
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_5a

    iget-object v1, v13, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 833
    :cond_5a
    if-eqz p10, :cond_93

    .line 834
    add-int/lit8 v1, v14, 0x1

    rem-int/lit8 v12, v1, 0x2

    .line 835
    .local v12, "otherInf":I
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_7a

    iget-object v1, v13, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting socket for Main or Extrem on the other inf:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 836
    :cond_7a
    move-object/from16 v1, p0

    move v2, v12

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p11

    move/from16 v16, v12

    .end local v12    # "otherInf":I
    .local v16, "otherInf":I
    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnectInternal(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v1

    .line 837
    .end local v15    # "sock":Ljava/net/Socket;
    .end local v16    # "otherInf":I
    .local v1, "sock":Ljava/net/Socket;
    move-object v0, v1

    .line 842
    .end local v1    # "sock":Ljava/net/Socket;
    .local v0, "sock":Ljava/net/Socket;
    :goto_92
    return-object v0

    .line 839
    .local v0, "e":Ljava/io/IOException;
    .restart local v15    # "sock":Ljava/net/Socket;
    :cond_93
    throw v0
.end method

.method public blacklist getHandshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .line 1650
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public blacklist getLocalAddr(I)Ljava/net/InetAddress;
    .registers 6
    .param p1, "netType"    # I

    .line 374
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1f

    .line 375
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal netType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 376
    :cond_1e
    return-object v0

    .line 379
    :cond_1f
    :try_start_1f
    iget v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    invoke-static {p1, v1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterface(II)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    .line 380
    .local v0, "addr":Ljava/net/InetAddress;
    return-object v0

    .line 382
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catchall_26
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 384
    :cond_30
    return-object v0
.end method

.method public blacklist getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;
    .registers 7
    .param p1, "netType"    # I
    .param p2, "trueLocalAddress"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1f

    .line 397
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal netType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 398
    :cond_1e
    return-object v0

    .line 401
    :cond_1f
    :try_start_1f
    iget v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mDestIPver:I

    invoke-static {p1, v1, p2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBInterface(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    .line 402
    .local v0, "addr":Ljava/net/InetAddress;
    return-object v0

    .line 404
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catchall_26
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 406
    :cond_30
    return-object v0
.end method

.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .line 1662
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    :goto_7
    return-object v0
.end method

.method public blacklist getProxy(I)Ljava/net/Proxy;
    .registers 3
    .param p1, "netType"    # I

    .line 240
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getRoute()Lcom/android/okhttp/Route;
    .registers 2

    .line 1595
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    return-object v0
.end method

.method public blacklist getSocket()Ljava/net/Socket;
    .registers 2

    .line 1607
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method blacklist isConnected()Z
    .registers 2

    .line 1591
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isHealthy(Z)Z
    .registers 7
    .param p1, "doExtensiveChecks"    # Z

    .line 1619
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4f

    .line 1623
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 1624
    return v2

    .line 1627
    :cond_20
    if-eqz p1, :cond_4e

    .line 1629
    :try_start_22
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_28} :catch_4d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_4b

    .line 1631
    .local v0, "readTimeout":I
    :try_start_28
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1632
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_43

    if-eqz v3, :cond_3c

    .line 1633
    nop

    .line 1637
    :try_start_36
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1633
    return v1

    .line 1635
    :cond_3c
    nop

    .line 1637
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1635
    return v2

    .line 1637
    :catchall_43
    move-exception v3

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1638
    nop

    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_4b
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_4b} :catch_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4b} :catch_4b

    .line 1641
    .end local v0    # "readTimeout":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "doExtensiveChecks":Z
    :catch_4b
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 1639
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4d
    move-exception v0

    .line 1646
    :cond_4e
    return v2

    .line 1620
    :cond_4f
    :goto_4f
    return v1
.end method

.method public blacklist isMultiSocket()Z
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isMultiplexed()Z
    .registers 2

    .line 1658
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isSSLSocket()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->isSSL:Z

    return v0
.end method

.method public blacklist isValidSocketForMultiRAT()Z
    .registers 8

    .line 195
    invoke-virtual {p0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 196
    .local v0, "sock":Ljava/net/Socket;
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->isShipBuild()Z

    move-result v1

    .line 197
    .local v1, "SHIP_BUILD":Z
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->isSKTBuild()Z

    move-result v2

    .line 198
    .local v2, "SKT_BUILD":Z
    const/4 v3, 0x0

    if-nez v0, :cond_10

    return v3

    .line 199
    :cond_10
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_43

    .line 200
    :cond_23
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v6, :cond_3b

    return v5

    .line 201
    :cond_3b
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 202
    .local v4, "addr":Ljava/net/InetAddress;
    if-nez v4, :cond_42

    return v3

    .line 203
    :cond_42
    return v5

    .line 199
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_43
    :goto_43
    return v3
.end method

.method public blacklist sampleRequestConnect(ILcom/android/okhttp/Request;JJ)Lcom/android/okhttp/Response;
    .registers 43
    .param p1, "netType"    # I
    .param p2, "oriReqHeaders"    # Lcom/android/okhttp/Request;
    .param p3, "start"    # J
    .param p5, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 1130
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    const/4 v0, 0x0

    .line 1132
    .local v0, "socketCandidate":Ljava/net/Socket;
    invoke-virtual/range {p0 .. p1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(I)Ljava/net/InetAddress;

    move-result-object v15

    .line 1133
    .local v15, "localAddr":Ljava/net/InetAddress;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_2f

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting socket for sample request for netType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and get IP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1134
    :cond_2f
    if-eqz v15, :cond_565

    .line 1137
    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1138
    .local v8, "socketName":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aget-object v1, v1, v10

    .line 1139
    .local v1, "requestHeaders":Lcom/android/okhttp/Request;
    if-nez v1, :cond_41

    .line 1140
    move-object/from16 v1, p2

    move-object v7, v1

    goto :goto_42

    .line 1139
    :cond_41
    move-object v7, v1

    .line 1142
    .end local v1    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v7, "requestHeaders":Lcom/android/okhttp/Request;
    :goto_42
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v1

    const-string v6, "Host"

    invoke-virtual {v1, v6}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1143
    .local v5, "host":Ljava/lang/String;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_6e

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening Socket for sending sample request by socket :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " config :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1146
    :cond_6e
    const/4 v1, 0x1

    .line 1149
    .local v1, "notOkResponse":Z
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    .line 1151
    .local v4, "range":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1154
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v16

    .line 1156
    .local v16, "uri":Ljava/net/URI;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 1158
    .local v2, "newUrl":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 1160
    .local v3, "previousUrl":Ljava/net/URL;
    move-object/from16 v17, v0

    .end local v0    # "socketCandidate":Ljava/net/Socket;
    .local v17, "socketCandidate":Ljava/net/Socket;
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "location":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1163
    .local v18, "rsp":Lcom/android/okhttp/Response;
    const/16 v19, 0x0

    .line 1164
    .local v19, "redirectionCount":I
    move-object/from16 v20, v0

    .end local v0    # "location":Ljava/lang/String;
    .local v20, "location":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    move/from16 v21, v1

    .end local v1    # "notOkResponse":Z
    .local v21, "notOkResponse":Z
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v2

    .end local v2    # "newUrl":Ljava/net/URL;
    .local v22, "newUrl":Ljava/net/URL;
    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    move-object/from16 v35, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v22

    move/from16 v22, v19

    move-object/from16 v19, v35

    .line 1165
    .local v0, "newHeader":Lcom/android/okhttp/Request;
    .local v3, "newUrl":Ljava/net/URL;
    .local v18, "previousUrl":Ljava/net/URL;
    .local v19, "rsp":Lcom/android/okhttp/Response;
    .local v22, "redirectionCount":I
    :goto_be
    if-eqz v21, :cond_55c

    .line 1166
    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    move-result-object v23

    .line 1167
    .local v23, "url":Lcom/android/okhttp/HttpUrl;
    const/16 v24, 0x0

    if-nez v23, :cond_c9

    .line 1168
    return-object v24

    .line 1170
    :cond_c9
    invoke-virtual/range {v23 .. v23}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v25

    .line 1171
    .local v25, "newUri":Ljava/net/URI;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_fa

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v4

    .end local v4    # "range":Ljava/lang/StringBuffer;
    .local v26, "range":Ljava/lang/StringBuffer;
    const-string v4, "connecting to url "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with protocol "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_fc

    .end local v26    # "range":Ljava/lang/StringBuffer;
    .restart local v4    # "range":Ljava/lang/StringBuffer;
    :cond_fa
    move-object/from16 v26, v4

    .line 1172
    .end local v4    # "range":Ljava/lang/StringBuffer;
    .restart local v26    # "range":Ljava/lang/StringBuffer;
    :goto_fc
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_11e

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "header in sampleRequestConnect before update host: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1173
    :cond_11e
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/okhttp/Request$Builder;->url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v4

    .line 1174
    .end local v0    # "newHeader":Lcom/android/okhttp/Request;
    .local v4, "newHeader":Lcom/android/okhttp/Request;
    invoke-virtual {v4}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v2

    .line 1175
    .local v2, "h":Lcom/android/okhttp/Headers;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lcom/android/okhttp/internal/io/RealConnection;->getProxy(ILjava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 1176
    .local v1, "curProxy":Ljava/net/Proxy;
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v0, v0, v10

    invoke-direct {v9, v1, v0}, Lcom/android/okhttp/internal/io/RealConnection;->isSameProxy(Ljava/net/Proxy;Ljava/net/Proxy;)Z

    move-result v0

    move-object/from16 v27, v3

    .end local v3    # "newUrl":Ljava/net/URL;
    .local v27, "newUrl":Ljava/net/URL;
    const/4 v3, 0x1

    xor-int/2addr v0, v3

    move/from16 v28, v0

    .line 1177
    .local v28, "bProxyChanged":Z
    const-string v0, " to "

    if-eqz v28, :cond_18e

    .line 1178
    sget-boolean v29, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v29, :cond_181

    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-object/from16 v30, v4

    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .local v30, "newHeader":Lcom/android/okhttp/Request;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v5

    .end local v5    # "host":Ljava/lang/String;
    .local v31, "host":Ljava/lang/String;
    const-string v5, "proxy updated from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aget-object v5, v5, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for netType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_185

    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .end local v31    # "host":Ljava/lang/String;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "host":Ljava/lang/String;
    :cond_181
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    .line 1179
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "host":Ljava/lang/String;
    .restart local v30    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v31    # "host":Ljava/lang/String;
    :goto_185
    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    aput-object v1, v3, v10

    .line 1180
    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v24, v3, v10

    goto :goto_192

    .line 1177
    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .end local v31    # "host":Ljava/lang/String;
    .restart local v4    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v5    # "host":Ljava/lang/String;
    :cond_18e
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    .line 1182
    .end local v4    # "newHeader":Lcom/android/okhttp/Request;
    .end local v5    # "host":Ljava/lang/String;
    .restart local v30    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v31    # "host":Ljava/lang/String;
    :goto_192
    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    invoke-static/range {v25 .. v25}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v4

    aput v4, v3, v10

    .line 1183
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/io/RealConnection;->getProtocol()Lcom/android/okhttp/Protocol;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;Lcom/android/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v5

    .line 1184
    .local v5, "requestLine":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/okhttp/internal/http/MultiratUtil;->getRequestHeadersBytes(Lcom/android/okhttp/Headers;Ljava/lang/String;)[B

    move-result-object v4

    .line 1185
    .local v4, "headBytes":[B
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_1d2

    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-object/from16 v32, v1

    .end local v1    # "curProxy":Ljava/net/Proxy;
    .local v32, "curProxy":Ljava/net/Proxy;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v2

    .end local v2    # "h":Lcom/android/okhttp/Headers;
    .local v33, "h":Lcom/android/okhttp/Headers;
    const-string v2, "writeRequestHeaders for sampleRequestConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    move-object/from16 v34, v5

    .end local v5    # "requestLine":Ljava/lang/String;
    .local v34, "requestLine":Ljava/lang/String;
    sget-object v5, Lcom/android/okhttp/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_1d8

    .end local v32    # "curProxy":Ljava/net/Proxy;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "requestLine":Ljava/lang/String;
    .restart local v1    # "curProxy":Ljava/net/Proxy;
    .restart local v2    # "h":Lcom/android/okhttp/Headers;
    .restart local v5    # "requestLine":Ljava/lang/String;
    :cond_1d2
    move-object/from16 v32, v1

    move-object/from16 v33, v2

    move-object/from16 v34, v5

    .line 1187
    .end local v1    # "curProxy":Ljava/net/Proxy;
    .end local v2    # "h":Lcom/android/okhttp/Headers;
    .end local v5    # "requestLine":Ljava/lang/String;
    .restart local v32    # "curProxy":Ljava/net/Proxy;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "requestLine":Ljava/lang/String;
    :goto_1d8
    :try_start_1d8
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1da} :catch_532

    if-eqz v1, :cond_204

    :try_start_1dc
    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting socketName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1f2} :catch_1f3

    goto :goto_204

    .line 1215
    :catch_1f3
    move-exception v0

    move-object v11, v4

    move-object v12, v8

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    move-object/from16 v29, v32

    move-object/from16 v32, v33

    move-object/from16 v27, v34

    move-object/from16 v34, v7

    goto/16 :goto_541

    .line 1188
    :cond_204
    :goto_204
    :try_start_204
    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v1, v1, v10
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_208} :catch_532

    if-eqz v1, :cond_255

    .line 1189
    :try_start_20a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->startSampleSocketCreation:J

    .line 1190
    iget v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    iget-object v5, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v5, v5, v10

    aput-object v5, v3, v1

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v5, v1, v10
    :try_end_220
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_220} :catch_244

    move-object/from16 v29, v32

    .end local v32    # "curProxy":Ljava/net/Proxy;
    .local v29, "curProxy":Ljava/net/Proxy;
    move-object/from16 v1, p0

    move-object/from16 v32, v33

    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .local v32, "h":Lcom/android/okhttp/Headers;
    move-object/from16 v13, v27

    .end local v27    # "newUrl":Ljava/net/URL;
    .local v13, "newUrl":Ljava/net/URL;
    move-object v11, v4

    move-object/from16 v14, v30

    .end local v4    # "headBytes":[B
    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .local v11, "headBytes":[B
    .local v14, "newHeader":Lcom/android/okhttp/Request;
    move v4, v5

    move-object/from16 v12, v31

    move-object/from16 v27, v34

    .end local v31    # "host":Ljava/lang/String;
    .end local v34    # "requestLine":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    .local v27, "requestLine":Ljava/lang/String;
    move-object v5, v15

    move-object/from16 v30, v6

    move-object/from16 v6, v29

    :try_start_235
    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v1
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_239} :catch_23c

    move-object/from16 v17, v1

    .end local v17    # "socketCandidate":Ljava/net/Socket;
    .local v1, "socketCandidate":Ljava/net/Socket;
    goto :goto_283

    .line 1215
    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .restart local v17    # "socketCandidate":Ljava/net/Socket;
    :catch_23c
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v31, v12

    move-object v12, v8

    goto/16 :goto_541

    .end local v11    # "headBytes":[B
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "newUrl":Ljava/net/URL;
    .end local v14    # "newHeader":Lcom/android/okhttp/Request;
    .end local v29    # "curProxy":Ljava/net/Proxy;
    .restart local v4    # "headBytes":[B
    .local v27, "newUrl":Ljava/net/URL;
    .restart local v30    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v31    # "host":Ljava/lang/String;
    .local v32, "curProxy":Ljava/net/Proxy;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "requestLine":Ljava/lang/String;
    :catch_244
    move-exception v0

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    move-object/from16 v29, v32

    move-object/from16 v32, v33

    move-object/from16 v27, v34

    move-object v11, v4

    move-object/from16 v34, v7

    move-object v12, v8

    .end local v4    # "headBytes":[B
    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .end local v31    # "host":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "requestLine":Ljava/lang/String;
    .restart local v11    # "headBytes":[B
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v14    # "newHeader":Lcom/android/okhttp/Request;
    .local v27, "requestLine":Ljava/lang/String;
    .restart local v29    # "curProxy":Ljava/net/Proxy;
    .local v32, "h":Lcom/android/okhttp/Headers;
    goto/16 :goto_541

    .line 1193
    .end local v11    # "headBytes":[B
    .end local v12    # "host":Ljava/lang/String;
    .end local v13    # "newUrl":Ljava/net/URL;
    .end local v14    # "newHeader":Lcom/android/okhttp/Request;
    .end local v29    # "curProxy":Ljava/net/Proxy;
    .restart local v4    # "headBytes":[B
    .local v27, "newUrl":Ljava/net/URL;
    .restart local v30    # "newHeader":Lcom/android/okhttp/Request;
    .restart local v31    # "host":Ljava/lang/String;
    .local v32, "curProxy":Ljava/net/Proxy;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .restart local v34    # "requestLine":Ljava/lang/String;
    :cond_255
    move-object v11, v4

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    move-object/from16 v12, v31

    move-object/from16 v29, v32

    move-object/from16 v32, v33

    move-object/from16 v27, v34

    move-object/from16 v30, v6

    .end local v4    # "headBytes":[B
    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .end local v31    # "host":Ljava/lang/String;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "requestLine":Ljava/lang/String;
    .restart local v11    # "headBytes":[B
    .restart local v12    # "host":Ljava/lang/String;
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v14    # "newHeader":Lcom/android/okhttp/Request;
    .local v27, "requestLine":Ljava/lang/String;
    .restart local v29    # "curProxy":Ljava/net/Proxy;
    .local v32, "h":Lcom/android/okhttp/Headers;
    :try_start_264
    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v10, v1}, Lcom/android/okhttp/internal/io/RealConnection;->getAllByName(ILjava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 1194
    .local v3, "addresses":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->startSampleSocketCreation:J

    .line 1195
    iget v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->connTimeout:I

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v4, v1, v10

    move-object/from16 v1, p0

    move-object v5, v15

    move-object/from16 v6, v29

    invoke-direct/range {v1 .. v6}, Lcom/android/okhttp/internal/io/RealConnection;->connect(I[Ljava/net/InetAddress;ILjava/net/InetAddress;Ljava/net/Proxy;)Ljava/net/Socket;

    move-result-object v1
    :try_end_281
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_281} :catch_52b

    move-object/from16 v17, v1

    .line 1199
    .end local v3    # "addresses":[Ljava/net/InetAddress;
    :goto_283
    :try_start_283
    const-string v1, "https"

    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 1200
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->ssl_redirect:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    .line 1201
    invoke-virtual/range {v25 .. v25}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    aget v31, v1, v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v33
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_2a7} :catch_511

    .line 1200
    move-object/from16 v1, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v29

    move-object/from16 v34, v7

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v34, "requestHeaders":Lcom/android/okhttp/Request;
    move/from16 v7, v31

    move-object/from16 v31, v12

    move-object v12, v8

    .end local v8    # "socketName":Ljava/lang/String;
    .local v12, "socketName":Ljava/lang/String;
    .restart local v31    # "host":Ljava/lang/String;
    move/from16 v8, v33

    :try_start_2b6
    invoke-virtual/range {v1 .. v8}, Lcom/android/okhttp/internal/io/RealConnection;->connectTlsForSecChunk(Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2ba} :catch_2da

    .line 1202
    .end local v17    # "socketCandidate":Ljava/net/Socket;
    .restart local v1    # "socketCandidate":Ljava/net/Socket;
    :try_start_2ba
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2e4

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect TLS for Sec Chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2d4} :catch_2d5

    goto :goto_2e4

    .line 1205
    :catch_2d5
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_517

    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .restart local v17    # "socketCandidate":Ljava/net/Socket;
    :catch_2da
    move-exception v0

    goto/16 :goto_517

    .line 1199
    .end local v31    # "host":Ljava/lang/String;
    .end local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    :cond_2dd
    move-object/from16 v34, v7

    move-object/from16 v31, v12

    move-object v12, v8

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v12, "socketName":Ljava/lang/String;
    .restart local v31    # "host":Ljava/lang/String;
    .restart local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    move-object/from16 v1, v17

    .line 1211
    .end local v17    # "socketCandidate":Ljava/net/Socket;
    .restart local v1    # "socketCandidate":Ljava/net/Socket;
    :cond_2e4
    :goto_2e4
    nop

    .line 1213
    :try_start_2e5
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_2e7
    .catch Ljava/io/IOException; {:try_start_2e5 .. :try_end_2e7} :catch_50d

    const-string v3, " for net type "

    const-string v4, ", socket addr is "

    if-eqz v2, :cond_30f

    :try_start_2ed
    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside try after sample connecting with:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_30f
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_30f} :catch_50d

    .line 1219
    :cond_30f
    nop

    .line 1221
    :try_start_310
    iget v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    if-lez v2, :cond_33f

    .line 1222
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_33a

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set socket read time out from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1225
    :cond_33a
    iget v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_33f
    .catchall {:try_start_310 .. :try_end_33f} :catchall_340

    .line 1229
    :cond_33f
    goto :goto_34a

    .line 1227
    :catchall_340
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_34a

    iget-object v2, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1232
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_34a
    :goto_34a
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1233
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 1235
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V

    .line 1237
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiratUtil;->readResponseHeaders(Ljava/io/InputStream;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v19

    .line 1239
    :try_start_361
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_396

    .line 1240
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1241
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    if-eqz v0, :cond_396

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_396

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/okhttp/Headers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V
    :try_end_394
    .catchall {:try_start_361 .. :try_end_394} :catchall_395

    goto :goto_396

    .line 1244
    :catchall_395
    move-exception v0

    :cond_396
    :goto_396
    nop

    .line 1245
    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->code()I

    move-result v0

    .line 1246
    .local v0, "responseCode":I
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_3cd

    iget-object v6, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpConnection startOffset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v2

    move-object v8, v3

    move-wide/from16 v2, p3

    .end local v2    # "in":Ljava/io/InputStream;
    .local v17, "in":Ljava/io/InputStream;
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " endOffset:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p5

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " response code: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_3d0

    .end local v17    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_3cd
    move-object/from16 v17, v2

    move-object v8, v3

    .line 1247
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v17    # "in":Ljava/io/InputStream;
    :goto_3d0
    packed-switch v0, :pswitch_data_57e

    .line 1273
    move/from16 v24, v0

    .end local v0    # "responseCode":I
    .local v24, "responseCode":I
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aget-object v0, v0, v10

    if-nez v0, :cond_4b4

    .line 1274
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aput-object v14, v0, v10

    goto/16 :goto_4b4

    .line 1252
    .end local v24    # "responseCode":I
    .restart local v0    # "responseCode":I
    :pswitch_3e5
    add-int/lit8 v2, v22, 0x1

    .end local v22    # "redirectionCount":I
    .local v2, "redirectionCount":I
    sget v3, Lcom/android/okhttp/internal/http/HttpEngine;->MAX_REDIRECTS:I

    if-gt v2, v3, :cond_4aa

    .line 1255
    invoke-virtual/range {v19 .. v19}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v3

    const-string v4, "Location"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1256
    .end local v20    # "location":Ljava/lang/String;
    .local v3, "location":Ljava/lang/String;
    if-nez v3, :cond_403

    .line 1257
    const/4 v4, 0x0

    .line 1258
    .end local v21    # "notOkResponse":Z
    .local v4, "notOkResponse":Z
    move/from16 v24, v0

    move/from16 v22, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move-object v3, v13

    goto/16 :goto_4f2

    .line 1260
    .end local v4    # "notOkResponse":Z
    .restart local v21    # "notOkResponse":Z
    :cond_403
    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v24, v4, v10

    .line 1261
    iget-object v4, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    aput-object v24, v4, v10

    .line 1262
    move-object v4, v13

    .line 1263
    .end local v18    # "previousUrl":Ljava/net/URL;
    .local v4, "previousUrl":Ljava/net/URL;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1264
    .end local v13    # "newUrl":Ljava/net/URL;
    .local v6, "newUrl":Ljava/net/URL;
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v8, ", newPro="

    if-eqz v7, :cond_444

    sget-boolean v7, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-eqz v7, :cond_444

    iget-object v7, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v0

    .end local v0    # "responseCode":I
    .restart local v24    # "responseCode":I
    const-string v0, "redirected to new address, prevPro="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_446

    .end local v24    # "responseCode":I
    .restart local v0    # "responseCode":I
    :cond_444
    move/from16 v24, v0

    .line 1265
    .end local v0    # "responseCode":I
    .restart local v24    # "responseCode":I
    :goto_446
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_47e

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_47e

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "redirected to "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", prevPro="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1266
    :cond_47e
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a2

    .line 1267
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_497

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v7, "redirected to a diffrent schema, not support"

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1268
    :cond_497
    const/4 v0, 0x0

    .line 1269
    .end local v21    # "notOkResponse":Z
    .local v0, "notOkResponse":Z
    move/from16 v21, v0

    move/from16 v22, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v3, v6

    goto :goto_4f2

    .line 1266
    .end local v0    # "notOkResponse":Z
    .restart local v21    # "notOkResponse":Z
    :cond_4a2
    move/from16 v22, v2

    move-object/from16 v20, v3

    move-object/from16 v18, v4

    move-object v3, v6

    goto :goto_4f2

    .line 1253
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "previousUrl":Ljava/net/URL;
    .end local v6    # "newUrl":Ljava/net/URL;
    .end local v24    # "responseCode":I
    .local v0, "responseCode":I
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v18    # "previousUrl":Ljava/net/URL;
    .restart local v20    # "location":Ljava/lang/String;
    :cond_4aa
    move/from16 v24, v0

    .end local v0    # "responseCode":I
    .restart local v24    # "responseCode":I
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Too many redirects"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    .end local v2    # "redirectionCount":I
    .restart local v22    # "redirectionCount":I
    :cond_4b4
    :goto_4b4
    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v2, v0, v10

    if-nez v2, :cond_4c0

    .line 1276
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v10

    .line 1277
    :cond_4c0
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4ee

    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SHIP_BUILD:Z

    if-nez v0, :cond_4ee

    iget-object v0, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set socket dest IP for local IP :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1279
    :cond_4ee
    const/4 v0, 0x0

    move/from16 v21, v0

    move-object v3, v13

    .line 1282
    .end local v13    # "newUrl":Ljava/net/URL;
    .local v3, "newUrl":Ljava/net/URL;
    :goto_4f2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 1283
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1284
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1285
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v11    # "headBytes":[B
    .end local v17    # "in":Ljava/io/InputStream;
    .end local v23    # "url":Lcom/android/okhttp/HttpUrl;
    .end local v24    # "responseCode":I
    .end local v25    # "newUri":Ljava/net/URI;
    .end local v27    # "requestLine":Ljava/lang/String;
    .end local v28    # "bProxyChanged":Z
    .end local v29    # "curProxy":Ljava/net/Proxy;
    .end local v32    # "h":Lcom/android/okhttp/Headers;
    move-object/from16 v17, v1

    move-object v8, v12

    move-object v0, v14

    move-object/from16 v4, v26

    move-object/from16 v6, v30

    move-object/from16 v5, v31

    move-object/from16 v7, v34

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    goto/16 :goto_be

    .line 1215
    .end local v3    # "newUrl":Ljava/net/URL;
    .restart local v11    # "headBytes":[B
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v23    # "url":Lcom/android/okhttp/HttpUrl;
    .restart local v25    # "newUri":Ljava/net/URI;
    .restart local v27    # "requestLine":Ljava/lang/String;
    .restart local v28    # "bProxyChanged":Z
    .restart local v29    # "curProxy":Ljava/net/Proxy;
    .restart local v32    # "h":Lcom/android/okhttp/Headers;
    :catch_50d
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_541

    .line 1205
    .end local v1    # "socketCandidate":Ljava/net/Socket;
    .end local v31    # "host":Ljava/lang/String;
    .end local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    .local v17, "socketCandidate":Ljava/net/Socket;
    :catch_511
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v31, v12

    move-object v12, v8

    .line 1206
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v0, "ex":Ljava/io/IOException;
    .local v12, "socketName":Ljava/lang/String;
    .restart local v31    # "host":Ljava/lang/String;
    .restart local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    :goto_517
    :try_start_517
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_520

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1207
    :cond_520
    invoke-static/range {v17 .. v17}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V
    :try_end_523
    .catch Ljava/io/IOException; {:try_start_517 .. :try_end_523} :catch_529

    .line 1208
    const/16 v17, 0x0

    .line 1209
    const/16 v21, 0x0

    .line 1210
    move-object v0, v14

    goto :goto_564

    .line 1215
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_529
    move-exception v0

    goto :goto_541

    .end local v31    # "host":Ljava/lang/String;
    .end local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    :catch_52b
    move-exception v0

    move-object/from16 v34, v7

    move-object/from16 v31, v12

    move-object v12, v8

    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "socketName":Ljava/lang/String;
    .local v12, "socketName":Ljava/lang/String;
    .restart local v31    # "host":Ljava/lang/String;
    .restart local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    goto :goto_541

    .end local v11    # "headBytes":[B
    .end local v12    # "socketName":Ljava/lang/String;
    .end local v13    # "newUrl":Ljava/net/URL;
    .end local v14    # "newHeader":Lcom/android/okhttp/Request;
    .end local v29    # "curProxy":Ljava/net/Proxy;
    .local v4, "headBytes":[B
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "socketName":Ljava/lang/String;
    .local v27, "newUrl":Ljava/net/URL;
    .restart local v30    # "newHeader":Lcom/android/okhttp/Request;
    .local v32, "curProxy":Ljava/net/Proxy;
    .restart local v33    # "h":Lcom/android/okhttp/Headers;
    .local v34, "requestLine":Ljava/lang/String;
    :catch_532
    move-exception v0

    move-object v11, v4

    move-object v12, v8

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    move-object/from16 v29, v32

    move-object/from16 v32, v33

    move-object/from16 v27, v34

    move-object/from16 v34, v7

    .line 1216
    .end local v4    # "headBytes":[B
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "socketName":Ljava/lang/String;
    .end local v30    # "newHeader":Lcom/android/okhttp/Request;
    .end local v33    # "h":Lcom/android/okhttp/Headers;
    .local v0, "e":Ljava/io/IOException;
    .restart local v11    # "headBytes":[B
    .restart local v12    # "socketName":Ljava/lang/String;
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v14    # "newHeader":Lcom/android/okhttp/Request;
    .local v27, "requestLine":Ljava/lang/String;
    .restart local v29    # "curProxy":Ljava/net/Proxy;
    .local v32, "h":Lcom/android/okhttp/Headers;
    .local v34, "requestHeaders":Lcom/android/okhttp/Request;
    :goto_541
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_55b

    iget-object v1, v9, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting socketName insside exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1217
    :cond_55b
    throw v0

    .line 1165
    .end local v11    # "headBytes":[B
    .end local v12    # "socketName":Ljava/lang/String;
    .end local v13    # "newUrl":Ljava/net/URL;
    .end local v14    # "newHeader":Lcom/android/okhttp/Request;
    .end local v23    # "url":Lcom/android/okhttp/HttpUrl;
    .end local v25    # "newUri":Ljava/net/URI;
    .end local v26    # "range":Ljava/lang/StringBuffer;
    .end local v27    # "requestLine":Ljava/lang/String;
    .end local v28    # "bProxyChanged":Z
    .end local v29    # "curProxy":Ljava/net/Proxy;
    .end local v31    # "host":Ljava/lang/String;
    .end local v32    # "h":Lcom/android/okhttp/Headers;
    .end local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v0, "newHeader":Lcom/android/okhttp/Request;
    .restart local v3    # "newUrl":Ljava/net/URL;
    .local v4, "range":Ljava/lang/StringBuffer;
    .local v5, "host":Ljava/lang/String;
    .restart local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .restart local v8    # "socketName":Ljava/lang/String;
    :cond_55c
    move-object v13, v3

    move-object/from16 v26, v4

    move-object/from16 v31, v5

    move-object/from16 v34, v7

    move-object v12, v8

    .line 1286
    .end local v3    # "newUrl":Ljava/net/URL;
    .end local v4    # "range":Ljava/lang/StringBuffer;
    .end local v5    # "host":Ljava/lang/String;
    .end local v7    # "requestHeaders":Lcom/android/okhttp/Request;
    .end local v8    # "socketName":Ljava/lang/String;
    .restart local v12    # "socketName":Ljava/lang/String;
    .restart local v13    # "newUrl":Ljava/net/URL;
    .restart local v26    # "range":Ljava/lang/StringBuffer;
    .restart local v31    # "host":Ljava/lang/String;
    .restart local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    :goto_564
    return-object v19

    .line 1135
    .end local v12    # "socketName":Ljava/lang/String;
    .end local v13    # "newUrl":Ljava/net/URL;
    .end local v16    # "uri":Ljava/net/URI;
    .end local v17    # "socketCandidate":Ljava/net/Socket;
    .end local v18    # "previousUrl":Ljava/net/URL;
    .end local v19    # "rsp":Lcom/android/okhttp/Response;
    .end local v20    # "location":Ljava/lang/String;
    .end local v21    # "notOkResponse":Z
    .end local v22    # "redirectionCount":I
    .end local v26    # "range":Ljava/lang/StringBuffer;
    .end local v31    # "host":Ljava/lang/String;
    .end local v34    # "requestHeaders":Lcom/android/okhttp/Request;
    .local v0, "socketCandidate":Ljava/net/Socket;
    :cond_565
    move-object/from16 v17, v0

    .end local v0    # "socketCandidate":Ljava/net/Socket;
    .restart local v17    # "socketCandidate":Ljava/net/Socket;
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find local Address for netType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_57e
    .packed-switch 0x12c
        :pswitch_3e5
        :pswitch_3e5
        :pswitch_3e5
        :pswitch_3e5
    .end packed-switch
.end method

.method public blacklist setLogger(Lcom/android/okhttp/internal/http/MultiratLog;)V
    .registers 2
    .param p1, "log"    # Lcom/android/okhttp/internal/http/MultiratLog;

    .line 179
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 180
    return-void
.end method

.method public blacklist setMainSocketDestIP(I)V
    .registers 4
    .param p1, "mainID"    # I

    .line 350
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    aput-object v1, v0, p1

    .line 351
    return-void
.end method

.method public blacklist setMainTimeout(I)V
    .registers 2
    .param p1, "readTimeout"    # I

    .line 365
    iput p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 366
    return-void
.end method

.method public blacklist setMultiSocketInputStream(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Ljava/net/URI;)V
    .registers 8
    .param p1, "is"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p2, "uri"    # Ljava/net/URI;

    .line 211
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiSocketInputStream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 212
    :cond_1a
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    .line 214
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 216
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_75

    .line 217
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    aput-object v4, v0, v3

    .line 218
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v4, v0, v1

    .line 219
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    aput v4, v0, v3

    .line 220
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v4

    aput v4, v0, v1

    .line 221
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v3

    .line 222
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v2, v0, v1

    goto :goto_a5

    .line 225
    :cond_75
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    aput-object v4, v0, v1

    .line 226
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->mProxy:[Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v4, v0, v3

    .line 227
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    aput v4, v0, v1

    .line 228
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->destPorts:[I

    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v4

    aput v4, v0, v3

    .line 229
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v0, v1

    .line 230
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSockDestAddr:[Ljava/net/InetAddress;

    aput-object v2, v0, v3

    .line 232
    :goto_a5
    return-void
.end method

.method public blacklist setSoTimeout(I)V
    .registers 5
    .param p1, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 359
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpConnection setSoTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 360
    :cond_1a
    iput p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mainTimeout:I

    .line 361
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 362
    return-void
.end method

.method public blacklist setSocket(Ljava/net/Socket;)V
    .registers 5
    .param p1, "s"    # Ljava/net/Socket;

    .line 1290
    sget-boolean v0, Lcom/android/okhttp/internal/http/HttpEngine;->SMARTBONDING_ENABLED:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->multiSocketStream:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    if-eqz v0, :cond_5b

    .line 1291
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main socket is changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1292
    :cond_22
    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1293
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_5b

    .line 1296
    :cond_3f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main socket is not switched since the new socket is not active, keep the socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1299
    :cond_5b
    :goto_5b
    return-void
.end method

.method public blacklist setTagUid(II)V
    .registers 6
    .param p1, "tag"    # I
    .param p2, "uid"    # I

    .line 244
    iput p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->mTag:I

    .line 245
    iput p2, p0, Lcom/android/okhttp/internal/io/RealConnection;->mUid:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->bTagUidSet:Z

    .line 247
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set socket tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 248
    :cond_29
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1667
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1669
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 1671
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_5d

    :cond_5b
    const-string v1, "none"

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    return-object v0
.end method

.method public blacklist updateRequest(Lcom/android/okhttp/Request;)V
    .registers 4
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 1303
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    if-nez v0, :cond_d

    .line 1304
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iput-object p1, v0, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    goto :goto_18

    .line 1306
    :cond_d
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "Can\'t Update Request. Because sslinfo is null"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1308
    :cond_18
    :goto_18
    return-void
.end method
