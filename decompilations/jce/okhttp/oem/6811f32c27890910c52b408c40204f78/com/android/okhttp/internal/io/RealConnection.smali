.class public final Lcom/android/okhttp/internal/io/RealConnection;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lcom/android/okhttp/Connection;


# static fields
.field private static lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/android/okhttp/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

.field private handshake:Lcom/android/okhttp/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lcom/android/okhttp/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lcom/android/okhttp/Route;

.field public sink:Lcom/android/okhttp/okio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lcom/android/okhttp/okio/BufferedSource;

.field public streamCount:I


# direct methods
.method public constructor <init>(Lcom/android/okhttp/Route;)V
    .registers 4
    .param p1, "route"    # Lcom/android/okhttp/Route;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->idleAtNanos:J

    .line 89
    iput-object p1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    .line 90
    return-void
.end method

.method private connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 12
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 141
    :try_start_5
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/okhttp/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_14
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_14} :catch_7b

    .line 145
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 146
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 148
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 149
    invoke-direct {p0, p2, p3, p4}, Lcom/android/okhttp/internal/io/RealConnection;->connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V

    .line 155
    :goto_3b
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v3, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    if-eq v2, v3, :cond_47

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    sget-object v3, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    if-ne v2, v3, :cond_7a

    .line 156
    :cond_47
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 158
    new-instance v2, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;-><init>(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v6, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 158
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 158
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->protocol(Lcom/android/okhttp/Protocol;)Lcom/android/okhttp/internal/framed/FramedConnection$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/framed/FramedConnection$Builder;->build()Lcom/android/okhttp/internal/framed/FramedConnection;

    move-result-object v1

    .line 162
    .local v1, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    invoke-virtual {v1}, Lcom/android/okhttp/internal/framed/FramedConnection;->sendConnectionPreface()V

    .line 165
    iput-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 167
    .end local v1    # "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    :cond_7a
    return-void

    .line 142
    :catch_7b
    move-exception v0

    .line 143
    .local v0, "e":Ljava/net/ConnectException;
    new-instance v2, Ljava/net/ConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v4}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v0    # "e":Ljava/net/ConnectException;
    :cond_9c
    sget-object v2, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iput-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 152
    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_3b
.end method

.method private connectTls(IILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    .registers 20
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lcom/android/okhttp/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v12}, Lcom/android/okhttp/Route;->requiresTunnel()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 172
    invoke-direct/range {p0 .. p2}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnel(II)V

    .line 175
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v12}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    .line 176
    .local v1, "address":Lcom/android/okhttp/Address;
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    .line 177
    .local v8, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    .line 178
    .local v9, "success":Z
    const/4 v7, 0x0

    .line 182
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriPort()I

    move-result v14

    const/4 v15, 0x1

    .line 181
    invoke-virtual {v8, v12, v13, v14, v15}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v7, v0

    .line 185
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v4

    .line 186
    .local v4, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v4}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 187
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v12

    .line 188
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getProtocols()Ljava/util/List;

    move-result-object v14

    .line 187
    invoke-virtual {v12, v7, v13, v14}, Lcom/android/okhttp/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    :cond_4b
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 193
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-static {v12}, Lcom/android/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;

    move-result-object v11

    .line 196
    .local v11, "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v12

    if-nez v12, :cond_e6

    .line 197
    invoke-virtual {v11}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 198
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Hostname "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not verified:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 199
    const-string/jumbo v14, "\n    certificate: "

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 199
    invoke-static {v2}, Lcom/android/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v14

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 200
    const-string/jumbo v14, "\n    DN: "

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 200
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v14

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 201
    const-string/jumbo v14, "\n    subjectAltNames: "

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 201
    invoke-static {v2}, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v14

    .line 198
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_c9
    .catch Ljava/lang/AssertionError; {:try_start_1b .. :try_end_c9} :catch_c9
    .catchall {:try_start_1b .. :try_end_c9} :catchall_d6

    .line 224
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v11    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :catch_c9
    move-exception v5

    .line 225
    .local v5, "e":Ljava/lang/AssertionError;
    :try_start_ca
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v12

    if-eqz v12, :cond_163

    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_d6

    .line 227
    .end local v5    # "e":Ljava/lang/AssertionError;
    :catchall_d6
    move-exception v12

    .line 228
    if-eqz v7, :cond_e0

    .line 229
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_e0
    if-nez v9, :cond_e5

    .line 232
    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 227
    :cond_e5
    throw v12

    .line 205
    .restart local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .restart local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local v11    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    :cond_e6
    :try_start_e6
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v12

    sget-object v13, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    if-eq v12, v13, :cond_10e

    .line 206
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-static {v12}, Lcom/android/okhttp/internal/io/RealConnection;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v10

    .line 207
    .local v10, "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    new-instance v12, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;

    invoke-direct {v12, v10}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;-><init>(Lcom/android/okhttp/internal/tls/TrustRootIndex;)V

    .line 208
    invoke-virtual {v11}, Lcom/android/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v13

    .line 207
    invoke-virtual {v12, v13}, Lcom/android/okhttp/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getCertificatePinner()Lcom/android/okhttp/CertificatePinner;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/android/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 213
    .end local v3    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v10    # "trustRootIndex":Lcom/android/okhttp/internal/tls/TrustRootIndex;
    :cond_10e
    invoke-virtual {v4}, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 214
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/okhttp/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    .line 216
    :goto_11c
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v12}, Lcom/android/okhttp/okio/Okio;->source(Ljava/net/Socket;)Lcom/android/okhttp/okio/Source;

    move-result-object v12

    invoke-static {v12}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v12}, Lcom/android/okhttp/okio/Okio;->sink(Ljava/net/Socket;)Lcom/android/okhttp/okio/Sink;

    move-result-object v12

    invoke-static {v12}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 219
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 220
    if-eqz v6, :cond_160

    .line 221
    invoke-static {v6}, Lcom/android/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;

    move-result-object v12

    .line 220
    :goto_14a
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;
    :try_end_14e
    .catch Ljava/lang/AssertionError; {:try_start_e6 .. :try_end_14e} :catch_c9
    .catchall {:try_start_e6 .. :try_end_14e} :catchall_d6

    .line 223
    const/4 v9, 0x1

    .line 228
    if-eqz v7, :cond_158

    .line 229
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/okhttp/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_158
    if-nez v9, :cond_15d

    .line 232
    invoke-static {v7}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 235
    :cond_15d
    return-void

    .line 215
    :cond_15e
    const/4 v6, 0x0

    .local v6, "maybeProtocol":Ljava/lang/String;
    goto :goto_11c

    .line 222
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    :cond_160
    :try_start_160
    sget-object v12, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;
    :try_end_162
    .catch Ljava/lang/AssertionError; {:try_start_160 .. :try_end_162} :catch_c9
    .catchall {:try_start_160 .. :try_end_162} :catchall_d6

    goto :goto_14a

    .line 226
    .end local v4    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v7    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local v11    # "unverifiedHandshake":Lcom/android/okhttp/Handshake;
    .restart local v5    # "e":Ljava/lang/AssertionError;
    :cond_163
    :try_start_163
    throw v5
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_d6
.end method

.method private createTunnel(II)V
    .registers 16
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 261
    invoke-direct {p0}, Lcom/android/okhttp/internal/io/RealConnection;->createTunnelRequest()Lcom/android/okhttp/Request;

    move-result-object v6

    .line 262
    .local v6, "tunnelRequest":Lcom/android/okhttp/Request;
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v7

    .line 263
    .local v7, "url":Lcom/android/okhttp/HttpUrl;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CONNECT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " HTTP/1.1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "requestLine":Ljava/lang/String;
    :cond_29
    new-instance v5, Lcom/android/okhttp/internal/http/Http1xStream;

    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    iget-object v9, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {v5, v12, v8, v9}, Lcom/android/okhttp/internal/http/Http1xStream;-><init>(Lcom/android/okhttp/internal/http/StreamAllocation;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/okio/BufferedSink;)V

    .line 266
    .local v5, "tunnelConnection":Lcom/android/okhttp/internal/http/Http1xStream;
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v8

    int-to-long v10, p1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 267
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v8

    int-to-long v10, p2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lcom/android/okhttp/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/okhttp/okio/Timeout;

    .line 268
    invoke-virtual {v6}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Lcom/android/okhttp/internal/http/Http1xStream;->writeRequest(Lcom/android/okhttp/Headers;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/Http1xStream;->finishRequest()V

    .line 270
    invoke-virtual {v5}, Lcom/android/okhttp/internal/http/Http1xStream;->readResponse()Lcom/android/okhttp/Response$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/okhttp/Response$Builder;->request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Response$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Response$Builder;->build()Lcom/android/okhttp/Response;

    move-result-object v4

    .line 273
    .local v4, "response":Lcom/android/okhttp/Response;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v2

    .line 274
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_6c

    .line 275
    const-wide/16 v2, 0x0

    .line 277
    :cond_6c
    invoke-virtual {v5, v2, v3}, Lcom/android/okhttp/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/android/okhttp/okio/Source;

    move-result-object v0

    .line 278
    .local v0, "body":Lcom/android/okhttp/okio/Source;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const v9, 0x7fffffff

    invoke-static {v0, v9, v8}, Lcom/android/okhttp/internal/Util;->skipAll(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 279
    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    .line 281
    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v8

    sparse-switch v8, :sswitch_data_e4

    .line 299
    new-instance v8, Ljava/io/IOException;

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected response code for CONNECT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/okhttp/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 287
    :sswitch_a0
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSource;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_ba

    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/okio/Buffer;->exhausted()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_c3

    .line 288
    :cond_ba
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "TLS tunnel buffered too many bytes!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    :cond_c3
    return-void

    .line 294
    :sswitch_c4
    iget-object v8, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v8}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/okhttp/Address;->getAuthenticator()Lcom/android/okhttp/Authenticator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v9}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    .line 293
    invoke-static {v8, v4, v9}, Lcom/android/okhttp/internal/http/OkHeaders;->processAuthHeader(Lcom/android/okhttp/Authenticator;Lcom/android/okhttp/Response;Ljava/net/Proxy;)Lcom/android/okhttp/Request;

    move-result-object v6

    .line 295
    if-nez v6, :cond_29

    .line 296
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Failed to authenticate with proxy"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 281
    nop

    :sswitch_data_e4
    .sparse-switch
        0xc8 -> :sswitch_a0
        0x197 -> :sswitch_c4
    .end sparse-switch
.end method

.method private createTunnelRequest()Lcom/android/okhttp/Request;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Request$Builder;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v2}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->hostHeader(Lcom/android/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/android/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 4
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    const-class v2, Lcom/android/okhttp/internal/io/RealConnection;

    monitor-enter v2

    .line 246
    :try_start_3
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_1b

    .line 247
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/okhttp/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 248
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/Platform;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;

    move-result-object v1

    sput-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;

    .line 249
    sput-object p0, Lcom/android/okhttp/internal/io/RealConnection;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    .end local v0    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1b
    sget-object v1, Lcom/android/okhttp/internal/io/RealConnection;->lastTrustRootIndex:Lcom/android/okhttp/internal/tls/TrustRootIndex;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v2

    return-object v1

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public allocationLimit()I
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    .line 341
    .local v0, "framedConnection":Lcom/android/okhttp/internal/framed/FramedConnection;
    if-eqz v0, :cond_9

    .line 342
    invoke-virtual {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    .line 341
    :goto_8
    return v1

    .line 343
    :cond_9
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 333
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .registers 15
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    const/4 v7, 0x0

    .line 94
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v5, :cond_e

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "already connected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_e
    const/4 v4, 0x0

    .line 97
    .local v4, "routeException":Lcom/android/okhttp/internal/http/RouteException;
    new-instance v1, Lcom/android/okhttp/internal/ConnectionSpecSelector;

    invoke-direct {v1, p4}, Lcom/android/okhttp/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 98
    .local v1, "connectionSpecSelector":Lcom/android/okhttp/internal/ConnectionSpecSelector;
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v5}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 99
    .local v3, "proxy":Ljava/net/Proxy;
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v5}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v0

    .line 101
    .local v0, "address":Lcom/android/okhttp/Address;
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v5}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-nez v5, :cond_5f

    .line 102
    sget-object v5, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    invoke-interface {p4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 101
    if-eqz v5, :cond_5f

    .line 103
    new-instance v5, Lcom/android/okhttp/internal/http/RouteException;

    new-instance v6, Ljava/net/UnknownServiceException;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CLEARTEXT communication not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-direct {v6, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 111
    .end local v4    # "routeException":Lcom/android/okhttp/internal/http/RouteException;
    :cond_55
    :try_start_55
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 109
    :goto_5a
    iput-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 112
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/okhttp/internal/io/RealConnection;->connectSocket(IIILcom/android/okhttp/internal/ConnectionSpecSelector;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_7c

    .line 107
    :cond_5f
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-nez v5, :cond_a9

    .line 109
    :try_start_63
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_73

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_55

    .line 110
    :cond_73
    invoke-virtual {v0}, Lcom/android/okhttp/Address;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_7a} :catch_7c

    move-result-object v5

    goto :goto_5a

    .line 113
    :catch_7c
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 115
    iget-object v5, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 116
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 117
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 118
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    .line 119
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->sink:Lcom/android/okhttp/okio/BufferedSink;

    .line 120
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    .line 121
    iput-object v7, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 123
    if-nez v4, :cond_a5

    .line 124
    new-instance v4, Lcom/android/okhttp/internal/http/RouteException;

    invoke-direct {v4, v2}, Lcom/android/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 129
    :goto_9a
    if-eqz p5, :cond_a4

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5f

    .line 130
    :cond_a4
    throw v4

    .line 126
    :cond_a5
    invoke-virtual {v4, v2}, Lcom/android/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_9a

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a9
    return-void
.end method

.method public getHandshake()Lcom/android/okhttp/Handshake;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    return-object v0
.end method

.method public getProtocol()Lcom/android/okhttp/Protocol;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    goto :goto_6
.end method

.method public getRoute()Lcom/android/okhttp/Route;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method isConnected()Z
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHealthy(Z)Z
    .registers 9
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 348
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 349
    :cond_1a
    return v6

    .line 352
    :cond_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v3, :cond_20

    .line 353
    return v5

    .line 356
    :cond_20
    if-eqz p1, :cond_4a

    .line 358
    :try_start_22
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_27
    .catch Ljava/net/SocketTimeoutException; {:try_start_22 .. :try_end_27} :catch_49
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_4b

    move-result v2

    .line 360
    .local v2, "readTimeout":I
    :try_start_28
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 361
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_42

    move-result v3

    if-eqz v3, :cond_3c

    .line 366
    :try_start_36
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 362
    return v6

    .line 366
    :cond_3c
    iget-object v3, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 364
    return v5

    .line 365
    :catchall_42
    move-exception v3

    .line 366
    iget-object v4, p0, Lcom/android/okhttp/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 365
    throw v3
    :try_end_49
    .catch Ljava/net/SocketTimeoutException; {:try_start_36 .. :try_end_49} :catch_49
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_49} :catch_4b

    .line 368
    .end local v2    # "readTimeout":I
    :catch_49
    move-exception v1

    .line 375
    :cond_4a
    return v5

    .line 370
    :catch_4b
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    return v6
.end method

.method public isMultiplexed()Z
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->framedConnection:Lcom/android/okhttp/internal/framed/FramedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    const-string/jumbo v1, ":"

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getAddress()Lcom/android/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Address;->url()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    const-string/jumbo v1, ", proxy="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 399
    const-string/jumbo v1, " hostAddress="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->route:Lcom/android/okhttp/Route;

    invoke-virtual {v1}, Lcom/android/okhttp/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    const-string/jumbo v1, " cipherSuite="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 402
    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/okhttp/internal/io/RealConnection;->handshake:Lcom/android/okhttp/Handshake;

    invoke-virtual {v0}, Lcom/android/okhttp/Handshake;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_6a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    const-string/jumbo v1, " protocol="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/android/okhttp/internal/io/RealConnection;->protocol:Lcom/android/okhttp/Protocol;

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 405
    const/16 v1, 0x7d

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :cond_86
    const-string/jumbo v0, "none"

    goto :goto_6a
.end method
