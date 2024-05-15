.class final Lcom/android/org/conscrypt/ConscryptEngine;
.super Lcom/android/org/conscrypt/AbstractConscryptEngine;
.source "ConscryptEngine.java"

# interfaces
.implements Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final blacklist CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final blacklist NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static blacklist defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;


# instance fields
.field private blacklist activeSession:Lcom/android/org/conscrypt/ActiveSession;

.field private blacklist bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

.field private blacklist channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

.field private blacklist closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

.field private final blacklist externalSession:Ljavax/net/ssl/SSLSession;

.field private blacklist handshakeFinished:Z

.field private blacklist handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

.field private blacklist lazyDirectBuffer:Ljava/nio/ByteBuffer;

.field private blacklist maxSealOverhead:I

.field private final blacklist networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

.field private blacklist peerHostname:Ljava/lang/String;

.field private final blacklist peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

.field private final blacklist singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final blacklist singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private final blacklist ssl:Lcom/android/org/conscrypt/NativeSsl;

.field private final blacklist sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private blacklist state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 104
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 106
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 108
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 109
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 111
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 4
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 181
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 117
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 159
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 160
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 177
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 178
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 182
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 183
    invoke-static {}, Lcom/android/org/conscrypt/PeerInfoProvider;->nullProvider()Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 184
    invoke-static {p1, p0, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 185
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 186
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/PeerInfoProvider;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .registers 6
    .param p1, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "peerInfoProvider"    # Lcom/android/org/conscrypt/PeerInfoProvider;
    .param p3, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 196
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 117
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 159
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 160
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 177
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 178
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 197
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 198
    const-string v0, "peerInfoProvider"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/PeerInfoProvider;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 199
    invoke-static {p1, p0, p3}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 200
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 201
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V
    .registers 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 188
    invoke-direct {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 117
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 159
    new-instance v0, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v1, Lcom/android/org/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lcom/android/org/conscrypt/ConscryptEngine$1;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    .line 160
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 177
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 178
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 189
    iput-object p3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 190
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lcom/android/org/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    .line 191
    invoke-static {p3, p0, p0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 192
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    .line 193
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 101
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/org/conscrypt/ConscryptEngine;)Lcom/android/org/conscrypt/ConscryptSession;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 101
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method private blacklist beginHandshakeInternal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 406
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eqz v0, :cond_8b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    .line 420
    return-void

    .line 417
    :cond_12
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Engine has already been closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1a
    nop

    .line 423
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 425
    const/4 v0, 0x1

    .line 428
    .local v0, "releaseResources":Z
    :try_start_20
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2, v3, v4}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 433
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v2

    .line 434
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v4

    iget-object v5, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 433
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v2

    .line 435
    .local v2, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v2, :cond_4a

    .line 436
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2, v3}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 440
    .end local v2    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_4a
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->getMaxSealOverhead()I

    move-result v2

    iput v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 441
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_55} :catch_5e
    .catchall {:try_start_20 .. :try_end_55} :catchall_5c

    .line 442
    const/4 v0, 0x0

    .line 454
    if-eqz v0, :cond_5b

    .line 455
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 458
    :cond_5b
    return-void

    .line 454
    :catchall_5c
    move-exception v1

    goto :goto_85

    .line 443
    :catch_5e
    move-exception v2

    .line 445
    .local v2, "e":Ljava/io/IOException;
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "message":Ljava/lang/String;
    const-string v4, "unexpected CCS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 448
    const-string v4, "ssl_unexpected_ccs: host=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "logMessage":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 451
    .end local v1    # "logMessage":Ljava/lang/String;
    :cond_7d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 452
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v1
    :try_end_85
    .catchall {:try_start_5f .. :try_end_85} :catchall_5c

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_85
    if-eqz v0, :cond_8a

    .line 455
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 457
    :cond_8a
    throw v1

    .line 408
    .end local v0    # "releaseResources":Z
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/server mode must be set before handshake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p0, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p1, "dstsOffset"    # I
    .param p2, "dstsLength"    # I

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, "capacity":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_2f

    .line 943
    aget-object v2, p0, v1

    .line 944
    .local v2, "dst":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dsts[%d] is null"

    invoke-static {v3, v5, v4}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 945
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_29

    .line 948
    if-lt v1, p1, :cond_26

    add-int v3, p1, p2

    if-ge v1, v3, :cond_26

    .line 949
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    .line 942
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 946
    .restart local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_29
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 952
    .end local v1    # "i":I
    .end local v2    # "dst":Ljava/nio/ByteBuffer;
    :cond_2f
    return v0
.end method

.method private static blacklist calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .registers 10
    .param p0, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p1, "srcsOffset"    # I
    .param p2, "srcsEndOffset"    # I

    .line 956
    const-wide/16 v0, 0x0

    .line 957
    .local v0, "len":J
    move v2, p1

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_2e

    .line 958
    aget-object v3, p0, v2

    .line 959
    .local v3, "src":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_12

    .line 962
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 957
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 960
    .restart local v3    # "src":Ljava/nio/ByteBuffer;
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srcs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 964
    .end local v2    # "i":I
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    :cond_2e
    return-wide v0
.end method

.method private blacklist clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getClientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private blacklist closeAll()V
    .registers 1

    .line 1347
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 1348
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeInbound()V

    .line 1349
    return-void
.end method

.method private blacklist closeAndFreeResources()V
    .registers 2

    .line 1673
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1674
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1675
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1676
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->close()V

    .line 1678
    :cond_17
    return-void
.end method

.method private blacklist convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1133
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    goto :goto_e

    .line 1136
    :cond_9
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_e
    :goto_e
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    return-object v0
.end method

.method private blacklist directByteBufferAddress(Ljava/nio/ByteBuffer;I)J
    .registers 7
    .param p1, "directBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I

    .line 1215
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist finishHandshake()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1005
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    if-eqz v0, :cond_a

    .line 1006
    invoke-virtual {v0}, Lcom/android/org/conscrypt/HandshakeListener;->onHandshakeFinished()V

    .line 1008
    :cond_a
    return-void
.end method

.method private blacklist freeIfDone()V
    .registers 2

    .line 1352
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1353
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 1355
    :cond_f
    return-void
.end method

.method static blacklist getDefaultBufferAllocator()Lcom/android/org/conscrypt/BufferAllocator;
    .registers 1

    .line 225
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    return-object v0
.end method

.method private blacklist getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .registers 3

    .line 1336
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_f

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    .line 1342
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1340
    :cond_f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method private blacklist getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "pending"    # I

    .line 1332
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_b
    return-object v0
.end method

.method private blacklist getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4

    .line 543
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_7

    .line 544
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 546
    :cond_7
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_34

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_25
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    .line 548
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 558
    :pswitch_31
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_28
        :pswitch_25
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private blacklist getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 1206
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_12

    .line 1207
    const/16 v0, 0x4000

    const/16 v1, 0x4145

    .line 1208
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1207
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    .line 1210
    :cond_12
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1211
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private blacklist handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->doHandshake()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_2c

    .line 973
    .local v0, "ssl_error_code":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_23

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 988
    .end local v0    # "ssl_error_code":I
    nop

    .line 993
    :try_start_d
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V

    .line 995
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->finishHandshake()V

    .line 996
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_2c

    return-object v0

    .line 977
    .restart local v0    # "ssl_error_code":I
    :cond_20
    :try_start_20
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1

    .line 975
    :cond_23
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    return-object v1

    .line 997
    .end local v0    # "ssl_error_code":I
    :catch_2c
    move-exception v0

    goto :goto_34

    .line 983
    :catch_2e
    move-exception v0

    .line 986
    .local v0, "e":Ljava/io/IOException;
    :try_start_2f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 987
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_2c

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_34
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist isHandshakeStarted()Z
    .registers 3

    .line 358
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    .line 363
    return v1

    .line 361
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1322
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_d

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_d

    .line 1325
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0

    .line 1327
    :cond_d
    return-object p1
.end method

.method private blacklist newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 7
    .param p1, "bytesConsumed"    # I
    .param p2, "bytesProduced"    # I
    .param p3, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1366
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1367
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_c

    move-object v2, p3

    goto :goto_10

    :cond_c
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    :goto_10
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1366
    return-object v0
.end method

.method private static blacklist newSsl(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 5
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .param p2, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 206
    :try_start_0
    invoke-static {p0, p1, p2, p1}, Lcom/android/org/conscrypt/NativeSsl;->newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 207
    :catch_5
    move-exception v0

    .line 208
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .registers 3
    .param p1, "err"    # Ljava/lang/String;

    .line 1358
    iget-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_a

    .line 1359
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1361
    :cond_a
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist pendingInboundCleartextBytes()I
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method private static blacklist pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2
    .param p0, "pendingOutboundBytes"    # I

    .line 575
    if-lez p0, :cond_5

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_7

    :cond_5
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_7
    return-object v0
.end method

.method private blacklist provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 3

    .line 629
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_e

    .line 630
    :cond_a
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    .line 629
    :goto_e
    return-object v0
.end method

.method private blacklist provideHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 621
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    goto :goto_f

    .line 622
    :cond_b
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_f
    monitor-exit v0

    .line 621
    return-object v1

    .line 623
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist provideSession()Lcom/android/org/conscrypt/ConscryptSession;
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 608
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_16

    .line 609
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_14

    :cond_10
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_14
    monitor-exit v0

    return-object v1

    .line 611
    :cond_16
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_21

    .line 613
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 615
    :cond_21
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    monitor-exit v0

    return-object v1

    .line 616
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private blacklist readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pending"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, "bytesRead":I
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1264
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p2, :cond_2d

    .line 1265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1266
    .local v2, "limit":I
    sub-int v3, v2, v1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1267
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1268
    invoke-direct {p0, p1, v1, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4

    move v0, v4

    .line 1270
    if-lez v0, :cond_2d

    .line 1271
    add-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2d

    .line 1275
    :cond_28
    invoke-direct {p0, p1, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e

    move v0, v4

    .line 1279
    .end local v2    # "limit":I
    .end local v3    # "len":I
    :cond_2d
    :goto_2d
    return v0

    .line 1280
    .end local v0    # "bytesRead":I
    .end local v1    # "pos":I
    :catch_2e
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    const/4 v0, 0x0

    .line 1293
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1294
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1295
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1300
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1303
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1304
    .local v2, "bytesToRead":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1305
    .local v3, "bytesRead":I
    if-lez v3, :cond_2d

    .line 1306
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1307
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1308
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_34

    .line 1311
    :cond_2d
    nop

    .line 1313
    if-eqz v0, :cond_33

    .line 1315
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1311
    :cond_33
    return v3

    .line 1313
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3a

    .line 1315
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1317
    :cond_3a
    throw v1
.end method

.method private blacklist readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .param p4, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1222
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    .line 1223
    .local v0, "pendingNet":I
    if-lez v0, :cond_46

    .line 1225
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1226
    .local v1, "capacity":I
    if-ge v1, v0, :cond_22

    .line 1227
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1229
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v4, :cond_16

    move-object v4, p4

    goto :goto_1a

    :cond_16
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    .line 1228
    :goto_1a
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1227
    return-object v2

    .line 1234
    :cond_22
    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 1236
    .local v2, "produced":I
    if-gtz v2, :cond_2c

    .line 1240
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V

    goto :goto_2e

    .line 1242
    :cond_2c
    add-int/2addr p3, v2

    .line 1243
    sub-int/2addr v0, v2

    .line 1246
    :goto_2e
    new-instance v3, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    .line 1248
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v5, :cond_3a

    move-object v5, p4

    goto :goto_3e

    :cond_3a
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 1247
    :goto_3e
    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    invoke-direct {v3, v4, v5, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_48

    .line 1246
    return-object v3

    .line 1251
    .end local v1    # "capacity":I
    .end local v2    # "produced":I
    :cond_46
    const/4 v1, 0x0

    return-object v1

    .line 1252
    .end local v0    # "pendingNet":I
    :catch_48
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readPlaintextData(Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1076
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1077
    .local v1, "limit":I
    const/16 v2, 0x4145

    sub-int v3, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1078
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1079
    invoke-direct {p0, p1, v0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1080
    .local v3, "bytesRead":I
    if-lez v3, :cond_21

    .line 1081
    add-int v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1083
    :cond_21
    return v3

    .line 1087
    .end local v3    # "bytesRead":I
    :cond_22
    invoke-direct {p0, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I

    move-result v3
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_26} :catch_27

    return v3

    .line 1088
    .end local v0    # "pos":I
    .end local v1    # "limit":I
    .end local v2    # "len":I
    :catch_27
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1095
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    .registers 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1100
    const/4 v0, 0x0

    .line 1103
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1104
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1110
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1114
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1115
    .local v2, "bytesToRead":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1116
    .local v3, "bytesRead":I
    if-lez v3, :cond_2d

    .line 1118
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1120
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_34

    .line 1123
    :cond_2d
    nop

    .line 1125
    if-eqz v0, :cond_33

    .line 1127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1123
    :cond_33
    return v3

    .line 1125
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3a

    .line 1127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1129
    :cond_3a
    throw v1
.end method

.method private blacklist resetSingleDstBuffer()V
    .registers 4

    .line 1809
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1810
    return-void
.end method

.method private blacklist resetSingleSrcBuffer()V
    .registers 4

    .line 1800
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1801
    return-void
.end method

.method private blacklist sendSSLShutdown()V
    .registers 2

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1669
    goto :goto_7

    .line 1666
    :catch_6
    move-exception v0

    .line 1670
    :goto_7
    return-void
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1817
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method static blacklist setDefaultBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 1
    .param p0, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 217
    sput-object p0, Lcom/android/org/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 218
    return-void
.end method

.method private blacklist singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1804
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1805
    return-object v0
.end method

.method private blacklist singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1795
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1796
    return-object v0
.end method

.method private blacklist transitionTo(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 1821
    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/16 v1, 0x8

    if-eq p1, v1, :cond_8

    goto :goto_33

    .line 1828
    :cond_8
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_33

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-lt v2, v0, :cond_33

    if-ge v2, v1, :cond_33

    .line 1829
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_33

    .line 1823
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1824
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 1825
    nop

    .line 1839
    :cond_33
    :goto_33
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 1840
    return-void
.end method

.method private blacklist writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1144
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1146
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1147
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "bytesWritten":I
    goto :goto_13

    .line 1149
    .end local v1    # "bytesWritten":I
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1152
    .restart local v1    # "bytesWritten":I
    :goto_13
    if-lez v1, :cond_1a

    .line 1153
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1156
    :cond_1a
    return v1

    .line 1157
    .end local v0    # "pos":I
    .end local v1    # "bytesWritten":I
    :catch_1b
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1159
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/4 v0, 0x0

    .line 1171
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1172
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1173
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1178
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1181
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1182
    .local v2, "limit":I
    sub-int v3, v2, p2

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1183
    .local v3, "bytesToCopy":I
    add-int v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1184
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1186
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1189
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1191
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4

    .line 1194
    .local v4, "bytesWritten":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_44

    .line 1196
    nop

    .line 1198
    if-eqz v0, :cond_43

    .line 1200
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1196
    :cond_43
    return v4

    .line 1198
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToCopy":I
    .end local v4    # "bytesWritten":I
    :catchall_44
    move-exception v1

    if-eqz v0, :cond_4a

    .line 1200
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1202
    :cond_4a
    throw v1
.end method

.method private blacklist writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1017
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1019
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1020
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .local v1, "sslWrote":I
    goto :goto_13

    .line 1022
    .end local v1    # "sslWrote":I
    :cond_f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 1024
    .restart local v1    # "sslWrote":I
    :goto_13
    if-lez v1, :cond_1a

    .line 1025
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1027
    :cond_1a
    return v1

    .line 1028
    .end local v0    # "pos":I
    .end local v1    # "sslWrote":I
    :catch_1b
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v1

    throw v1
.end method

.method private blacklist writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .registers 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/org/conscrypt/NativeSsl;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private blacklist writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1038
    const/4 v0, 0x0

    .line 1041
    .local v0, "allocatedBuffer":Lcom/android/org/conscrypt/AllocatedBuffer;
    :try_start_1
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    if-eqz v1, :cond_11

    .line 1042
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1043
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_15

    .line 1048
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1052
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1053
    .local v2, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1054
    .local v3, "bytesToWrite":I
    add-int v4, p2, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1055
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1056
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1058
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1059
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1061
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v4
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3d

    .line 1063
    if-eqz v0, :cond_3c

    .line 1065
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1061
    :cond_3c
    return v4

    .line 1063
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToWrite":I
    :catchall_3d
    move-exception v1

    if-eqz v0, :cond_43

    .line 1065
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1067
    :cond_43
    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api beginHandshake()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 401
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 402
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .line 1702
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_c

    .line 1703
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1704
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1706
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1, p3, p2, v0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .line 1719
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1691
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1692
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1693
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v1, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1695
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_d
    invoke-interface {p1, p2, v1, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1713
    invoke-interface {p1, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clientCertificateRequested([B[I[[B)V
    .registers 5
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1660
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 1661
    return-void
.end method

.method public blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 1559
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api closeInbound()V
    .registers 6

    .line 462
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 463
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2a

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_f

    goto :goto_2a

    .line 466
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 467
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_1e

    .line 468
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_21

    .line 470
    :cond_1e
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 472
    :goto_21
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_28

    .line 475
    :cond_25
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 477
    :goto_28
    monitor-exit v0

    .line 478
    return-void

    .line 464
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 477
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist core-platform-api test-api closeOutbound()V
    .registers 6

    .line 482
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 483
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2d

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_f

    goto :goto_2d

    .line 486
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 487
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1e

    .line 488
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_21

    .line 490
    :cond_1e
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 492
    :goto_21
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 493
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_2b

    .line 496
    :cond_28
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 498
    :goto_2b
    monitor-exit v0

    .line 499
    return-void

    .line 484
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    .line 498
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1762
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f

    goto :goto_17

    .line 1765
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    .line 1766
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 1763
    :cond_17
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    monitor-exit v0

    return-object v1

    .line 1765
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1683
    const/16 v0, 0x8

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 1685
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1686
    nop

    .line 1687
    return-void

    .line 1685
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1686
    throw v0
.end method

.method public whitelist core-platform-api test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1784
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getChannelId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 282
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 286
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_17

    .line 290
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 287
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v1

    .line 283
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v1

    .line 291
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public whitelist core-platform-api test-api getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEnableSessionCreation()Z
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1789
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1790
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return-object v1

    .line 1791
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist core-platform-api test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 3

    .line 537
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 538
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 539
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method blacklist getHostname()Ljava/lang/String;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist core-platform-api test-api getNeedClientAuth()Z
    .registers 2

    .line 580
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public blacklist getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .line 1725
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public whitelist core-platform-api test-api getPeerPort()I
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .registers 3

    .line 524
    invoke-super {p0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 525
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 526
    return-object v0
.end method

.method public whitelist core-platform-api test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 635
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 640
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 1756
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUseClientMode()Z
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getWantClientAuth()Z
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method blacklist handshakeSession()Ljavax/net/ssl/SSLSession;
    .registers 4

    .line 588
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 589
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 590
    new-instance v1, Lcom/android/org/conscrypt/ExternalSession;

    new-instance v2, Lcom/android/org/conscrypt/ConscryptEngine$2;

    invoke-direct {v2, p0}, Lcom/android/org/conscrypt/ConscryptEngine$2;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ExternalSession;-><init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 597
    :cond_18
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 598
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist core-platform-api test-api isInboundDone()Z
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 656
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 657
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownReceived()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 658
    :cond_16
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit v0

    .line 656
    return v1

    .line 659
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public whitelist core-platform-api test-api isOutboundDone()Z
    .registers 4

    .line 664
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 665
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 666
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownSent()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 667
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    monitor-exit v0

    .line 665
    return v1

    .line 668
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method blacklist maxSealOverhead()I
    .registers 2

    .line 244
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    return v0
.end method

.method public blacklist onNewSessionEstablished(J)V
    .registers 6
    .param p1, "sslSessionNativePtr"    # J

    .line 1603
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1608
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1610
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 1613
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 1614
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1617
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 1615
    :catch_16
    move-exception v0

    .line 1618
    :goto_17
    return-void
.end method

.method public blacklist onSSLStateChange(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 1569
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1570
    const/16 v1, 0x10

    const/4 v2, 0x2

    if-eq p1, v1, :cond_35

    const/16 v1, 0x20

    if-eq p1, v1, :cond_d

    goto :goto_39

    .line 1578
    :cond_d
    :try_start_d
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eq v1, v2, :cond_30

    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    goto :goto_30

    .line 1580
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "type":I
    .end local p2    # "val":I
    throw v1

    .line 1583
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "type":I
    .restart local p2    # "val":I
    :cond_30
    :goto_30
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1584
    goto :goto_39

    .line 1574
    :cond_35
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1575
    nop

    .line 1589
    :goto_39
    monitor-exit v0

    .line 1590
    return-void

    .line 1589
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method blacklist pendingOutboundEncryptedBytes()I
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->getPendingWrittenBytes()I

    move-result v0

    return v0
.end method

.method public blacklist selectApplicationProtocol([B)I
    .registers 4
    .param p1, "protocols"    # [B

    .line 1775
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1776
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1777
    const/4 v1, 0x3

    return v1

    .line 1779
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    move-result v1

    return v1
.end method

.method public blacklist serverCertificateRequested()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1595
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 1596
    monitor-exit v0

    .line 1597
    return-void

    .line 1596
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 1564
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 1623
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1750
    nop

    .line 1751
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1750
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1752
    return-void
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1770
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1771
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1745
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1746
    return-void
.end method

.method blacklist setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 5
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 230
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 231
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 235
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 232
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not set buffer allocator after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "bufferAllocator":Lcom/android/org/conscrypt/BufferAllocator;
    throw v1

    .line 236
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "bufferAllocator":Lcom/android/org/conscrypt/BufferAllocator;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method blacklist setChannelIdEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 257
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 258
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 261
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_15

    .line 265
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iput-boolean p1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 262
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "enabled":Z
    throw v1

    .line 259
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "enabled":Z
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "enabled":Z
    throw v1

    .line 266
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "enabled":Z
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method blacklist setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .registers 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 308
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 312
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 313
    :try_start_9
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_45

    .line 318
    if-nez p1, :cond_1b

    .line 319
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    .line 321
    monitor-exit v0

    return-void

    .line 324
    :cond_1b
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_4d

    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_21
    instance-of v2, p1, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_2d

    .line 328
    move-object v2, p1

    check-cast v2, Ljava/security/interfaces/ECKey;

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    move-object v1, v2

    .line 330
    :cond_2d
    if-nez v1, :cond_3a

    .line 332
    const-string v2, "prime256v1"

    .line 333
    invoke-static {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    move-object v1, v2

    .line 335
    :cond_3a
    nop

    .line 336
    invoke-static {p1, v1}, Lcom/android/org/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;
    :try_end_41
    .catch Ljava/security/InvalidKeyException; {:try_start_21 .. :try_end_41} :catch_42
    .catchall {:try_start_21 .. :try_end_41} :catchall_4d

    .line 339
    .end local v1    # "ecParams":Ljava/security/spec/ECParameterSpec;
    goto :goto_43

    .line 337
    :catch_42
    move-exception v1

    .line 340
    :goto_43
    :try_start_43
    monitor-exit v0

    .line 341
    return-void

    .line 314
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    throw v1

    .line 340
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_4d

    throw v1

    .line 309
    :cond_50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed in server mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 683
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 684
    return-void
.end method

.method public whitelist core-platform-api test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public whitelist core-platform-api test-api setEnabledProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method blacklist setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 5
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .line 348
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 349
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_d

    .line 353
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeListener:Lcom/android/org/conscrypt/HandshakeListener;

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 350
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Handshake listener must be set before starting the handshake."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "handshakeListener":Lcom/android/org/conscrypt/HandshakeListener;
    throw v1

    .line 354
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "handshakeListener":Lcom/android/org/conscrypt/HandshakeListener;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method blacklist setHostname(Ljava/lang/String;)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 375
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public whitelist core-platform-api test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 688
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 689
    return-void
.end method

.method public whitelist core-platform-api test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .registers 3
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .line 531
    invoke-super {p0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 532
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lcom/android/org/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 533
    return-void
.end method

.method public whitelist core-platform-api test-api setUseClientMode(Z)V
    .registers 6
    .param p1, "mode"    # Z

    .line 693
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 694
    :try_start_3
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-nez v1, :cond_14

    .line 698
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 699
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 700
    monitor-exit v0

    .line 701
    return-void

    .line 695
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not change mode after handshake: state == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "mode":Z
    throw v1

    .line 700
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "mode":Z
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method blacklist setUseSessionTickets(Z)V
    .registers 3
    .param p1, "useSessionTickets"    # Z

    .line 1735
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 1736
    return-void
.end method

.method public whitelist core-platform-api test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 705
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 706
    return-void
.end method

.method public whitelist core-platform-api test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 712
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_17

    .line 714
    :try_start_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 715
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    monitor-exit v0

    .line 712
    return-object v1

    .line 714
    :catchall_17
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 715
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    .line 716
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 717
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist core-platform-api test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 724
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 726
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    .line 724
    return-object v1

    .line 726
    :catchall_10
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 727
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    throw v1

    .line 728
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dsts":[Ljava/nio/ByteBuffer;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist core-platform-api test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
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

    .line 734
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 736
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_16

    .line 738
    :try_start_11
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    .line 736
    return-object v1

    .line 738
    :catchall_16
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 739
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p3    # "offset":I
    .end local p4    # "length":I
    throw v1

    .line 740
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p3    # "offset":I
    .restart local p4    # "length":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 27
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

    .line 754
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const/4 v0, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_10

    move v7, v0

    goto :goto_11

    :cond_10
    move v7, v6

    :goto_11
    const-string v8, "srcs is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 755
    if-eqz v4, :cond_1a

    move v7, v0

    goto :goto_1b

    :cond_1a
    move v7, v6

    :goto_1b
    const-string v8, "dsts is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 756
    add-int v7, v3, p3

    array-length v8, v2

    invoke-static {v3, v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 757
    add-int v7, v5, p6

    array-length v8, v4

    invoke-static {v5, v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 760
    invoke-static/range {p4 .. p6}, Lcom/android/org/conscrypt/ConscryptEngine;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v7

    .line 761
    .local v7, "dstLength":I
    add-int v8, v5, p6

    .line 763
    .local v8, "endOffset":I
    add-int v9, v3, p3

    .line 764
    .local v9, "srcsEndOffset":I
    invoke-static {v2, v3, v9}, Lcom/android/org/conscrypt/ConscryptEngine;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v10

    .line 766
    .local v10, "srcLength":J
    iget-object v12, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v12

    .line 767
    :try_start_3b
    iget v13, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_1eb

    if-eqz v13, :cond_1df

    const/16 v14, 0x8

    if-eq v13, v0, :cond_5e

    const/4 v15, 0x6

    if-eq v13, v15, :cond_49

    if-eq v13, v14, :cond_49

    goto :goto_62

    .line 774
    :cond_49
    :try_start_49
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 776
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    invoke-direct {v0, v13, v14, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_59

    return-object v0

    .line 937
    :catchall_59
    move-exception v0

    move-wide/from16 v18, v10

    goto/16 :goto_1ee

    .line 770
    :cond_5e
    :try_start_5e
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 771
    nop

    .line 784
    :goto_62
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 785
    .local v13, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v15, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_1eb

    if-nez v15, :cond_7d

    .line 786
    :try_start_68
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    move-object v13, v15

    .line 787
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v15, :cond_75

    .line 788
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 790
    :cond_75
    iget v15, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-ne v15, v14, :cond_7d

    .line 791
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_59

    return-object v0

    .line 797
    :cond_7d
    :try_start_7d
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v14
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_1eb

    if-gtz v14, :cond_84

    goto :goto_85

    :cond_84
    move v0, v6

    :goto_85
    move v14, v0

    .line 798
    .local v14, "noCleartextDataAvailable":Z
    const/4 v0, 0x0

    .line 799
    .local v0, "lenRemaining":I
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-lez v15, :cond_d0

    if-eqz v14, :cond_d0

    .line 800
    const-wide/16 v15, 0x5

    cmp-long v15, v10, v15

    if-gez v15, :cond_a5

    .line 802
    :try_start_95
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    move/from16 v17, v0

    .end local v0    # "lenRemaining":I
    .local v17, "lenRemaining":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v15, v6, v0, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_59

    return-object v15

    .line 805
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :cond_a5
    move/from16 v17, v0

    .end local v0    # "lenRemaining":I
    .restart local v17    # "lenRemaining":I
    :try_start_a7
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 806
    .local v0, "packetLength":I
    if-ltz v0, :cond_c6

    .line 810
    int-to-long v5, v0

    cmp-long v5, v10, v5

    if-gez v5, :cond_c2

    .line 813
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_1eb

    move-wide/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "srcLength":J
    .local v18, "srcLength":J
    :try_start_bd
    invoke-direct {v5, v6, v15, v10, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v5

    .line 817
    .end local v18    # "srcLength":J
    .restart local v10    # "srcLength":J
    :cond_c2
    move-wide/from16 v18, v10

    .line 818
    .end local v10    # "srcLength":J
    .end local v17    # "lenRemaining":I
    .local v0, "lenRemaining":I
    .restart local v18    # "srcLength":J
    const/4 v10, 0x0

    goto :goto_e7

    .line 807
    .end local v18    # "srcLength":J
    .local v0, "packetLength":I
    .restart local v10    # "srcLength":J
    .restart local v17    # "lenRemaining":I
    :cond_c6
    move-wide/from16 v18, v10

    .end local v10    # "srcLength":J
    .restart local v18    # "srcLength":J
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Unable to parse TLS packet header"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v18    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v5

    .line 799
    .end local v17    # "lenRemaining":I
    .local v0, "lenRemaining":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v10    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_d0
    move/from16 v17, v0

    move-wide/from16 v18, v10

    .line 818
    .end local v0    # "lenRemaining":I
    .end local v10    # "srcLength":J
    .restart local v17    # "lenRemaining":I
    .restart local v18    # "srcLength":J
    if-eqz v14, :cond_e4

    .line 820
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v10, 0x0

    invoke-direct {v0, v5, v6, v10, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12
    :try_end_e3
    .catchall {:try_start_bd .. :try_end_e3} :catchall_1e9

    return-object v0

    .line 818
    :cond_e4
    const/4 v10, 0x0

    move/from16 v0, v17

    .line 824
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :goto_e7
    const/4 v5, 0x0

    .line 825
    .local v5, "bytesConsumed":I
    if-lez v0, :cond_118

    if-ge v3, v9, :cond_118

    .line 827
    .end local p2    # "srcsOffset":I
    .local v3, "srcsOffset":I
    :cond_ec
    :try_start_ec
    aget-object v6, v2, v3

    .line 828
    .local v6, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 829
    .local v11, "remaining":I
    if-nez v11, :cond_f7

    .line 832
    add-int/lit8 v3, v3, 0x1

    .line 833
    goto :goto_10a

    .line 836
    :cond_f7
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-direct {v1, v6, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 837
    .local v15, "written":I
    if-lez v15, :cond_112

    .line 838
    add-int/2addr v5, v15

    .line 839
    sub-int/2addr v0, v15

    .line 840
    if-nez v0, :cond_106

    .line 842
    goto :goto_10f

    .line 845
    :cond_106
    if-ne v15, v11, :cond_10f

    .line 846
    add-int/lit8 v3, v3, 0x1

    .line 862
    .end local v6    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v15    # "written":I
    :goto_10a
    if-lt v3, v9, :cond_ec

    move v6, v5

    move v5, v0

    goto :goto_11a

    .line 866
    :cond_10f
    :goto_10f
    move v6, v5

    move v5, v0

    goto :goto_11a

    .line 859
    .restart local v6    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v15    # "written":I
    :cond_112
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_115
    .catchall {:try_start_ec .. :try_end_115} :catchall_1f0

    .line 860
    move v6, v5

    move v5, v0

    goto :goto_11a

    .line 866
    .end local v3    # "srcsOffset":I
    .end local v6    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v15    # "written":I
    .restart local p2    # "srcsOffset":I
    :cond_118
    move v6, v5

    move v5, v0

    .end local v0    # "lenRemaining":I
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .local v5, "lenRemaining":I
    .local v6, "bytesConsumed":I
    :goto_11a
    const/4 v11, 0x0

    .line 868
    .local v11, "bytesProduced":I
    if-lez v7, :cond_195

    .line 870
    move/from16 v0, p5

    .local v0, "idx":I
    :goto_11f
    if-ge v0, v8, :cond_190

    .line 871
    :try_start_121
    aget-object v15, v4, v0

    .line 872
    .local v15, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-nez v16, :cond_12a

    .line 873
    goto :goto_13e

    .line 876
    :cond_12a
    invoke-direct {v1, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v16
    :try_end_12e
    .catch Ljava/io/InterruptedIOException; {:try_start_121 .. :try_end_12e} :catch_18c
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_12e} :catch_188
    .catchall {:try_start_121 .. :try_end_12e} :catchall_183

    move/from16 p2, v16

    .line 877
    .local p2, "bytesRead":I
    move/from16 v10, p2

    .end local p2    # "bytesRead":I
    .local v10, "bytesRead":I
    if-lez v10, :cond_14c

    .line 878
    add-int/2addr v11, v10

    .line 879
    :try_start_135
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v17

    if-eqz v17, :cond_13e

    .line 882
    move/from16 p2, v3

    goto :goto_194

    .line 870
    .end local v10    # "bytesRead":I
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    :cond_13e
    :goto_13e
    add-int/lit8 v0, v0, 0x1

    const/4 v10, 0x0

    goto :goto_11f

    .line 915
    .end local v0    # "idx":I
    :catch_142
    move-exception v0

    move/from16 p2, v3

    goto/16 :goto_1d0

    .line 913
    :catch_147
    move-exception v0

    move/from16 p2, v3

    goto/16 :goto_1d9

    .line 885
    .restart local v0    # "idx":I
    .restart local v10    # "bytesRead":I
    .restart local v15    # "dst":Ljava/nio/ByteBuffer;
    :cond_14c
    move/from16 v17, v0

    .end local v0    # "idx":I
    .local v17, "idx":I
    const/4 v0, -0x6

    if-eq v10, v0, :cond_168

    const/4 v0, -0x3

    if-eq v10, v0, :cond_162

    const/4 v0, -0x2

    if-ne v10, v0, :cond_158

    goto :goto_162

    .line 901
    :cond_158
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 902
    const-string v0, "SSL_read"

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    .end local v3    # "srcsOffset":I
    .end local v5    # "lenRemaining":I
    .end local v6    # "bytesConsumed":I
    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v11    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local v18    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v0

    .line 888
    .restart local v3    # "srcsOffset":I
    .restart local v5    # "lenRemaining":I
    .restart local v6    # "bytesConsumed":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v11    # "bytesProduced":I
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "noCleartextDataAvailable":Z
    .restart local v18    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :cond_162
    :goto_162
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0
    :try_end_166
    .catch Ljava/io/InterruptedIOException; {:try_start_135 .. :try_end_166} :catch_147
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_166} :catch_142
    .catchall {:try_start_135 .. :try_end_166} :catchall_1f0

    :try_start_166
    monitor-exit v12
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_1f0

    return-object v0

    .line 893
    :cond_168
    :try_start_168
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 894
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v16
    :try_end_173
    .catch Ljava/io/InterruptedIOException; {:try_start_168 .. :try_end_173} :catch_18c
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_173} :catch_188
    .catchall {:try_start_168 .. :try_end_173} :catchall_183

    if-lez v16, :cond_178

    .line 896
    :try_start_175
    sget-object v16, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_177
    .catch Ljava/io/InterruptedIOException; {:try_start_175 .. :try_end_177} :catch_147
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_177} :catch_142
    .catchall {:try_start_175 .. :try_end_177} :catchall_1f0

    goto :goto_17a

    :cond_178
    :try_start_178
    sget-object v16, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_17a
    .catch Ljava/io/InterruptedIOException; {:try_start_178 .. :try_end_17a} :catch_18c
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17a} :catch_188
    .catchall {:try_start_178 .. :try_end_17a} :catchall_183

    :goto_17a
    move/from16 p2, v3

    move-object/from16 v3, v16

    .end local v3    # "srcsOffset":I
    .local p2, "srcsOffset":I
    :try_start_17e
    invoke-direct {v0, v2, v3, v6, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_181
    .catch Ljava/io/InterruptedIOException; {:try_start_17e .. :try_end_181} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1cf
    .catchall {:try_start_17e .. :try_end_181} :catchall_1cb

    :try_start_181
    monitor-exit v12
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_1cb

    .line 894
    return-object v0

    .line 937
    .end local v5    # "lenRemaining":I
    .end local v6    # "bytesConsumed":I
    .end local v10    # "bytesRead":I
    .end local v11    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    .end local v17    # "idx":I
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    :catchall_183
    move-exception v0

    move/from16 p2, v3

    .end local v3    # "srcsOffset":I
    .restart local p2    # "srcsOffset":I
    goto/16 :goto_1ee

    .line 915
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v5    # "lenRemaining":I
    .restart local v6    # "bytesConsumed":I
    .restart local v11    # "bytesProduced":I
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "noCleartextDataAvailable":Z
    :catch_188
    move-exception v0

    move/from16 p2, v3

    .end local v3    # "srcsOffset":I
    .restart local p2    # "srcsOffset":I
    goto :goto_1d0

    .line 913
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    :catch_18c
    move-exception v0

    move/from16 p2, v3

    .end local v3    # "srcsOffset":I
    .restart local p2    # "srcsOffset":I
    goto :goto_1d9

    .line 870
    .end local p2    # "srcsOffset":I
    .restart local v0    # "idx":I
    .restart local v3    # "srcsOffset":I
    :cond_190
    move/from16 v17, v0

    move/from16 p2, v3

    .end local v0    # "idx":I
    .end local v3    # "srcsOffset":I
    .restart local p2    # "srcsOffset":I
    :goto_194
    goto :goto_19c

    .line 911
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    :cond_195
    move/from16 p2, v3

    .end local v3    # "srcsOffset":I
    .restart local p2    # "srcsOffset":I
    :try_start_197
    iget-object v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->forceRead()V
    :try_end_19c
    .catch Ljava/io/InterruptedIOException; {:try_start_197 .. :try_end_19c} :catch_1d8
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_19c} :catch_1cf
    .catchall {:try_start_197 .. :try_end_19c} :catchall_1cb

    .line 920
    :goto_19c
    nop

    .line 925
    :try_start_19d
    iget-boolean v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_1a8

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v0

    move/from16 v16, v0

    goto :goto_1aa

    :cond_1a8
    const/16 v16, 0x0

    :goto_1aa
    move/from16 v0, v16

    .line 926
    .local v0, "pendingCleartextBytes":I
    if-lez v0, :cond_1c5

    .line 929
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 930
    sget-object v10, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v10, :cond_1b8

    .line 931
    move-object v10, v13

    goto :goto_1bc

    .line 932
    :cond_1b8
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    .line 930
    :goto_1bc
    invoke-direct {v1, v10}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v2, v3, v10, v6, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    .line 929
    return-object v2

    .line 936
    :cond_1c5
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v12

    return-object v2

    .line 937
    .end local v0    # "pendingCleartextBytes":I
    .end local v5    # "lenRemaining":I
    .end local v6    # "bytesConsumed":I
    .end local v11    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    :catchall_1cb
    move-exception v0

    move/from16 v3, p2

    goto :goto_1ee

    .line 915
    .restart local v5    # "lenRemaining":I
    .restart local v6    # "bytesConsumed":I
    .restart local v11    # "bytesProduced":I
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "noCleartextDataAvailable":Z
    :catch_1cf
    move-exception v0

    .line 918
    .local v0, "e":Ljava/io/IOException;
    :goto_1d0
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 919
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v18    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v18    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catch_1d8
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/InterruptedIOException;
    :goto_1d9
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v12
    :try_end_1de
    .catchall {:try_start_19d .. :try_end_1de} :catchall_1cb

    return-object v2

    .line 778
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v5    # "lenRemaining":I
    .end local v6    # "bytesConsumed":I
    .end local v11    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local v18    # "srcLength":J
    .local v10, "srcLength":J
    :cond_1df
    move-wide/from16 v18, v10

    .end local v10    # "srcLength":J
    .restart local v18    # "srcLength":J
    :try_start_1e1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Client/server mode must be set before calling unwrap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v18    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_1e9
    .catchall {:try_start_1e1 .. :try_end_1e9} :catchall_1e9

    .line 937
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v18    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catchall_1e9
    move-exception v0

    goto :goto_1ee

    .end local v18    # "srcLength":J
    .restart local v10    # "srcLength":J
    :catchall_1eb
    move-exception v0

    move-wide/from16 v18, v10

    .end local v10    # "srcLength":J
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v18    # "srcLength":J
    :goto_1ee
    :try_start_1ee
    monitor-exit v12
    :try_end_1ef
    .catchall {:try_start_1ee .. :try_end_1ef} :catchall_1f0

    throw v0

    :catchall_1f0
    move-exception v0

    goto :goto_1ee
.end method

.method blacklist unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 12
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 745
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "srcs is null"

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 746
    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "dsts is null"

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 747
    const/4 v4, 0x0

    array-length v5, p1

    const/4 v7, 0x0

    array-length v8, p2

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist verifyCertificateChain([[BLjava/lang/String;)V
    .registers 8
    .param p1, "certChain"    # [[B
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1630
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 1633
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1635
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 1636
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 1641
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 1643
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1644
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    goto :goto_36

    .line 1646
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1647
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 1653
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 1654
    return-void

    .line 1637
    .restart local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .restart local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_38
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "No X.509 TrustManager"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v2

    .line 1631
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :cond_40
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "certChain":[[B
    .end local p2    # "authMethod":Ljava/lang/String;
    throw v0
    :try_end_48
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_48} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_48

    .line 1651
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1649
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method

.method public whitelist core-platform-api test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1375
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    .line 1377
    :try_start_b
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v0

    .line 1375
    return-object v1

    .line 1377
    :catchall_10
    move-exception v1

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 1378
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "src":Ljava/nio/ByteBuffer;
    .end local p2    # "dst":Ljava/nio/ByteBuffer;
    throw v1

    .line 1379
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "src":Ljava/nio/ByteBuffer;
    .restart local p2    # "dst":Ljava/nio/ByteBuffer;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist core-platform-api test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 22
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 1385
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_e

    move v6, v0

    goto :goto_f

    :cond_e
    move v6, v5

    :goto_f
    const-string v7, "srcs is null"

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1386
    if-eqz v4, :cond_18

    move v6, v0

    goto :goto_19

    :cond_18
    move v6, v5

    :goto_19
    const-string v7, "dst is null"

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1387
    add-int v6, v3, p3

    array-length v7, v2

    invoke-static {v3, v6, v7}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1388
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_180

    .line 1392
    iget-object v6, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v6

    .line 1393
    :try_start_2d
    iget v7, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eqz v7, :cond_175

    const/16 v8, 0x8

    if-eq v7, v0, :cond_55

    const/4 v9, 0x7

    if-eq v7, v9, :cond_3b

    if-eq v7, v8, :cond_3b

    goto :goto_59

    .line 1402
    :cond_3b
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1403
    invoke-direct {v1, v4, v5, v5, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1404
    .local v0, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v0, :cond_48

    .line 1405
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 1406
    monitor-exit v6

    return-object v0

    .line 1408
    :cond_48
    new-instance v7, Ljavax/net/ssl/SSLEngineResult;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v6

    return-object v7

    .line 1396
    .end local v0    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_55
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 1397
    nop

    .line 1417
    :goto_59
    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1419
    .local v7, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v9, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v9, :cond_74

    .line 1420
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    move-object v7, v9

    .line 1421
    sget-object v9, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v7, v9, :cond_6c

    .line 1422
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v6

    return-object v0

    .line 1425
    :cond_6c
    iget v9, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-ne v9, v8, :cond_74

    .line 1426
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v6

    return-object v0

    .line 1431
    :cond_74
    const/4 v8, 0x0

    .line 1432
    .local v8, "srcsLen":I
    add-int v9, v3, p3

    .line 1433
    .local v9, "endOffset":I
    move/from16 v10, p2

    .local v10, "i":I
    :goto_79
    const/16 v11, 0x4000

    if-ge v10, v9, :cond_ae

    .line 1434
    aget-object v12, v2, v10

    .line 1435
    .local v12, "src":Ljava/nio/ByteBuffer;
    if-eqz v12, :cond_92

    .line 1438
    if-ne v8, v11, :cond_84

    .line 1439
    goto :goto_8f

    .line 1442
    :cond_84
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    add-int/2addr v8, v13

    .line 1443
    if-gt v8, v11, :cond_8d

    if-gez v8, :cond_8f

    .line 1448
    :cond_8d
    const/16 v8, 0x4000

    .line 1433
    .end local v12    # "src":Ljava/nio/ByteBuffer;
    :cond_8f
    :goto_8f
    add-int/lit8 v10, v10, 0x1

    goto :goto_79

    .line 1436
    .restart local v12    # "src":Ljava/nio/ByteBuffer;
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "srcs["

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] is null"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v0

    .line 1452
    .end local v10    # "i":I
    .end local v12    # "src":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_ae
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-static {v8}, Lcom/android/org/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v12

    if-ge v10, v12, :cond_c5

    .line 1453
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1454
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    invoke-direct {v0, v10, v11, v5, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v6

    .line 1453
    return-object v0

    .line 1457
    :cond_c5
    const/4 v10, 0x0

    .line 1458
    .local v10, "bytesProduced":I
    const/4 v12, 0x0

    .line 1460
    .local v12, "bytesConsumed":I
    move/from16 v13, p2

    .local v13, "i":I
    :goto_c9
    if-ge v13, v9, :cond_163

    .line 1461
    aget-object v14, v2, v13

    .line 1462
    .local v14, "src":Ljava/nio/ByteBuffer;
    if-eqz v14, :cond_d1

    move v15, v0

    goto :goto_d2

    :cond_d1
    move v15, v5

    :goto_d2
    const-string v0, "srcs[%d] is null"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v15, v0, v5}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1463
    :goto_db
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1466
    nop

    .line 1467
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    rsub-int v5, v12, 0x4000

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1466
    invoke-direct {v1, v14, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 1468
    .local v0, "result":I
    if-lez v0, :cond_10e

    .line 1469
    add-int/2addr v12, v0

    .line 1471
    invoke-direct {v1, v4, v12, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v5

    .line 1473
    .local v5, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v5, :cond_108

    .line 1474
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v15

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v15, v11, :cond_103

    .line 1475
    monitor-exit v6

    return-object v5

    .line 1477
    :cond_103
    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v11

    move v10, v11

    .line 1479
    :cond_108
    const/16 v11, 0x4000

    if-ne v12, v11, :cond_10d

    .line 1482
    goto :goto_163

    .line 1538
    .end local v0    # "result":I
    .end local v5    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_10d
    goto :goto_db

    .line 1485
    .restart local v0    # "result":I
    :cond_10e
    iget-object v5, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v5, v0}, Lcom/android/org/conscrypt/NativeSsl;->getError(I)I

    move-result v5

    .line 1486
    .local v5, "sslError":I
    const/4 v11, 0x2

    if-eq v5, v11, :cond_142

    const/4 v11, 0x3

    if-eq v5, v11, :cond_136

    const/4 v11, 0x6

    if-ne v5, v11, :cond_12c

    .line 1490
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1491
    invoke-direct {v1, v4, v12, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11

    .line 1493
    .local v11, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v11, :cond_128

    move-object v15, v11

    goto :goto_12a

    .line 1494
    :cond_128
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_12a
    monitor-exit v6

    .line 1493
    return-object v15

    .line 1534
    .end local v11    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_12c
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1535
    const-string v11, "SSL_write"

    invoke-direct {v1, v11}, Lcom/android/org/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v11

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v11

    .line 1528
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_136
    invoke-direct {v1, v4, v12, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11

    .line 1530
    .restart local v11    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v11, :cond_13e

    move-object v15, v11

    goto :goto_140

    .line 1531
    :cond_13e
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    :goto_140
    monitor-exit v6

    .line 1530
    return-object v15

    .line 1502
    .end local v11    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_142
    invoke-direct {v1, v4, v12, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v11

    .line 1504
    .restart local v11    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v11, :cond_14c

    .line 1505
    move/from16 v16, v0

    move-object v15, v11

    goto :goto_159

    .line 1506
    :cond_14c
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    move/from16 v16, v0

    .end local v0    # "result":I
    .local v16, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v15, v0, v2, v12, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_159
    monitor-exit v6

    .line 1504
    return-object v15

    .line 1460
    .end local v5    # "sslError":I
    .end local v11    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v14    # "src":Ljava/nio/ByteBuffer;
    .end local v16    # "result":I
    :cond_15b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    const/4 v0, 0x1

    const/4 v5, 0x0

    goto/16 :goto_c9

    .line 1543
    .end local v13    # "i":I
    :cond_163
    :goto_163
    if-nez v12, :cond_16f

    .line 1544
    nop

    .line 1545
    const/4 v0, 0x0

    invoke-direct {v1, v4, v0, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1546
    .local v0, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v0, :cond_16f

    .line 1547
    monitor-exit v6

    return-object v0

    .line 1553
    .end local v0    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_16f
    invoke-direct {v1, v12, v10, v7}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 1410
    .end local v7    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v8    # "srcsLen":I
    .end local v9    # "endOffset":I
    .end local v10    # "bytesProduced":I
    .end local v12    # "bytesConsumed":I
    :cond_175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Client/server mode must be set before calling wrap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v0

    .line 1554
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :catchall_17d
    move-exception v0

    monitor-exit v6
    :try_end_17f
    .catchall {:try_start_2d .. :try_end_17f} :catchall_17d

    throw v0

    .line 1389
    :cond_180
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
