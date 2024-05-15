.class final Lcom/android/org/conscrypt/ConscryptEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "ConscryptEngine.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final EMPTY:Ljava/nio/ByteBuffer;

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;


# instance fields
.field private bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

.field private channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private handshakeException:Ljavax/net/ssl/SSLException;

.field private handshakeFinished:Z

.field private handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

.field private lazyDirectBuffer:Ljava/nio/ByteBuffer;

.field private maxSealOverhead:I

.field private final networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private final ssl:Lcom/android/org/conscrypt/SslWrapper;

.field private final sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private final sslSession:Lcom/android/org/conscrypt/ActiveSession;

.field private state:I

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 101
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 104
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 103
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 105
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 107
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 106
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 109
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 108
    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    .line 110
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->EMPTY:Ljava/nio/ByteBuffer;

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 5
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 164
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 165
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 171
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 172
    invoke-static {}, Lcom/android/org/conscrypt/PeerInfoProvider;->nullProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 173
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->newBio()Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    .line 175
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 176
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;)V
    .registers 6
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "peerInfoProvider"    # Lcom/android/org/conscrypt/PeerInfoProvider;

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 164
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 165
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 187
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 188
    const-string/jumbo v0, "peerInfoProvider"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/PeerInfoProvider;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 189
    invoke-static {p1, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 190
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->newBio()Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    .line 191
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 192
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 164
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 165
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 179
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 180
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 181
    invoke-static {p3, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    .line 182
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->newBio()Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    .line 183
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 184
    return-void
.end method

.method private beginHandshakeInternal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    .line 371
    iget v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v5, :pswitch_data_94

    .line 382
    :pswitch_7
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Client/server mode must be set before handshake"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    :pswitch_10
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Handshake has already been started"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    :pswitch_19
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Engine has already been closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    :pswitch_22
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 387
    const/4 v4, 0x1

    .line 390
    .local v4, "releaseResources":Z
    :try_start_26
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v5, v6, v7}, Lcom/android/org/conscrypt/SslWrapper;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 395
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v5

    .line 396
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v7

    iget-object v8, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 395
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v0

    .line 397
    .local v0, "cachedSession":Lcom/android/org/conscrypt/SslSessionWrapper;
    if-eqz v0, :cond_50

    .line 398
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, v5}, Lcom/android/org/conscrypt/SslSessionWrapper;->offerToResume(Lcom/android/org/conscrypt/SslWrapper;)V

    .line 402
    .end local v0    # "cachedSession":Lcom/android/org/conscrypt/SslSessionWrapper;
    :cond_50
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SslWrapper;->getMaxSealOverhead()I

    move-result v5

    iput v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 403
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_5b} :catch_64
    .catchall {:try_start_26 .. :try_end_5b} :catchall_8b

    .line 404
    const/4 v4, 0x0

    .line 415
    if-eqz v4, :cond_63

    .line 416
    iput v9, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 417
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdownAndFreeSslNative()V

    .line 420
    :cond_63
    return-void

    .line 405
    :catch_64
    move-exception v1

    .line 407
    .local v1, "e":Ljava/io/IOException;
    :try_start_65
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v5, "unexpected CCS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 410
    const-string/jumbo v5, "ssl_unexpected_ccs: host=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "logMessage":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 413
    .end local v2    # "logMessage":Ljava/lang/String;
    :cond_86
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v5

    throw v5
    :try_end_8b
    .catchall {:try_start_65 .. :try_end_8b} :catchall_8b

    .line 414
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    :catchall_8b
    move-exception v5

    .line 415
    if-eqz v4, :cond_93

    .line 416
    iput v9, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 417
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdownAndFreeSslNative()V

    .line 414
    :cond_93
    throw v5

    .line 371
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_22
        :pswitch_10
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private static calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p1, "dstsOffset"    # I
    .param p2, "dstsLength"    # I

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "capacity":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_30

    .line 878
    aget-object v1, p0, v2

    .line 879
    .local v1, "dst":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_20

    const/4 v3, 0x1

    :goto_a
    const-string/jumbo v4, "dsts[%d] is null"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 880
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 881
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 879
    :cond_20
    const/4 v3, 0x0

    goto :goto_a

    .line 883
    :cond_22
    if-lt v2, p1, :cond_2d

    add-int v3, p1, p2

    if-ge v2, v3, :cond_2d

    .line 884
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    .line 877
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 887
    .end local v1    # "dst":Ljava/nio/ByteBuffer;
    :cond_30
    return v0
.end method

.method private static calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .registers 10
    .param p0, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p1, "srcsOffset"    # I
    .param p2, "srcsEndOffset"    # I

    .prologue
    .line 891
    const-wide/16 v2, 0x0

    .line 892
    .local v2, "len":J
    move v0, p1

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_33

    .line 893
    aget-object v1, p0, v0

    .line 894
    .local v1, "src":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_2a

    .line 895
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "srcs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 897
    :cond_2a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 899
    .end local v1    # "src":Ljava/nio/ByteBuffer;
    :cond_33
    return-wide v2
.end method

.method private clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private closeAll()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 1304
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 1305
    return-void
.end method

.method private convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1090
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 1091
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    return-object v0

    .line 1093
    :cond_f
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0
.end method

.method private directByteBufferAddress(Ljava/nio/ByteBuffer;I)J
    .registers 7
    .param p1, "directBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I

    .prologue
    .line 1171
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private finishHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 962
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    if-eqz v0, :cond_c

    .line 963
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/HandshakeListener;->onHandshakeFinished()V

    .line 965
    :cond_c
    return-void
.end method

.method private free()V
    .registers 2

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1615
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->close()V

    .line 1616
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;->close()V

    .line 1618
    :cond_12
    return-void
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 2

    .prologue
    .line 1292
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_c

    .line 1298
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1296
    :pswitch_8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1292
    nop

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "pending"    # I

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_8
.end method

.method private getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_7

    .line 498
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 500
    :cond_7
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_38

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_28
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 504
    :pswitch_31
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 512
    :pswitch_34
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 500
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_34
        :pswitch_34
        :pswitch_28
        :pswitch_31
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method private getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_12

    .line 1164
    const/16 v0, 0x4000

    const/16 v1, 0x4145

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1163
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    .line 1166
    :cond_12
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1167
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 908
    :try_start_0
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_1f

    .line 909
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v4

    if-lez v4, :cond_d

    .line 911
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v4

    .line 915
    :cond_d
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    .line 916
    .local v2, "e":Ljavax/net/ssl/SSLException;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    .line 917
    throw v2
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_13} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_4c

    .line 931
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :catch_13
    move-exception v2

    .line 932
    .restart local v2    # "e":Ljavax/net/ssl/SSLException;
    :try_start_14
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v4

    if-lez v4, :cond_52

    .line 935
    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    .line 936
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_4c

    return-object v4

    .line 920
    .end local v2    # "e":Ljavax/net/ssl/SSLException;
    :cond_1f
    :try_start_1f
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/SslWrapper;->doHandshake()I
    :try_end_24
    .catch Ljavax/net/ssl/SSLException; {:try_start_1f .. :try_end_24} :catch_13
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_47
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_4c

    move-result v3

    .line 921
    .local v3, "ssl_error_code":I
    packed-switch v3, :pswitch_data_56

    .line 950
    :try_start_28
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/org/conscrypt/ActiveSession;->onSessionEstablished(Ljava/lang/String;I)V

    .line 952
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->finishHandshake()V

    .line 953
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_4c

    return-object v4

    .line 923
    :pswitch_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v4

    invoke-static {v4}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    return-object v4

    .line 925
    :pswitch_44
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_46
    .catch Ljavax/net/ssl/SSLException; {:try_start_3b .. :try_end_46} :catch_13
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_4c

    return-object v4

    .line 942
    .end local v3    # "ssl_error_code":I
    :catch_47
    move-exception v0

    .line 943
    .local v0, "e":Ljava/io/IOException;
    :try_start_48
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 944
    throw v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 954
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4c
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v4

    throw v4

    .line 940
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "e":Ljavax/net/ssl/SSLException;
    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 941
    throw v2
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_4c

    .line 921
    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_44
    .end packed-switch
.end method

.method private isHandshakeStarted()Z
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_a

    .line 331
    const/4 v0, 0x1

    return v0

    .line 329
    :pswitch_7
    const/4 v0, 0x0

    return v0

    .line 326
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_d

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_d

    .line 1281
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1283
    :cond_d
    return-object p1
.end method

.method private newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 7
    .param p1, "bytesConsumed"    # I
    .param p2, "bytesProduced"    # I
    .param p3, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1318
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1319
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_12

    .end local p3    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_a
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    .line 1318
    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v0

    .line 1319
    .restart local p3    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_12
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    goto :goto_a
.end method

.method private static newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/SslWrapper;
    .registers 4
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .prologue
    .line 196
    :try_start_0
    invoke-static {p0, p1, p1, p1}, Lcom/android/org/conscrypt/SslWrapper;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/SslWrapper;
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 197
    :catch_5
    move-exception v0

    .line 198
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pendingInboundCleartextBytes()I
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method private pendingOutboundEncryptedBytes()I
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;->getPendingWrittenBytes()I

    move-result v0

    return v0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2
    .param p0, "pendingOutboundBytes"    # I

    .prologue
    .line 529
    if-lez p0, :cond_5

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_4
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 9
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pending"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1218
    const/4 v0, 0x0

    .line 1219
    .local v0, "bytesRead":I
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1220
    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, p2, :cond_26

    .line 1221
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1222
    .local v3, "limit":I
    sub-int v5, v3, v4

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1223
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1224
    invoke-direct {p0, p1, v4, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1226
    if-lez v0, :cond_26

    .line 1227
    add-int v5, v4, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1235
    .end local v2    # "len":I
    .end local v3    # "limit":I
    :cond_26
    :goto_26
    return v0

    .line 1231
    .restart local v2    # "len":I
    .restart local v3    # "limit":I
    :cond_27
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result v0

    goto :goto_26

    .line 1236
    .end local v2    # "len":I
    .end local v3    # "limit":I
    .end local v4    # "pos":I
    :catch_2c
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method

.method private readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1249
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v4, :cond_2d

    .line 1250
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v4, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1251
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1259
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1260
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1261
    .local v2, "bytesRead":I
    if-lez v2, :cond_27

    .line 1262
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1263
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1264
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_32

    .line 1269
    :cond_27
    if-eqz v0, :cond_2c

    .line 1271
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1267
    :cond_2c
    return v2

    .line 1256
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesToRead":I
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_f

    .line 1268
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_32
    move-exception v4

    .line 1269
    if-eqz v0, :cond_38

    .line 1271
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1268
    :cond_38
    throw v4
.end method

.method private readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .param p4, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1178
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v2

    .line 1179
    .local v2, "pendingNet":I
    if-lez v2, :cond_44

    .line 1181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1182
    .local v0, "capacity":I
    if-ge v0, v2, :cond_21

    .line 1183
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1185
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_1c

    .line 1184
    .end local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_14
    invoke-direct {p0, p4}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 1183
    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v4

    .line 1185
    .restart local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_1c
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    goto :goto_14

    .line 1190
    :cond_21
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 1192
    .local v3, "produced":I
    if-gtz v3, :cond_3c

    .line 1196
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V

    .line 1202
    :goto_2a
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    .line 1204
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_3f

    .line 1203
    .end local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_34
    invoke-direct {p0, p4}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 1202
    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    return-object v4

    .line 1198
    .restart local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_3c
    add-int/2addr p3, v3

    .line 1199
    sub-int/2addr v2, v3

    goto :goto_2a

    .line 1204
    :cond_3f
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_46

    move-result-object p4

    goto :goto_34

    .line 1207
    .end local v0    # "capacity":I
    .end local v3    # "produced":I
    :cond_44
    const/4 v4, 0x0

    return-object v4

    .line 1208
    .end local v2    # "pendingNet":I
    .end local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catch_46
    move-exception v1

    .line 1209
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .registers 9
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1033
    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1034
    .local v3, "limit":I
    sub-int v5, v3, v4

    const/16 v6, 0x4145

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1035
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1036
    invoke-direct {p0, p1, v4, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1037
    .local v0, "bytesRead":I
    if-lez v0, :cond_21

    .line 1038
    add-int v5, v4, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1040
    :cond_21
    return v0

    .line 1044
    .end local v0    # "bytesRead":I
    :cond_22
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    :try_end_25
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_25} :catch_27

    move-result v5

    return v5

    .line 1045
    .end local v2    # "len":I
    .end local v3    # "limit":I
    .end local v4    # "pos":I
    :catch_27
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method

.method private readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/org/conscrypt/SslWrapper;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1060
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v4, :cond_2d

    .line 1061
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v4, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1062
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1071
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_f
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1072
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1073
    .local v2, "bytesRead":I
    if-lez v2, :cond_27

    .line 1075
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1076
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1077
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_32

    .line 1082
    :cond_27
    if-eqz v0, :cond_2c

    .line 1084
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1080
    :cond_2c
    return v2

    .line 1067
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesToRead":I
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_32

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_f

    .line 1081
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_32
    move-exception v4

    .line 1082
    if-eqz v0, :cond_38

    .line 1084
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1081
    :cond_38
    throw v4
.end method

.method private resetSingleDstBuffer()V
    .registers 4

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1719
    return-void
.end method

.method private resetSingleSrcBuffer()V
    .registers 4

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1710
    return-void
.end method

.method private sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private shutdown()V
    .registers 3

    .prologue
    .line 1598
    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SslWrapper;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1603
    :goto_5
    return-void

    .line 1599
    :catch_6
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_5
.end method

.method private shutdownAndFreeSslNative()V
    .registers 2

    .prologue
    .line 1607
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 1609
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->free()V

    .line 1611
    return-void

    .line 1608
    :catchall_7
    move-exception v0

    .line 1609
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->free()V

    .line 1608
    throw v0
.end method

.method private shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 1310
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_d

    .line 1311
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1313
    :cond_d
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1714
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1705
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1101
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1103
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1104
    invoke-direct {p0, p1, v2, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1109
    .local v0, "bytesWritten":I
    :goto_e
    if-lez v0, :cond_15

    .line 1110
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1113
    :cond_15
    return v0

    .line 1106
    .end local v0    # "bytesWritten":I
    :cond_16
    invoke-direct {p0, p1, v2, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v0

    .restart local v0    # "bytesWritten":I
    goto :goto_e

    .line 1114
    .end local v0    # "bytesWritten":I
    .end local v2    # "pos":I
    :catch_1b
    move-exception v1

    .line 1115
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/net/ssl/SSLException;

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1127
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v5, :cond_3d

    .line 1128
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v5, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1129
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1137
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 1138
    .local v4, "limit":I
    sub-int v5, v4, p2

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1139
    .local v2, "bytesToCopy":I
    add-int v5, p2, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1140
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1142
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1145
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1147
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1150
    .local v3, "bytesWritten":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_42

    .line 1154
    if-eqz v0, :cond_3c

    .line 1156
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1152
    :cond_3c
    return v3

    .line 1134
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToCopy":I
    .end local v3    # "bytesWritten":I
    .end local v4    # "limit":I
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_42

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_f

    .line 1153
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_42
    move-exception v5

    .line 1154
    if-eqz v0, :cond_48

    .line 1156
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1153
    :cond_48
    throw v5
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 974
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 976
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 977
    invoke-direct {p0, p1, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 981
    .local v2, "sslWrote":I
    :goto_e
    if-lez v2, :cond_15

    .line 982
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 984
    :cond_15
    return v2

    .line 979
    .end local v2    # "sslWrote":I
    :cond_16
    invoke-direct {p0, p1, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result v2

    .restart local v2    # "sslWrote":I
    goto :goto_e

    .line 985
    .end local v1    # "pos":I
    .end local v2    # "sslWrote":I
    :catch_1b
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method private writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/org/conscrypt/SslWrapper;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 998
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v4, :cond_37

    .line 999
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v4, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1000
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1009
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1010
    .local v3, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1011
    .local v2, "bytesToWrite":I
    add-int v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1012
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1013
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1015
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1016
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1018
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_3c

    move-result v4

    .line 1020
    if-eqz v0, :cond_36

    .line 1022
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1018
    :cond_36
    return v4

    .line 1005
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToWrite":I
    .end local v3    # "limit":I
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_f

    .line 1019
    .end local v0    # "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_3c
    move-exception v4

    .line 1020
    if-eqz v0, :cond_42

    .line 1022
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1019
    :cond_42
    throw v4
.end method


# virtual methods
.method public beginHandshake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 368
    return-void

    .line 365
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .prologue
    .line 1642
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 1643
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1644
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1646
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_c
    const/4 v1, 0x0

    invoke-interface {p1, p3, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .prologue
    .line 1659
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1631
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_d

    move-object v0, p1

    .line 1632
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1633
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1635
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_d
    invoke-interface {p1, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .prologue
    .line 1653
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .registers 4
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/SslWrapper;->chooseClientCertificate([B[[B)V

    .line 1594
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/SslWrapper;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public closeInbound()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 424
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_5
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1a

    if-ne v0, v2, :cond_b

    monitor-exit v1

    .line 426
    return-void

    .line 428
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_16

    .line 429
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_1a

    :goto_14
    monitor-exit v1

    .line 435
    return-void

    .line 431
    :cond_16
    const/4 v0, 0x6

    :try_start_17
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    goto :goto_14

    .line 424
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public closeOutbound()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 439
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_6
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eq v0, v3, :cond_e

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_2b

    if-ne v0, v2, :cond_10

    :cond_e
    monitor-exit v1

    .line 441
    return-void

    .line 443
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 444
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdownAndFreeSslNative()V

    .line 446
    :cond_19
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_27

    .line 447
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_2b

    :goto_22
    monitor-exit v1

    .line 452
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 453
    return-void

    .line 449
    :cond_27
    const/4 v0, 0x7

    :try_start_28
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    goto :goto_22

    .line 439
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1623
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->free()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 1625
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    .line 1627
    return-void

    .line 1624
    :catchall_7
    move-exception v0

    .line 1625
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->finalize()V

    .line 1624
    throw v0
.end method

.method getAlpnSelectedProtocol()[B
    .registers 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getAlpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 251
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 256
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 258
    const-string/jumbo v2, "Channel ID is only available after handshake completes"

    .line 257
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_24
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->getTlsChannelId()[B
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_12

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 491
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .prologue
    .line 1665
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .prologue
    .line 478
    invoke-super {p0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 479
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 480
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .prologue
    .line 554
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 557
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 559
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ActiveSession;)Ljavax/net/ssl/SSLSession;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 554
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 565
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 570
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method handshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 548
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    :goto_a
    monitor-exit v1

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 547
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInboundDone()Z
    .registers 4

    .prologue
    .line 585
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    const/4 v2, 0x6

    if-ne v0, v2, :cond_11

    .line 587
    :cond_e
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_11
    monitor-exit v1

    .line 590
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->wasShutdownReceived()Z

    move-result v0

    return v0

    .line 585
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOutboundDone()Z
    .registers 4

    .prologue
    .line 595
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_3
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_19

    const/4 v2, 0x7

    if-ne v0, v2, :cond_11

    .line 597
    :cond_e
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_11
    monitor-exit v1

    .line 600
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslWrapper;->wasShutdownSent()Z

    move-result v0

    return v0

    .line 595
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method maxSealOverhead()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    return v0
.end method

.method public onNewSessionEstablished(J)V
    .registers 8
    .param p1, "sslSessionNativePtr"    # J

    .prologue
    .line 1537
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1542
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v2, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1544
    .local v2, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v2, v4}, Lcom/android/org/conscrypt/SslSessionWrapper;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ActiveSession;)Lcom/android/org/conscrypt/SslSessionWrapper;

    move-result-object v3

    .line 1547
    .local v3, "sessionWrapper":Lcom/android/org/conscrypt/SslSessionWrapper;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 1548
    .local v0, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v0, v3}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/SslSessionWrapper;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1552
    .end local v0    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    .end local v2    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v3    # "sessionWrapper":Lcom/android/org/conscrypt/SslSessionWrapper;
    :goto_15
    return-void

    .line 1549
    :catch_16
    move-exception v1

    .local v1, "ignored":Ljava/lang/Exception;
    goto :goto_15
.end method

.method public onSSLStateChange(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v2, 0x2

    .line 1512
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1513
    sparse-switch p1, :sswitch_data_3a

    :goto_7
    monitor-exit v1

    .line 1531
    return-void

    .line 1517
    :sswitch_9
    const/4 v0, 0x2

    :try_start_a
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_d

    goto :goto_7

    .line 1512
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1521
    :sswitch_10
    :try_start_10
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eq v0, v2, :cond_35

    .line 1522
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_35

    .line 1523
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1523
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_35
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_d

    goto :goto_7

    .line 1513
    nop

    :sswitch_data_3a
    .sparse-switch
        0x10 -> :sswitch_9
        0x20 -> :sswitch_10
    .end sparse-switch
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/SslWrapper;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .prologue
    .line 1557
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method setAlpnProtocols([B)V
    .registers 3
    .param p1, "alpnProtocols"    # [B

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([B)V

    .line 1693
    return-void
.end method

.method setAlpnProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setAlpnProtocols([Ljava/lang/String;)V

    .line 1684
    return-void
.end method

.method setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 5
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 206
    const-string/jumbo v2, "Could not set buffer allocator after the initial handshake has begun."

    .line 205
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 203
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 208
    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_12

    monitor-exit v1

    .line 210
    return-void
.end method

.method setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 228
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 232
    :cond_15
    :try_start_15
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 234
    const-string/jumbo v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    .line 233
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_24
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_12

    monitor-exit v1

    .line 238
    return-void
.end method

.method setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 8
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v3

    if-nez v3, :cond_f

    .line 278
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Not allowed in server mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    :cond_f
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 282
    :try_start_12
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 283
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_21

    .line 281
    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3

    .line 287
    :cond_24
    if-nez p1, :cond_30

    .line 288
    :try_start_26
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 289
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_21

    monitor-exit v4

    .line 290
    return-void

    .line 293
    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_21

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_36
    instance-of v3, p1, Ljava/security/interfaces/ECKey;

    if-eqz v3, :cond_42

    .line 297
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    move-object v3, v0

    invoke-interface {v3}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 299
    .end local v2    # "ecParams":Ljava/security/spec/ECParameterSpec;
    :cond_42
    if-nez v2, :cond_4f

    .line 302
    const-string/jumbo v3, "prime256v1"

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 305
    :cond_4f
    invoke-static {p1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    .line 304
    iput-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_55
    .catch Ljava/security/InvalidKeyException; {:try_start_36 .. :try_end_55} :catch_57
    .catchall {:try_start_36 .. :try_end_55} :catchall_21

    :goto_55
    monitor-exit v4

    .line 310
    return-void

    .line 306
    :catch_57
    move-exception v1

    .local v1, "e":Ljava/security/InvalidKeyException;
    goto :goto_55
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 616
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 5
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 317
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 319
    const-string/jumbo v2, "Handshake listener must be set before starting the handshake."

    .line 318
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 316
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0

    .line 321
    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_12

    monitor-exit v1

    .line 323
    return-void
.end method

.method setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 341
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    .line 342
    return-void

    .line 340
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 621
    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    .line 485
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 486
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 487
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 6
    .param p1, "mode"    # Z

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not change mode after handshake: state == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_25

    .line 625
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 630
    :cond_28
    const/4 v0, 0x1

    :try_start_29
    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_25

    monitor-exit v1

    .line 632
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 633
    return-void
.end method

.method setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 1675
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 638
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_17

    move-result-object v0

    .line 646
    :try_start_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 647
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1f

    monitor-exit v1

    .line 644
    return-object v0

    .line 645
    :catchall_17
    move-exception v0

    .line 646
    :try_start_18
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 647
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    .line 645
    throw v0
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1f

    .line 642
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-object v0

    .line 658
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    monitor-exit v1

    .line 656
    return-object v0

    .line 657
    :catchall_10
    move-exception v0

    .line 658
    :try_start_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 657
    throw v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_15

    .line 654
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 13
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 666
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 668
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_16

    move-result-object v0

    .line 670
    :try_start_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1b

    monitor-exit v7

    .line 668
    return-object v0

    .line 669
    :catchall_16
    move-exception v0

    .line 670
    :try_start_17
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 669
    throw v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1b

    .line 666
    :catchall_1b
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 41
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 684
    if-eqz p1, :cond_70

    const/16 v28, 0x1

    :goto_4
    const-string/jumbo v29, "srcs is null"

    invoke-static/range {v28 .. v29}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 685
    if-eqz p4, :cond_73

    const/16 v28, 0x1

    :goto_e
    const-string/jumbo v29, "dsts is null"

    invoke-static/range {v28 .. v29}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 686
    add-int v28, p2, p3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, p2

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 687
    add-int v28, p5, p6

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, p5

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 690
    invoke-static/range {p4 .. p6}, Lcom/android/org/conscrypt/ConscryptEngine;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v10

    .line 691
    .local v10, "dstLength":I
    add-int v15, p5, p6

    .line 693
    .local v15, "endOffset":I
    add-int v26, p2, p3

    .line 694
    .local v26, "srcsEndOffset":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v24

    .line 696
    .local v24, "srcLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 697
    :try_start_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_262

    .line 713
    :goto_56
    :pswitch_56
    sget-object v16, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 714
    .local v16, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    move/from16 v28, v0

    if-nez v28, :cond_b7

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v16

    .line 716
    sget-object v28, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_a5

    .line 717
    sget-object v28, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 684
    .end local v10    # "dstLength":I
    .end local v15    # "endOffset":I
    .end local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v24    # "srcLength":J
    .end local v26    # "srcsEndOffset":I
    :cond_70
    const/16 v28, 0x0

    goto :goto_4

    .line 685
    :cond_73
    const/16 v28, 0x0

    goto :goto_e

    .line 700
    .restart local v10    # "dstLength":I
    .restart local v15    # "endOffset":I
    .restart local v24    # "srcLength":J
    .restart local v26    # "srcsEndOffset":I
    :pswitch_76
    :try_start_76
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_56

    .line 696
    :catchall_7a
    move-exception v28

    monitor-exit v29

    throw v28

    .line 705
    :pswitch_7d
    :try_start_7d
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 707
    :pswitch_98
    :try_start_98
    new-instance v28, Ljava/lang/IllegalStateException;

    .line 708
    const-string/jumbo v30, "Client/server mode must be set before calling unwrap"

    .line 707
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 719
    .restart local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_a5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    move/from16 v28, v0

    const/16 v30, 0x8

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_b7

    .line 720
    sget-object v28, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;
    :try_end_b5
    .catchall {:try_start_98 .. :try_end_b5} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 726
    :cond_b7
    :try_start_b7
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v28

    if-gtz v28, :cond_ea

    const/16 v19, 0x1

    .line 727
    .local v19, "noCleartextDataAvailable":Z
    :goto_bf
    const/16 v18, 0x0

    .line 728
    .local v18, "lenRemaining":I
    const-wide/16 v30, 0x0

    cmp-long v28, v24, v30

    if-lez v28, :cond_153

    if-eqz v19, :cond_153

    .line 729
    const-wide/16 v30, 0x5

    cmp-long v28, v24, v30

    if-gez v28, :cond_ed

    .line 731
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_e8
    .catchall {:try_start_b7 .. :try_end_e8} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 726
    .end local v18    # "lenRemaining":I
    .end local v19    # "noCleartextDataAvailable":Z
    :cond_ea
    const/16 v19, 0x0

    .restart local v19    # "noCleartextDataAvailable":Z
    goto :goto_bf

    .line 734
    .restart local v18    # "lenRemaining":I
    :cond_ed
    :try_start_ed
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v20

    .line 735
    .local v20, "packetLength":I
    if-gez v20, :cond_100

    .line 736
    new-instance v28, Ljavax/net/ssl/SSLException;

    const-string/jumbo v30, "Unable to parse TLS packet header"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 739
    :cond_100
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v28, v24, v30

    if-gez v28, :cond_124

    .line 742
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_122
    .catchall {:try_start_ed .. :try_end_122} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 746
    :cond_124
    move/from16 v18, v20

    .line 753
    .end local v20    # "packetLength":I
    :cond_126
    const/4 v6, 0x0

    .line 754
    .local v6, "bytesConsumed":I
    if-lez v18, :cond_13f

    move/from16 v0, p2

    move/from16 v1, v26

    if-ge v0, v1, :cond_13f

    .line 756
    :cond_12f
    :try_start_12f
    aget-object v23, p1, p2

    .line 757
    .local v23, "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_7a

    move-result v22

    .line 758
    .local v22, "remaining":I
    if-nez v22, :cond_170

    .line 761
    add-int/lit8 p2, p2, 0x1

    .line 791
    :goto_139
    move/from16 v0, p2

    move/from16 v1, v26

    if-lt v0, v1, :cond_12f

    .line 795
    .end local v22    # "remaining":I
    .end local v23    # "src":Ljava/nio/ByteBuffer;
    :cond_13f
    :goto_13f
    const/4 v7, 0x0

    .line 797
    .local v7, "bytesProduced":I
    if-lez v10, :cond_218

    .line 799
    move/from16 v17, p5

    .local v17, "idx":I
    :goto_144
    move/from16 v0, v17

    if-ge v0, v15, :cond_1a6

    .line 800
    :try_start_148
    aget-object v9, p4, v17

    .line 801
    .local v9, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_14d
    .catch Ljavax/net/ssl/SSLException; {:try_start_148 .. :try_end_14d} :catch_1e2
    .catch Ljava/io/InterruptedIOException; {:try_start_148 .. :try_end_14d} :catch_222
    .catch Ljava/io/EOFException; {:try_start_148 .. :try_end_14d} :catch_238
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14d} :catch_22d
    .catchall {:try_start_148 .. :try_end_14d} :catchall_7a

    move-result v28

    if-nez v28, :cond_197

    .line 799
    :cond_150
    add-int/lit8 v17, v17, 0x1

    goto :goto_144

    .line 747
    .end local v6    # "bytesConsumed":I
    .end local v7    # "bytesProduced":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v17    # "idx":I
    :cond_153
    if-eqz v19, :cond_126

    .line 749
    :try_start_155
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_16e
    .catchall {:try_start_155 .. :try_end_16e} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 765
    .restart local v6    # "bytesConsumed":I
    .restart local v22    # "remaining":I
    .restart local v23    # "src":Ljava/nio/ByteBuffer;
    :cond_170
    :try_start_170
    move/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v27

    .line 766
    .local v27, "written":I
    if-lez v27, :cond_193

    .line 767
    add-int v6, v6, v27

    .line 768
    sub-int v18, v18, v27

    .line 769
    if-eqz v18, :cond_13f

    .line 774
    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_13f

    .line 775
    add-int/lit8 p2, p2, 0x1

    goto :goto_139

    .line 788
    :cond_193
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_196
    .catchall {:try_start_170 .. :try_end_196} :catchall_7a

    goto :goto_13f

    .line 805
    .end local v22    # "remaining":I
    .end local v23    # "src":Ljava/nio/ByteBuffer;
    .end local v27    # "written":I
    .restart local v7    # "bytesProduced":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v17    # "idx":I
    :cond_197
    :try_start_197
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 806
    .local v8, "bytesRead":I
    if-lez v8, :cond_1d3

    .line 807
    add-int/2addr v7, v8

    .line 808
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_1a3
    .catch Ljavax/net/ssl/SSLException; {:try_start_197 .. :try_end_1a3} :catch_1e2
    .catch Ljava/io/InterruptedIOException; {:try_start_197 .. :try_end_1a3} :catch_222
    .catch Ljava/io/EOFException; {:try_start_197 .. :try_end_1a3} :catch_238
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_1a3} :catch_22d
    .catchall {:try_start_197 .. :try_end_1a3} :catchall_7a

    move-result v28

    if-eqz v28, :cond_150

    .line 860
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v17    # "idx":I
    :cond_1a6
    :goto_1a6
    :try_start_1a6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    move/from16 v28, v0

    if-eqz v28, :cond_24d

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v21

    .line 861
    .local v21, "pendingCleartextBytes":I
    :goto_1b2
    if-lez v21, :cond_257

    .line 864
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 865
    sget-object v31, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_251

    .end local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_1c0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v31

    .line 864
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1d1
    .catchall {:try_start_1a6 .. :try_end_1d1} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 814
    .end local v21    # "pendingCleartextBytes":I
    .restart local v8    # "bytesRead":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v16    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v17    # "idx":I
    :cond_1d3
    packed-switch v8, :pswitch_data_278

    .line 821
    :try_start_1d6
    const-string/jumbo v28, "SSL_read"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v28

    throw v28
    :try_end_1e2
    .catch Ljavax/net/ssl/SSLException; {:try_start_1d6 .. :try_end_1e2} :catch_1e2
    .catch Ljava/io/InterruptedIOException; {:try_start_1d6 .. :try_end_1e2} :catch_222
    .catch Ljava/io/EOFException; {:try_start_1d6 .. :try_end_1e2} :catch_238
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1e2} :catch_22d
    .catchall {:try_start_1d6 .. :try_end_1e2} :catchall_7a

    .line 832
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v17    # "idx":I
    :catch_1e2
    move-exception v14

    .line 833
    .local v14, "e":Ljavax/net/ssl/SSLException;
    :try_start_1e3
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v28

    if-lez v28, :cond_243

    .line 836
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    move/from16 v28, v0

    if-nez v28, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    move-object/from16 v28, v0

    if-nez v28, :cond_1fd

    .line 839
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeException:Ljavax/net/ssl/SSLException;

    .line 841
    :cond_1fd
    new-instance v28, Ljavax/net/ssl/SSLEngineResult;

    sget-object v30, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v31, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_20c
    .catchall {:try_start_1e3 .. :try_end_20c} :catchall_7a

    monitor-exit v29

    return-object v28

    .line 817
    .end local v14    # "e":Ljavax/net/ssl/SSLException;
    .restart local v8    # "bytesRead":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v17    # "idx":I
    :pswitch_20e
    :try_start_20e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v7, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_215
    .catch Ljavax/net/ssl/SSLException; {:try_start_20e .. :try_end_215} :catch_1e2
    .catch Ljava/io/InterruptedIOException; {:try_start_20e .. :try_end_215} :catch_222
    .catch Ljava/io/EOFException; {:try_start_20e .. :try_end_215} :catch_238
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_215} :catch_22d
    .catchall {:try_start_20e .. :try_end_215} :catchall_7a

    move-result-object v28

    monitor-exit v29

    return-object v28

    .line 830
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v17    # "idx":I
    :cond_218
    :try_start_218
    sget-object v28, Lcom/android/org/conscrypt/ConscryptEngine;->EMPTY:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I
    :try_end_221
    .catch Ljavax/net/ssl/SSLException; {:try_start_218 .. :try_end_221} :catch_1e2
    .catch Ljava/io/InterruptedIOException; {:try_start_218 .. :try_end_221} :catch_222
    .catch Ljava/io/EOFException; {:try_start_218 .. :try_end_221} :catch_238
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_221} :catch_22d
    .catchall {:try_start_218 .. :try_end_221} :catchall_7a

    goto :goto_1a6

    .line 847
    :catch_222
    move-exception v13

    .line 848
    .local v13, "e":Ljava/io/InterruptedIOException;
    :try_start_223
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v7, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_22a
    .catchall {:try_start_223 .. :try_end_22a} :catchall_7a

    move-result-object v28

    monitor-exit v29

    return-object v28

    .line 852
    .end local v13    # "e":Ljava/io/InterruptedIOException;
    :catch_22d
    move-exception v12

    .line 853
    .local v12, "e":Ljava/io/IOException;
    :try_start_22e
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 854
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v28

    throw v28

    .line 849
    .end local v12    # "e":Ljava/io/IOException;
    :catch_238
    move-exception v11

    .line 850
    .local v11, "e":Ljava/io/EOFException;
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 851
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v28

    throw v28

    .line 845
    .end local v11    # "e":Ljava/io/EOFException;
    .restart local v14    # "e":Ljavax/net/ssl/SSLException;
    :cond_243
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdown()V

    .line 846
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v28

    throw v28

    .line 860
    .end local v14    # "e":Ljavax/net/ssl/SSLException;
    :cond_24d
    const/16 v21, 0x0

    .restart local v21    # "pendingCleartextBytes":I
    goto/16 :goto_1b2

    .line 867
    :cond_251
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v16

    goto/16 :goto_1c0

    .line 871
    :cond_257
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v7, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_25e
    .catchall {:try_start_22e .. :try_end_25e} :catchall_7a

    move-result-object v28

    monitor-exit v29

    return-object v28

    .line 697
    nop

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_98
        :pswitch_76
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_7d
        :pswitch_56
        :pswitch_7d
    .end packed-switch

    .line 814
    :pswitch_data_278
    .packed-switch -0x3
        :pswitch_20e
        :pswitch_20e
    .end packed-switch
.end method

.method unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 10
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 676
    if-eqz p1, :cond_1e

    move v0, v1

    :goto_5
    const-string/jumbo v3, "srcs is null"

    invoke-static {v0, v3}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 677
    if-eqz p2, :cond_20

    :goto_d
    const-string/jumbo v0, "dsts is null"

    invoke-static {v1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 678
    array-length v3, p1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0

    :cond_1e
    move v0, v2

    .line 676
    goto :goto_5

    :cond_20
    move v1, v2

    .line 677
    goto :goto_d
.end method

.method public verifyCertificateChain([JLjava/lang/String;)V
    .registers 11
    .param p1, "certRefs"    # [J
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1564
    :try_start_0
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 1565
    .local v4, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v4, :cond_13

    .line 1566
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string/jumbo v6, "No X.509 TrustManager"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_11} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_21

    .line 1583
    .end local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_11
    move-exception v2

    .line 1584
    .local v2, "e":Ljava/security/cert/CertificateException;
    throw v2

    .line 1568
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_13
    if-eqz p1, :cond_18

    :try_start_15
    array-length v5, p1

    if-nez v5, :cond_28

    .line 1569
    :cond_18
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_21
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_21} :catch_11
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_21

    .line 1585
    .end local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_21
    move-exception v1

    .line 1586
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1572
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_28
    :try_start_28
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v3

    .line 1575
    .local v3, "peerCertChain":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)V

    .line 1577
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1578
    invoke-static {v4, v3, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 1588
    :goto_42
    return-void

    .line 1580
    :cond_43
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1581
    .local v0, "authType":Ljava/lang/String;
    invoke-static {v4, v3, v0, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
    :try_end_51
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_51} :catch_11
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_51} :catch_21

    goto :goto_42
.end method

.method public final wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1327
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-object v0

    .line 1329
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    monitor-exit v1

    .line 1327
    return-object v0

    .line 1328
    :catchall_10
    move-exception v0

    .line 1329
    :try_start_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 1328
    throw v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_15

    .line 1325
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 23
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1337
    if-eqz p1, :cond_28

    const/4 v12, 0x1

    :goto_3
    const-string/jumbo v13, "srcs is null"

    invoke-static {v12, v13}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1338
    if-eqz p4, :cond_2a

    const/4 v12, 0x1

    :goto_c
    const-string/jumbo v13, "dst is null"

    invoke-static {v12, v13}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1339
    add-int v12, p2, p3

    move-object/from16 v0, p1

    array-length v13, v0

    move/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1340
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 1341
    new-instance v12, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v12}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v12

    .line 1337
    :cond_28
    const/4 v12, 0x0

    goto :goto_3

    .line 1338
    :cond_2a
    const/4 v12, 0x0

    goto :goto_c

    .line 1344
    :cond_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/conscrypt/ConscryptEngine;->stateLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1345
    :try_start_31
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v12, :pswitch_data_192

    .line 1361
    :goto_38
    :pswitch_38
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1363
    .local v5, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v12, :cond_7d

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 1365
    sget-object v12, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v12, :cond_71

    .line 1366
    sget-object v12, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_50

    monitor-exit v13

    return-object v12

    .line 1348
    .end local v5    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :pswitch_4c
    :try_start_4c
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_38

    .line 1344
    :catchall_50
    move-exception v12

    monitor-exit v13

    throw v12

    .line 1352
    :pswitch_53
    :try_start_53
    new-instance v12, Ljavax/net/ssl/SSLEngineResult;

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_50

    monitor-exit v13

    return-object v12

    .line 1354
    :pswitch_68
    :try_start_68
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 1355
    const-string/jumbo v14, "Client/server mode must be set before calling wrap"

    .line 1354
    invoke-direct {v12, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1369
    .restart local v5    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_71
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v14, 0x8

    if-ne v12, v14, :cond_7d

    .line 1370
    sget-object v12, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_50

    monitor-exit v13

    return-object v12

    .line 1375
    :cond_7d
    const/4 v10, 0x0

    .line 1376
    .local v10, "srcsLen":I
    add-int v4, p2, p3

    .line 1377
    .local v4, "endOffset":I
    move/from16 v6, p2

    .local v6, "i":I
    :goto_82
    if-ge v6, v4, :cond_be

    .line 1378
    :try_start_84
    aget-object v9, p1, v6

    .line 1379
    .local v9, "src":Ljava/nio/ByteBuffer;
    if-nez v9, :cond_a9

    .line 1380
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "srcs["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "] is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1382
    :cond_a9
    const/16 v12, 0x4000

    if-ne v10, v12, :cond_b0

    .line 1377
    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_82

    .line 1386
    :cond_b0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    add-int/2addr v10, v12

    .line 1387
    const/16 v12, 0x4000

    if-gt v10, v12, :cond_bb

    if-gez v10, :cond_ad

    .line 1392
    :cond_bb
    const/16 v10, 0x4000

    goto :goto_ad

    .line 1396
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    :cond_be
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-static {v10}, Lcom/android/org/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v14

    if-ge v12, v14, :cond_dd

    .line 1397
    new-instance v12, Ljavax/net/ssl/SSLEngineResult;

    .line 1398
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1397
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v12, v14, v15, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_db
    .catchall {:try_start_84 .. :try_end_db} :catchall_50

    monitor-exit v13

    return-object v12

    .line 1401
    :cond_dd
    const/4 v3, 0x0

    .line 1402
    .local v3, "bytesProduced":I
    const/4 v2, 0x0

    .line 1404
    .local v2, "bytesConsumed":I
    move/from16 v6, p2

    :goto_e1
    if-ge v6, v4, :cond_129

    .line 1405
    :try_start_e3
    aget-object v9, p1, v6

    .line 1406
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_11f

    const/4 v12, 0x1

    :goto_e8
    const-string/jumbo v14, "srcs[%d] is null"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1407
    :cond_f2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v12

    if-eqz v12, :cond_186

    .line 1411
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    rsub-int v14, v2, 0x4000

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1410
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 1412
    .local v8, "result":I
    if-lez v8, :cond_138

    .line 1413
    add-int/2addr v2, v8

    .line 1415
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v7

    .line 1417
    .local v7, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v7, :cond_125

    .line 1418
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;
    :try_end_11b
    .catchall {:try_start_e3 .. :try_end_11b} :catchall_50

    if-eq v12, v14, :cond_121

    monitor-exit v13

    .line 1419
    return-object v7

    .line 1406
    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v8    # "result":I
    :cond_11f
    const/4 v12, 0x0

    goto :goto_e8

    .line 1421
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .restart local v8    # "result":I
    :cond_121
    :try_start_121
    invoke-virtual {v7}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    .line 1423
    :cond_125
    const/16 v12, 0x4000

    if-ne v2, v12, :cond_f2

    .line 1486
    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v8    # "result":I
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    :cond_129
    if-nez v2, :cond_18a

    .line 1488
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v12, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_133
    .catchall {:try_start_121 .. :try_end_133} :catchall_50

    move-result-object v7

    .line 1489
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v7, :cond_18a

    monitor-exit v13

    .line 1490
    return-object v7

    .line 1429
    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .restart local v8    # "result":I
    .restart local v9    # "src":Ljava/nio/ByteBuffer;
    :cond_138
    :try_start_138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/SslWrapper;

    invoke-virtual {v12, v8}, Lcom/android/org/conscrypt/SslWrapper;->getError(I)I

    move-result v11

    .line 1430
    .local v11, "sslError":I
    packed-switch v11, :pswitch_data_1a8

    .line 1478
    :pswitch_143
    const-string/jumbo v12, "SSL_write"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/org/conscrypt/ConscryptEngine;->shutdownWithError(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v12

    throw v12

    .line 1434
    :pswitch_14d
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1435
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_157
    .catchall {:try_start_138 .. :try_end_157} :catchall_50

    move-result-object v7

    .line 1437
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v7, :cond_15c

    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_15a
    monitor-exit v13

    return-object v7

    .line 1438
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_15c
    :try_start_15c
    sget-object v7, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_15a

    .line 1446
    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_15f
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_50

    move-result-object v7

    .line 1448
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v7, :cond_16b

    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_169
    monitor-exit v13

    return-object v7

    .line 1450
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_16b
    :try_start_16b
    new-instance v7, Ljavax/net/ssl/SSLEngineResult;

    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v12

    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v7, v12, v14, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_169

    .line 1472
    :pswitch_177
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_17e
    .catchall {:try_start_16b .. :try_end_17e} :catchall_50

    move-result-object v7

    .line 1474
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v7, :cond_183

    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_181
    monitor-exit v13

    return-object v7

    .line 1475
    .restart local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_183
    :try_start_183
    sget-object v7, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_181

    .line 1404
    .end local v7    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v8    # "result":I
    .end local v11    # "sslError":I
    :cond_186
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e1

    .line 1496
    .end local v9    # "src":Ljava/nio/ByteBuffer;
    :cond_18a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_18f
    .catchall {:try_start_183 .. :try_end_18f} :catchall_50

    move-result-object v12

    monitor-exit v13

    return-object v12

    .line 1345
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_68
        :pswitch_4c
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_53
        :pswitch_53
    .end packed-switch

    .line 1430
    :pswitch_data_1a8
    .packed-switch 0x2
        :pswitch_15f
        :pswitch_177
        :pswitch_143
        :pswitch_143
        :pswitch_14d
    .end packed-switch
.end method
