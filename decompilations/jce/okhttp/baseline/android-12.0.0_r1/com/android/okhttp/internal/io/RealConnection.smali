.class public final Lcom/android/okhttp/internal/io/RealConnection;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lcom/android/okhttp/Connection;


# static fields
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

.field public volatile blacklist framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private blacklist handshake:Lcom/android/okhttp/Handshake;

.field public blacklist idleAtNanos:J

.field public blacklist noNewStreams:Z

.field private blacklist protocol:Lcom/android/okhttp/Protocol;

.field private blacklist rawSocket:Ljava/net/Socket;

.field private final blacklist route:Lcom/android/okhttp/Route;

.field public blacklist sink:Lcom/android/okhttp/okio/BufferedSink;

.field public blacklist socket:Ljava/net/Socket;

.field public blacklist source:Lcom/android/okhttp/okio/BufferedSource;

.field public blacklist streamCount:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Route;)V
    .registers 4
    .param p1, "route"    # Lcom/android/okhttp/Route;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 90
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 93
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 94
    return-void
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

    .line 143
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 145
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

    .line 148
    nop

    .line 149
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 150
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 152
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 153
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/io/RealConnection;->connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    goto :goto_45

    .line 155
    :cond_3d
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 156
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 159
    :goto_45
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-eq v0, v1, :cond_51

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v0, v1, :cond_84

    .line 160
    :cond_51
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 162
    new-instance v0, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 163
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

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v0

    .line 166
    .local v0, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 169
    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 171
    .end local v0    # "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    :cond_84
    return-void

    .line 146
    :catch_85
    move-exception v0

    .line 147
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

    .line 175
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v0}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    .line 180
    .local v0, "address":Lcom/android/okhttp/Address;
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 181
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 182
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 185
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_17
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 186
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v6

    const/4 v7, 0x1

    .line 185
    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v3, v4

    .line 189
    invoke-virtual {p3, v3}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v4

    .line 190
    .local v4, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v4}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 191
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v5

    .line 192
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v7

    .line 191
    invoke-virtual {v5, v3, v6, v7}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 196
    :cond_42
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 197
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-static {v5}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v5

    .line 200
    .local v5, "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 209
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v6

    sget-object v7, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    if-eq v6, v7, :cond_87

    .line 210
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-static {v6}, Lcom/android/okhttp/internal/io/RealConnection;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v6

    .line 211
    .local v6, "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    new-instance v7, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;

    invoke-direct {v7, v6}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;-><init>(Lcom/android/okhttp/internal/tls/TrustRootIndex;)V

    .line 212
    invoke-virtual {v5}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 213
    .local v7, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 217
    .end local v6    # "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .end local v7    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_87
    invoke-virtual {v4}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 218
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    goto :goto_97

    .line 219
    :cond_96
    const/4 v6, 0x0

    :goto_97
    nop

    .line 220
    .local v6, "maybeProtocol":Ljava/lang/String;
    iput-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 221
    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 222
    iget-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v7

    invoke-static {v7}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 223
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 224
    if-eqz v6, :cond_b9

    .line 225
    invoke-static {v6}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v7

    goto :goto_bb

    .line 226
    :cond_b9
    sget-object v7, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    :goto_bb
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;
    :try_end_bd
    .catch Ljava/lang/AssertionError; {:try_start_17 .. :try_end_bd} :catch_11d
    .catchall {:try_start_17 .. :try_end_bd} :catchall_11b

    .line 227
    const/4 v2, 0x1

    .line 232
    .end local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    if-eqz v3, :cond_c7

    .line 233
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 235
    :cond_c7
    if-nez v2, :cond_cc

    .line 236
    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 239
    :cond_cc
    return-void

    .line 201
    .restart local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .restart local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :cond_cd
    :try_start_cd
    invoke-virtual {v5}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 202
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

    .line 203
    invoke-static {v6}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    DN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {v6}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v7
    :try_end_11b
    .catch Ljava/lang/AssertionError; {:try_start_cd .. :try_end_11b} :catch_11d
    .catchall {:try_start_cd .. :try_end_11b} :catchall_11b

    .line 232
    .end local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v5    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :catchall_11b
    move-exception v4

    goto :goto_12c

    .line 228
    :catch_11d
    move-exception v4

    .line 229
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_11e
    invoke-static {v4}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_12a

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v5

    .line 230
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :cond_12a
    nop

    .end local v0    # "address":Lcom/android/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "readTimeout":I
    .end local p2    # "writeTimeout":I
    .end local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    throw v4
    :try_end_12c
    .catchall {:try_start_11e .. :try_end_12c} :catchall_11b

    .line 232
    .end local v4    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Lcom/android/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "readTimeout":I
    .restart local p2    # "writeTimeout":I
    .restart local p3    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    :goto_12c
    if-eqz v3, :cond_135

    .line 233
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 235
    :cond_135
    if-nez v2, :cond_13a

    .line 236
    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 238
    :cond_13a
    throw v4
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

    .line 265
    invoke-direct {p0}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnelRequest()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 266
    .local v0, "tunnelRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    .line 267
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

    .line 269
    .local v2, "requestLine":Ljava/lang/String;
    :goto_23
    new-instance v3, Lcom/android/okhttp/internal/http/Http1xStream;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 270
    .local v3, "tunnelConnection":Lcom/android/okhttp/internal/http/Http1xStream;
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v4

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 271
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v4}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v4

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 272
    invoke-virtual {v0}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/Http1xStream;->finishRequest()V

    .line 274
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 277
    .local v4, "response":Lcom/android/okhttp/Response;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v5

    .line 278
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_67

    .line 279
    const-wide/16 v5, 0x0

    .line 281
    :cond_67
    invoke-virtual {v3, v5, v6}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v7

    .line 282
    .local v7, "body":Lcom/android/okhttp/okio/Source;
    const v8, 0x7fffffff

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v8, v9}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 283
    invoke-interface {v7}, Lcom/android/okhttp/okio/Source;->close()V

    .line 285
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v8

    sparse-switch v8, :sswitch_data_da

    .line 303
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected response code for CONNECT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 297
    :sswitch_98
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 298
    invoke-virtual {v8}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    .line 297
    invoke-static {v8, v4, v9}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_b0

    goto/16 :goto_23

    .line 300
    :cond_b0
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Failed to authenticate with proxy"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 291
    :sswitch_b8
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_d1

    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 294
    return-void

    .line 292
    :cond_d1
    new-instance v8, Ljava/io/IOException;

    const-string v9, "TLS tunnel buffered too many bytes!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    nop

    :sswitch_data_da
    .sparse-switch
        0xc8 -> :sswitch_b8
        0x197 -> :sswitch_98
    .end sparse-switch
.end method

.method private blacklist createTunnelRequest()Lcom/android/okhttp/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 318
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 319
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

    .line 320
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    .line 317
    return-object v0
.end method

.method private static declared-synchronized blacklist trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 4
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    const-class v0, Lcom/android/okhttp/internal/io/RealConnection;

    monitor-enter v0

    .line 250
    :try_start_3
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_1b

    .line 251
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 252
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/Platform;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v2

    sput-object v2, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;

    .line 253
    sput-object p0, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 255
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1b
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    .line 249
    .end local p0    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public blacklist allocationLimit()I
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 345
    .local v0, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    goto :goto_a

    .line 347
    :cond_9
    const/4 v1, 0x1

    .line 345
    :goto_a
    return v1
.end method

.method public blacklist cancel()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 337
    return-void
.end method

.method public blacklist connect(IIILjava/util/List;Z)V
    .registers 14
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

    .line 98
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v0, :cond_9f

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v1, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v1, p4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 102
    .local v1, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    .line 103
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v3}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v3

    .line 105
    .local v3, "address":Lcom/android/okhttp/Address;
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-nez v4, :cond_47

    sget-object v4, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 106
    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_47

    .line 107
    :cond_2b
    new-instance v4, Lcom/android/okhttp/internal/http/RouteException;

    new-instance v5, Ljava/net/UnknownServiceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLEARTEXT communication not supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v4

    .line 111
    :cond_47
    :goto_47
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v4, :cond_9e

    .line 113
    :try_start_4b
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_62

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_5c

    goto :goto_62

    .line 115
    :cond_5c
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_6a

    .line 114
    :cond_62
    :goto_62
    invoke-virtual {v3}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    .line 115
    :goto_6a
    iput-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 116
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6f} :catch_70

    goto :goto_9c

    .line 117
    :catch_70
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 119
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 120
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 121
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 122
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 123
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 124
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 125
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 127
    if-nez v0, :cond_91

    .line 128
    new-instance v5, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v5, v4}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v0, v5

    goto :goto_94

    .line 130
    :cond_91
    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 133
    :goto_94
    if-eqz p5, :cond_9d

    invoke-virtual {v1, v4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 136
    .end local v4    # "e":Ljava/io/IOException;
    :goto_9c
    goto :goto_47

    .line 134
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_9d
    throw v0

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    :cond_9e
    return-void

    .line 98
    .end local v0    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    .end local v1    # "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .end local v2    # "proxy":Ljava/net/Proxy;
    .end local v3    # "address":Lcom/android/okhttp/Address;
    :cond_9f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getHandshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public blacklist getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    :goto_7
    return-object v0
.end method

.method public blacklist getRoute()Lcom/android/okhttp/Route;
    .registers 2

    .line 331
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    return-object v0
.end method

.method public blacklist getSocket()Ljava/net/Socket;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method blacklist isConnected()Z
    .registers 2

    .line 327
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

    .line 352
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

    .line 356
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    const/4 v2, 0x1

    if-eqz v0, :cond_20

    .line 357
    return v2

    .line 360
    :cond_20
    if-eqz p1, :cond_4e

    .line 362
    :try_start_22
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_28} :catch_4d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_4b

    .line 364
    .local v0, "readTimeout":I
    :try_start_28
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 365
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_43

    if-eqz v3, :cond_3c

    .line 366
    nop

    .line 370
    :try_start_36
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 366
    return v1

    .line 368
    :cond_3c
    nop

    .line 370
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 368
    return v2

    .line 370
    :catchall_43
    move-exception v3

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 371
    nop

    .end local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_4b
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_4b} :catch_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4b} :catch_4b

    .line 374
    .end local v0    # "readTimeout":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/io/RealConnection;
    .restart local p1    # "doExtensiveChecks":Z
    :catch_4b
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 372
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4d
    move-exception v0

    .line 379
    :cond_4e
    return v2

    .line 353
    :cond_4f
    :goto_4f
    return v1
.end method

.method public blacklist isMultiplexed()Z
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 400
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

    .line 402
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 404
    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
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

    .line 399
    return-object v0
.end method
