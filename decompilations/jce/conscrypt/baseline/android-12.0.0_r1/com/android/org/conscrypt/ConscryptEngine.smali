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

    packed-switch v0, :pswitch_data_88

    .line 420
    :pswitch_5
    return-void

    .line 417
    :pswitch_6
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Engine has already been closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_e
    nop

    .line 423
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 425
    const/4 v0, 0x1

    .line 428
    .local v0, "releaseResources":Z
    :try_start_14
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1, v2, v3}, Lcom/android/org/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 433
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->clientSessionContext()Lcom/android/org/conscrypt/ClientSessionContext;

    move-result-object v1

    .line 434
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v3

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 433
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/org/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 435
    .local v1, "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    if-eqz v1, :cond_3e

    .line 436
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1, v2}, Lcom/android/org/conscrypt/NativeSslSession;->offerToResume(Lcom/android/org/conscrypt/NativeSsl;)V

    .line 440
    .end local v1    # "cachedSession":Lcom/android/org/conscrypt/NativeSslSession;
    :cond_3e
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->getMaxSealOverhead()I

    move-result v1

    iput v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 441
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_49} :catch_52
    .catchall {:try_start_14 .. :try_end_49} :catchall_50

    .line 442
    const/4 v0, 0x0

    .line 454
    if-eqz v0, :cond_4f

    .line 455
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 458
    :cond_4f
    return-void

    .line 454
    :catchall_50
    move-exception v1

    goto :goto_7a

    .line 443
    :catch_52
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "message":Ljava/lang/String;
    const-string v3, "unexpected CCS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 448
    const-string v3, "ssl_unexpected_ccs: host=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "logMessage":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 451
    .end local v3    # "logMessage":Ljava/lang/String;
    :cond_72
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 452
    invoke-static {v1}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v3

    .end local v0    # "releaseResources":Z
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v3
    :try_end_7a
    .catchall {:try_start_53 .. :try_end_7a} :catchall_50

    .line 454
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "message":Ljava/lang/String;
    .restart local v0    # "releaseResources":Z
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_7a
    if-eqz v0, :cond_7f

    .line 455
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 457
    :cond_7f
    throw v1

    .line 408
    .end local v0    # "releaseResources":Z
    :pswitch_80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client/server mode must be set before handshake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_80
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
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

    .line 1810
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

    .line 1667
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1668
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    if-eqz v0, :cond_c

    .line 1669
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->close()V

    .line 1671
    :cond_c
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->networkBio:Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    if-eqz v0, :cond_13

    .line 1672
    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->close()V

    .line 1674
    :cond_13
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
    .registers 2

    .line 1336
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_c

    .line 1342
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    .line 1340
    :pswitch_8
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x6
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
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

    .line 973
    .local v0, "ssl_error_code":I
    packed-switch v0, :pswitch_data_36

    .line 988
    .end local v0    # "ssl_error_code":I
    goto :goto_16

    .line 977
    .restart local v0    # "ssl_error_code":I
    :pswitch_a
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v1

    .line 975
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_29

    return-object v1

    .line 993
    .end local v0    # "ssl_error_code":I
    :goto_16
    :try_start_16
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

    return-object v0

    .line 997
    :catch_29
    move-exception v0

    goto :goto_31

    .line 983
    :catch_2b
    move-exception v0

    .line 986
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 987
    nop

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    throw v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_29

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    :goto_31
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v1

    throw v1

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist isHandshakeStarted()Z
    .registers 2

    .line 358
    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_a

    .line 363
    const/4 v0, 0x1

    return v0

    .line 361
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
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

    if-ne v1, v2, :cond_14

    .line 609
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    if-eqz v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    :goto_12
    monitor-exit v0

    return-object v1

    .line 611
    :cond_14
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1d

    .line 613
    invoke-static {}, Lcom/android/org/conscrypt/SSLNullSession;->getNullSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 615
    :cond_1d
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    monitor-exit v0

    return-object v1

    .line 616
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

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

    if-eqz v1, :cond_f

    .line 1294
    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1295
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_13

    .line 1300
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1303
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_13
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
    if-lez v3, :cond_2b

    .line 1306
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1307
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1308
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 1311
    :cond_2b
    nop

    .line 1313
    if-eqz v0, :cond_31

    .line 1315
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1311
    :cond_31
    return v3

    .line 1313
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_38

    .line 1315
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1317
    :cond_38
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

    if-eqz v1, :cond_f

    .line 1104
    invoke-virtual {v1, p2}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_13

    .line 1110
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1114
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_13
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
    if-lez v3, :cond_2b

    .line 1118
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1120
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 1123
    :cond_2b
    nop

    .line 1125
    if-eqz v0, :cond_31

    .line 1127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1123
    :cond_31
    return v3

    .line 1125
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToRead":I
    .end local v3    # "bytesRead":I
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_38

    .line 1127
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1129
    :cond_38
    throw v1
.end method

.method private blacklist resetSingleDstBuffer()V
    .registers 4

    .line 1806
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1807
    return-void
.end method

.method private blacklist resetSingleSrcBuffer()V
    .registers 4

    .line 1797
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1798
    return-void
.end method

.method private blacklist sendSSLShutdown()V
    .registers 2

    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->shutdown()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1663
    goto :goto_7

    .line 1660
    :catch_6
    move-exception v0

    .line 1664
    :goto_7
    return-void
.end method

.method private blacklist sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;
    .registers 2

    .line 1814
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

    .line 1801
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1802
    return-object v0
.end method

.method private blacklist singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1792
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1793
    return-object v0
.end method

.method private blacklist transitionTo(I)V
    .registers 5
    .param p1, "newState"    # I

    .line 1818
    sparse-switch p1, :sswitch_data_36

    goto :goto_32

    .line 1825
    :sswitch_4
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_32

    const/16 v1, 0x8

    if-ge v0, v1, :cond_32

    .line 1826
    new-instance v0, Lcom/android/org/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SessionSnapshot;-><init>(Lcom/android/org/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->closedSession:Lcom/android/org/conscrypt/SessionSnapshot;

    goto :goto_32

    .line 1820
    :sswitch_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1821
    new-instance v0, Lcom/android/org/conscrypt/ActiveSession;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ActiveSession;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    .line 1822
    nop

    .line 1836
    :cond_32
    :goto_32
    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    .line 1837
    return-void

    nop

    :sswitch_data_36
    .sparse-switch
        0x2 -> :sswitch_1f
        0x8 -> :sswitch_4
    .end sparse-switch
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

    if-eqz v1, :cond_f

    .line 1172
    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1173
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_13

    .line 1178
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1181
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_13
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
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_42

    .line 1196
    nop

    .line 1198
    if-eqz v0, :cond_41

    .line 1200
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1196
    :cond_41
    return v4

    .line 1198
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToCopy":I
    .end local v4    # "bytesWritten":I
    :catchall_42
    move-exception v1

    if-eqz v0, :cond_48

    .line 1200
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1202
    :cond_48
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

    if-eqz v1, :cond_f

    .line 1042
    invoke-virtual {v1, p3}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1043
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
    goto :goto_13

    .line 1048
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1052
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    :goto_13
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
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3b

    .line 1063
    if-eqz v0, :cond_3a

    .line 1065
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1061
    :cond_3a
    return v4

    .line 1063
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "limit":I
    .end local v3    # "bytesToWrite":I
    :catchall_3b
    move-exception v1

    if-eqz v0, :cond_41

    .line 1065
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 1067
    :cond_41
    throw v1
.end method


# virtual methods
.method public whitelist test-api beginHandshake()V
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

    .line 1699
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_c

    .line 1700
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1701
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1703
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

    .line 1716
    invoke-interface {p1, p2, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .line 1688
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1689
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1690
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v1, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1692
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_d
    invoke-interface {p1, p2, v1, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .registers 3
    .param p1, "keyManager"    # Lcom/android/org/conscrypt/PSKKeyManager;

    .line 1710
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

    .line 1654
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 1655
    return-void
.end method

.method public blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 5
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .line 1553
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api closeInbound()V
    .registers 6

    .line 462
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 463
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_28

    const/4 v3, 0x6

    if-ne v1, v3, :cond_d

    goto :goto_28

    .line 466
    :cond_d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 467
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_1c

    .line 468
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1f

    .line 470
    :cond_1c
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 472
    :goto_1f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_26

    .line 475
    :cond_23
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 477
    :goto_26
    monitor-exit v0

    .line 478
    return-void

    .line 464
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    .line 477
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public whitelist test-api closeOutbound()V
    .registers 6

    .line 482
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 483
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2b

    const/4 v3, 0x7

    if-ne v1, v3, :cond_d

    goto :goto_2b

    .line 486
    :cond_d
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 487
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1c

    .line 488
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1f

    .line 490
    :cond_1c
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 492
    :goto_1f
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 493
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    goto :goto_29

    .line 496
    :cond_26
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 498
    :goto_29
    monitor-exit v0

    .line 499
    return-void

    .line 484
    :cond_2b
    :goto_2b
    monitor-exit v0

    return-void

    .line 498
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

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

    .line 1758
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1759
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_15

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    goto :goto_15

    .line 1762
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_18

    .line 1763
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0

    .line 1760
    :cond_15
    :goto_15
    const/4 v1, 0x0

    :try_start_16
    monitor-exit v0

    return-object v1

    .line 1762
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1680
    :try_start_0
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAndFreeResources()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 1682
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1683
    nop

    .line 1684
    return-void

    .line 1682
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1683
    throw v0
.end method

.method public whitelist test-api getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 1781
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->provideAfterHandshakeSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getApplicationProtocols()[Ljava/lang/String;
    .registers 2

    .line 1737
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

.method public whitelist test-api getDelegatedTask()Ljava/lang/Runnable;
    .registers 2

    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getEnableSessionCreation()Z
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getHandshakeApplicationProtocol()Ljava/lang/String;
    .registers 4

    .line 1786
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1787
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

    .line 1788
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist test-api getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
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

.method public whitelist test-api getNeedClientAuth()Z
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

    .line 1722
    invoke-interface {p1, p2, p3, p0}, Lcom/android/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPeerHost()Ljava/lang/String;
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

.method public whitelist test-api getPeerPort()I
    .registers 2

    .line 395
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->peerInfoProvider:Lcom/android/org/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getSSLParameters()Ljavax/net/ssl/SSLParameters;
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

.method public whitelist test-api getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public whitelist test-api getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 635
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .line 640
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 2

    .line 1753
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getUseClientMode()Z
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api getWantClientAuth()Z
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

.method public whitelist test-api isInboundDone()Z
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 656
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    const/4 v2, 0x6

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 657
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownReceived()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 658
    :cond_14
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0

    .line 656
    return v1

    .line 659
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public whitelist test-api isOutboundDone()Z
    .registers 4

    .line 664
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 665
    :try_start_3
    iget v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    const/4 v2, 0x7

    if-eq v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    .line 666
    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->wasShutdownSent()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 667
    :cond_14
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    monitor-exit v0

    .line 665
    return v1

    .line 668
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

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

    .line 1597
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1602
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1604
    .local v0, "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeSslSession;->newInstance(Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;Lcom/android/org/conscrypt/ConscryptSession;)Lcom/android/org/conscrypt/NativeSslSession;

    move-result-object v1

    .line 1607
    .local v1, "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->sessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v2

    .line 1608
    .local v2, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->cacheSession(Lcom/android/org/conscrypt/NativeSslSession;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1611
    .end local v0    # "ref":Lcom/android/org/conscrypt/NativeRef$SSL_SESSION;
    .end local v1    # "nativeSession":Lcom/android/org/conscrypt/NativeSslSession;
    .end local v2    # "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    goto :goto_17

    .line 1609
    :catch_16
    move-exception v0

    .line 1612
    :goto_17
    return-void
.end method

.method public blacklist onSSLStateChange(II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "val"    # I

    .line 1563
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1564
    const/4 v1, 0x2

    sparse-switch p1, :sswitch_data_38

    goto :goto_32

    .line 1572
    :sswitch_8
    :try_start_8
    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    if-eq v2, v1, :cond_29

    const/4 v1, 0x4

    if-ne v2, v1, :cond_10

    goto :goto_29

    .line 1574
    :cond_10
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

    .line 1577
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "type":I
    .restart local p2    # "val":I
    :cond_29
    :goto_29
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1578
    goto :goto_32

    .line 1568
    :sswitch_2e
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1569
    nop

    .line 1583
    :goto_32
    monitor-exit v0

    .line 1584
    return-void

    .line 1583
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_34

    throw v1

    nop

    :sswitch_data_38
    .sparse-switch
        0x10 -> :sswitch_2e
        0x20 -> :sswitch_8
    .end sparse-switch
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

    .line 1772
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1773
    .local v0, "adapter":Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_a

    .line 1774
    const/4 v1, 0x3

    return v1

    .line 1776
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

    .line 1588
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v0

    .line 1589
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 1590
    monitor-exit v0

    .line 1591
    return-void

    .line 1590
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

    .line 1558
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public blacklist serverSessionRequested([B)J
    .registers 4
    .param p1, "id"    # [B

    .line 1617
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 1747
    nop

    .line 1748
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_a

    :cond_5
    new-instance v0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 1747
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1749
    return-void
.end method

.method blacklist setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .registers 3
    .param p1, "adapter"    # Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 1767
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1768
    return-void
.end method

.method blacklist setApplicationProtocols([Ljava/lang/String;)V
    .registers 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 1742
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1743
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

.method public whitelist test-api setEnableSessionCreation(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 683
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 684
    return-void
.end method

.method public whitelist test-api setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 3
    .param p1, "suites"    # [Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public whitelist test-api setEnabledProtocols([Ljava/lang/String;)V
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

.method public whitelist test-api setNeedClientAuth(Z)V
    .registers 3
    .param p1, "need"    # Z

    .line 688
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 689
    return-void
.end method

.method public whitelist test-api setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
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

.method public whitelist test-api setUseClientMode(Z)V
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

    .line 1732
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 1733
    return-void
.end method

.method public whitelist test-api setWantClientAuth(Z)V
    .registers 3
    .param p1, "want"    # Z

    .line 705
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 706
    return-void
.end method

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
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

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
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

.method public whitelist test-api unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
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
    .registers 28
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
    .catchall {:try_start_3b .. :try_end_3d} :catchall_1b4

    sparse-switch v13, :sswitch_data_1bc

    goto :goto_62

    .line 774
    :sswitch_41
    :try_start_41
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 776
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    invoke-direct {v0, v13, v14, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v0

    .line 770
    :sswitch_51
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 771
    goto :goto_62

    .line 778
    :sswitch_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Client/server mode must be set before calling unwrap"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v10    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v0
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_5d

    .line 937
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
    :catchall_5d
    move-exception v0

    move-wide/from16 v18, v10

    goto/16 :goto_1b7

    .line 784
    :goto_62
    :try_start_62
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 785
    .local v13, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v14, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_1b4

    if-nez v14, :cond_7f

    .line 786
    :try_start_68
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v14

    move-object v13, v14

    .line 787
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v14, :cond_75

    .line 788
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    return-object v0

    .line 790
    :cond_75
    iget v14, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7f

    .line 791
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12
    :try_end_7e
    .catchall {:try_start_68 .. :try_end_7e} :catchall_5d

    return-object v0

    .line 797
    :cond_7f
    :try_start_7f
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v14
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_1b4

    if-gtz v14, :cond_86

    goto :goto_87

    :cond_86
    move v0, v6

    :goto_87
    move v14, v0

    .line 798
    .local v14, "noCleartextDataAvailable":Z
    const/4 v0, 0x0

    .line 799
    .local v0, "lenRemaining":I
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-lez v15, :cond_d2

    if-eqz v14, :cond_d2

    .line 800
    const-wide/16 v15, 0x5

    cmp-long v15, v10, v15

    if-gez v15, :cond_a7

    .line 802
    :try_start_97
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
    :try_end_a6
    .catchall {:try_start_97 .. :try_end_a6} :catchall_5d

    return-object v15

    .line 805
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :cond_a7
    move/from16 v17, v0

    .end local v0    # "lenRemaining":I
    .restart local v17    # "lenRemaining":I
    :try_start_a9
    invoke-static/range {p1 .. p2}, Lcom/android/org/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 806
    .local v0, "packetLength":I
    if-ltz v0, :cond_c8

    .line 810
    int-to-long v5, v0

    cmp-long v5, v10, v5

    if-gez v5, :cond_c4

    .line 813
    new-instance v5, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15
    :try_end_bc
    .catchall {:try_start_a9 .. :try_end_bc} :catchall_1b4

    move-wide/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "srcLength":J
    .local v18, "srcLength":J
    :try_start_bf
    invoke-direct {v5, v6, v15, v10, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    return-object v5

    .line 817
    .end local v18    # "srcLength":J
    .restart local v10    # "srcLength":J
    :cond_c4
    move-wide/from16 v18, v10

    .line 818
    .end local v10    # "srcLength":J
    .end local v17    # "lenRemaining":I
    .local v0, "lenRemaining":I
    .restart local v18    # "srcLength":J
    const/4 v10, 0x0

    goto :goto_ec

    .line 807
    .end local v18    # "srcLength":J
    .local v0, "packetLength":I
    .restart local v10    # "srcLength":J
    .restart local v17    # "lenRemaining":I
    :cond_c8
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
    :cond_d2
    move/from16 v17, v0

    move-wide/from16 v18, v10

    .line 818
    .end local v0    # "lenRemaining":I
    .end local v10    # "srcLength":J
    .restart local v17    # "lenRemaining":I
    .restart local v18    # "srcLength":J
    if-eqz v14, :cond_e9

    .line 820
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v10, 0x0

    invoke-direct {v0, v5, v6, v10, v10}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12
    :try_end_e5
    .catchall {:try_start_bf .. :try_end_e5} :catchall_e6

    return-object v0

    .line 937
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local v17    # "lenRemaining":I
    :catchall_e6
    move-exception v0

    goto/16 :goto_1b7

    .line 818
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "noCleartextDataAvailable":Z
    .restart local v17    # "lenRemaining":I
    :cond_e9
    const/4 v10, 0x0

    move/from16 v0, v17

    .line 824
    .end local v17    # "lenRemaining":I
    .restart local v0    # "lenRemaining":I
    :goto_ec
    const/4 v5, 0x0

    .line 825
    .local v5, "bytesConsumed":I
    if-lez v0, :cond_11d

    if-ge v3, v9, :cond_11d

    .line 827
    .end local p2    # "srcsOffset":I
    .local v3, "srcsOffset":I
    :cond_f1
    :try_start_f1
    aget-object v6, v2, v3

    .line 828
    .local v6, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 829
    .local v11, "remaining":I
    if-nez v11, :cond_fc

    .line 832
    add-int/lit8 v3, v3, 0x1

    .line 833
    goto :goto_10f

    .line 836
    :cond_fc
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-direct {v1, v6, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    .line 837
    .local v15, "written":I
    if-lez v15, :cond_117

    .line 838
    add-int/2addr v5, v15

    .line 839
    sub-int/2addr v0, v15

    .line 840
    if-nez v0, :cond_10b

    .line 842
    goto :goto_114

    .line 845
    :cond_10b
    if-ne v15, v11, :cond_114

    .line 846
    add-int/lit8 v3, v3, 0x1

    .line 862
    .end local v6    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v15    # "written":I
    :goto_10f
    if-lt v3, v9, :cond_f1

    move v6, v5

    move v5, v0

    goto :goto_11f

    .line 866
    :cond_114
    :goto_114
    move v6, v5

    move v5, v0

    goto :goto_11f

    .line 859
    .restart local v6    # "src":Ljava/nio/ByteBuffer;
    .restart local v11    # "remaining":I
    .restart local v15    # "written":I
    :cond_117
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_11a
    .catchall {:try_start_f1 .. :try_end_11a} :catchall_1b9

    .line 860
    move v6, v5

    move v5, v0

    goto :goto_11f

    .line 866
    .end local v3    # "srcsOffset":I
    .end local v6    # "src":Ljava/nio/ByteBuffer;
    .end local v11    # "remaining":I
    .end local v15    # "written":I
    .restart local p2    # "srcsOffset":I
    :cond_11d
    move v6, v5

    move v5, v0

    .end local v0    # "lenRemaining":I
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .local v5, "lenRemaining":I
    .local v6, "bytesConsumed":I
    :goto_11f
    const/4 v11, 0x0

    .line 868
    .local v11, "bytesProduced":I
    if-lez v7, :cond_175

    .line 870
    move/from16 v0, p5

    .local v0, "idx":I
    :goto_124
    if-ge v0, v8, :cond_172

    .line 871
    :try_start_126
    aget-object v15, v4, v0

    .line 872
    .local v15, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-nez v16, :cond_12f

    .line 873
    goto :goto_13e

    .line 876
    :cond_12f
    invoke-direct {v1, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v16

    .line 877
    .local v16, "bytesRead":I
    if-lez v16, :cond_141

    .line 878
    add-int v11, v11, v16

    .line 879
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v17

    if-eqz v17, :cond_13e

    .line 882
    goto :goto_174

    .line 870
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    .end local v16    # "bytesRead":I
    :cond_13e
    :goto_13e
    add-int/lit8 v0, v0, 0x1

    goto :goto_124

    .line 885
    .restart local v15    # "dst":Ljava/nio/ByteBuffer;
    .restart local v16    # "bytesRead":I
    :cond_141
    packed-switch v16, :pswitch_data_1ce

    .line 901
    :pswitch_144
    move/from16 v17, v0

    .end local v0    # "idx":I
    .local v17, "idx":I
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    goto :goto_16b

    .line 888
    .end local v17    # "idx":I
    .restart local v0    # "idx":I
    :pswitch_14a
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v10
    :try_end_14e
    .catch Ljava/io/InterruptedIOException; {:try_start_126 .. :try_end_14e} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_14e} :catch_1a4
    .catchall {:try_start_126 .. :try_end_14e} :catchall_1b9

    :try_start_14e
    monitor-exit v12
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_1b9

    return-object v10

    .line 893
    :pswitch_150
    :try_start_150
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 894
    new-instance v10, Ljavax/net/ssl/SSLEngineResult;

    move/from16 v17, v0

    .end local v0    # "idx":I
    .restart local v17    # "idx":I
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v20

    if-lez v20, :cond_162

    .line 896
    sget-object v20, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_164

    :cond_162
    sget-object v20, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_164
    move-object/from16 v2, v20

    invoke-direct {v10, v0, v2, v6, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_169
    .catch Ljava/io/InterruptedIOException; {:try_start_150 .. :try_end_169} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_169} :catch_1a4
    .catchall {:try_start_150 .. :try_end_169} :catchall_1b9

    :try_start_169
    monitor-exit v12
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_1b9

    .line 894
    return-object v10

    .line 902
    :goto_16b
    :try_start_16b
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

    .line 870
    .end local v15    # "dst":Ljava/nio/ByteBuffer;
    .end local v16    # "bytesRead":I
    .end local v17    # "idx":I
    .restart local v0    # "idx":I
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
    :cond_172
    move/from16 v17, v0

    .end local v0    # "idx":I
    :goto_174
    goto :goto_17a

    .line 911
    :cond_175
    iget-object v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->forceRead()V
    :try_end_17a
    .catch Ljava/io/InterruptedIOException; {:try_start_16b .. :try_end_17a} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_17a} :catch_1a4
    .catchall {:try_start_16b .. :try_end_17a} :catchall_1b9

    .line 920
    :goto_17a
    nop

    .line 925
    :try_start_17b
    iget-boolean v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_184

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v0

    move v10, v0

    :cond_184
    move v0, v10

    .line 926
    .local v0, "pendingCleartextBytes":I
    if-lez v0, :cond_19e

    .line 929
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 930
    sget-object v15, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v13, v15, :cond_191

    .line 931
    move-object v15, v13

    goto :goto_195

    .line 932
    :cond_191
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    .line 930
    :goto_195
    invoke-direct {v1, v15}, Lcom/android/org/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v15

    invoke-direct {v2, v10, v15, v6, v11}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    .line 929
    return-object v2

    .line 936
    :cond_19e
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v12

    return-object v2

    .line 915
    .end local v0    # "pendingCleartextBytes":I
    :catch_1a4
    move-exception v0

    .line 918
    .local v0, "e":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 919
    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v3    # "srcsOffset":I
    .end local v7    # "dstLength":I
    .end local v8    # "endOffset":I
    .end local v9    # "srcsEndOffset":I
    .end local v18    # "srcLength":J
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p3    # "srcsLength":I
    .end local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .end local p5    # "dstsOffset":I
    .end local p6    # "dstsLength":I
    throw v2

    .line 913
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "srcsOffset":I
    .restart local v7    # "dstLength":I
    .restart local v8    # "endOffset":I
    .restart local v9    # "srcsEndOffset":I
    .restart local v18    # "srcLength":J
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dsts":[Ljava/nio/ByteBuffer;
    .restart local p5    # "dstsOffset":I
    .restart local p6    # "dstsLength":I
    :catch_1ad
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-direct {v1, v6, v11, v13}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v12

    return-object v2

    .line 937
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .end local v3    # "srcsOffset":I
    .end local v5    # "lenRemaining":I
    .end local v6    # "bytesConsumed":I
    .end local v11    # "bytesProduced":I
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v14    # "noCleartextDataAvailable":Z
    .end local v18    # "srcLength":J
    .restart local v10    # "srcLength":J
    .restart local p2    # "srcsOffset":I
    :catchall_1b4
    move-exception v0

    move-wide/from16 v18, v10

    .end local v10    # "srcLength":J
    .end local p2    # "srcsOffset":I
    .restart local v3    # "srcsOffset":I
    .restart local v18    # "srcLength":J
    :goto_1b7
    monitor-exit v12
    :try_end_1b8
    .catchall {:try_start_17b .. :try_end_1b8} :catchall_1b9

    throw v0

    :catchall_1b9
    move-exception v0

    goto :goto_1b7

    nop

    :sswitch_data_1bc
    .sparse-switch
        0x0 -> :sswitch_55
        0x1 -> :sswitch_51
        0x6 -> :sswitch_41
        0x8 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_1ce
    .packed-switch -0x6
        :pswitch_150
        :pswitch_144
        :pswitch_144
        :pswitch_14a
        :pswitch_14a
    .end packed-switch
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

    .line 1624
    if-eqz p1, :cond_40

    :try_start_2
    array-length v0, p1

    if-eqz v0, :cond_40

    .line 1627
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1629
    .local v0, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngine;->sslParameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 1630
    .local v1, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-eqz v1, :cond_38

    .line 1635
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngine;->activeSession:Lcom/android/org/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/org/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 1637
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1638
    invoke-static {v1, v0, p2, p0}, Lcom/android/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    goto :goto_36

    .line 1640
    :cond_28
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 1641
    .local v2, "authType":Ljava/lang/String;
    invoke-static {v1, v0, v2, p0}, Lcom/android/org/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V

    .line 1647
    .end local v0    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v1    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "authType":Ljava/lang/String;
    :goto_36
    nop

    .line 1648
    return-void

    .line 1631
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

    .line 1625
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

    .line 1645
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p1    # "certChain":[[B
    .restart local p2    # "authMethod":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 1646
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1643
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/security/cert/CertificateException;
    throw v0
.end method

.method public whitelist test-api wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
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

.method public whitelist test-api wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 21
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

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_10

    move v7, v5

    goto :goto_11

    :cond_10
    move v7, v6

    :goto_11
    const-string v8, "srcs is null"

    invoke-static {v7, v8}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1386
    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v5, v6

    :goto_1a
    const-string v7, "dst is null"

    invoke-static {v5, v7}, Lcom/android/org/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1387
    add-int v5, v2, v3

    array-length v7, v0

    invoke-static {v2, v5, v7}, Lcom/android/org/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1388
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_15a

    .line 1392
    if-nez v2, :cond_33

    array-length v5, v0

    if-eq v3, v5, :cond_31

    goto :goto_33

    :cond_31
    move-object v5, v0

    goto :goto_3d

    .line 1393
    :cond_33
    :goto_33
    add-int v5, v2, v3

    invoke-static {v0, v2, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/nio/ByteBuffer;

    move-object v5, v0

    .line 1395
    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    .local v5, "srcs":[Ljava/nio/ByteBuffer;
    :goto_3d
    invoke-static {v5}, Lcom/android/org/conscrypt/BufferUtils;->checkNotNull([Ljava/nio/ByteBuffer;)V

    .line 1397
    iget-object v7, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    monitor-enter v7

    .line 1398
    :try_start_43
    iget v0, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    sparse-switch v0, :sswitch_data_160

    goto :goto_6f

    .line 1407
    :sswitch_49
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1408
    invoke-direct {v1, v4, v6, v6, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 1409
    .local v0, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v0, :cond_56

    .line 1410
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 1411
    monitor-exit v7

    return-object v0

    .line 1413
    :cond_56
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    sget-object v9, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v7

    return-object v8

    .line 1401
    .end local v0    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :sswitch_63
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 1402
    goto :goto_6f

    .line 1415
    :sswitch_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "Client/server mode must be set before calling wrap"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v0

    .line 1422
    .restart local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :goto_6f
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1424
    .local v0, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    iget-boolean v8, v1, Lcom/android/org/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v8, :cond_8c

    .line 1425
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v8

    move-object v0, v8

    .line 1426
    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v8, :cond_82

    .line 1427
    sget-object v6, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v7

    return-object v6

    .line 1430
    :cond_82
    iget v8, v1, Lcom/android/org/conscrypt/ConscryptEngine;->state:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8c

    .line 1431
    sget-object v6, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v7

    return-object v6

    .line 1436
    :cond_8c
    invoke-static {v5}, Lcom/android/org/conscrypt/BufferUtils;->remaining([Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    const-wide/16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1437
    .local v8, "dataLength":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-static {v8}, Lcom/android/org/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v10

    if-ge v9, v10, :cond_ae

    .line 1438
    new-instance v9, Ljavax/net/ssl/SSLEngineResult;

    sget-object v10, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1439
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v11

    invoke-direct {v9, v10, v11, v6, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v7

    .line 1438
    return-object v9

    .line 1442
    :cond_ae
    const/4 v9, 0x0

    .line 1443
    .local v9, "bytesProduced":I
    const/4 v10, 0x0

    .line 1444
    .local v10, "bytesConsumed":I
    if-lez v8, :cond_145

    .line 1449
    const/4 v11, 0x0

    .line 1450
    .local v11, "isCopy":Z
    nop

    .line 1451
    const/16 v12, 0x4000

    invoke-static {v5, v12}, Lcom/android/org/conscrypt/BufferUtils;->getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1452
    .local v13, "outputBuffer":Ljava/nio/ByteBuffer;
    if-nez v13, :cond_c7

    .line 1460
    nop

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 1460
    invoke-static {v5, v14, v12}, Lcom/android/org/conscrypt/BufferUtils;->copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object v13, v14

    .line 1462
    const/4 v11, 0x1

    .line 1466
    :cond_c7
    nop

    .line 1467
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1466
    invoke-direct {v1, v13, v12}, Lcom/android/org/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    .line 1468
    .local v12, "result":I
    if-lez v12, :cond_f2

    .line 1469
    move v10, v12

    .line 1470
    if-eqz v11, :cond_dc

    .line 1472
    invoke-static {v5, v10}, Lcom/android/org/conscrypt/BufferUtils;->consume([Ljava/nio/ByteBuffer;I)V

    .line 1475
    :cond_dc
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1477
    .local v14, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_145

    .line 1478
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v15

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v15, v6, :cond_ec

    .line 1479
    monitor-exit v7

    return-object v14

    .line 1481
    :cond_ec
    invoke-virtual {v14}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v6

    move v9, v6

    goto :goto_145

    .line 1484
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_f2
    iget-object v6, v1, Lcom/android/org/conscrypt/ConscryptEngine;->ssl:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v6, v12}, Lcom/android/org/conscrypt/NativeSsl;->getError(I)I

    move-result v6

    .line 1485
    .local v6, "sslError":I
    packed-switch v6, :pswitch_data_172

    .line 1532
    :pswitch_fb
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    goto :goto_12f

    .line 1489
    :pswitch_ff
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->closeAll()V

    .line 1490
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1492
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_10a

    move-object v15, v14

    goto :goto_10c

    .line 1493
    :cond_10a
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    :goto_10c
    monitor-exit v7

    .line 1492
    return-object v15

    .line 1527
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_10e
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1529
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_116

    move-object v15, v14

    goto :goto_118

    :cond_116
    sget-object v15, Lcom/android/org/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    :goto_118
    monitor-exit v7

    return-object v15

    .line 1501
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_11a
    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v14

    .line 1503
    .restart local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v14, :cond_122

    .line 1504
    move-object v15, v14

    goto :goto_12d

    .line 1505
    :cond_122
    new-instance v15, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v15, v2, v3, v10, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    :goto_12d
    monitor-exit v7

    .line 1503
    return-object v15

    .line 1533
    .end local v14    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_12f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSL_write: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v2

    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .end local p2    # "srcsOffset":I
    .end local p3    # "srcsLength":I
    .end local p4    # "dst":Ljava/nio/ByteBuffer;
    throw v2

    .line 1540
    .end local v6    # "sslError":I
    .end local v11    # "isCopy":Z
    .end local v12    # "result":I
    .end local v13    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngine;
    .restart local p2    # "srcsOffset":I
    .restart local p3    # "srcsLength":I
    .restart local p4    # "dst":Ljava/nio/ByteBuffer;
    :cond_145
    :goto_145
    if-nez v10, :cond_151

    .line 1541
    nop

    .line 1542
    const/4 v2, 0x0

    invoke-direct {v1, v4, v2, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 1543
    .local v2, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v2, :cond_151

    .line 1544
    monitor-exit v7

    return-object v2

    .line 1547
    .end local v2    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_151
    invoke-direct {v1, v10, v9, v0}, Lcom/android/org/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    monitor-exit v7

    return-object v2

    .line 1548
    .end local v0    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .end local v8    # "dataLength":I
    .end local v9    # "bytesProduced":I
    .end local v10    # "bytesConsumed":I
    :catchall_157
    move-exception v0

    monitor-exit v7
    :try_end_159
    .catchall {:try_start_43 .. :try_end_159} :catchall_157

    throw v0

    .line 1389
    .end local v5    # "srcs":[Ljava/nio/ByteBuffer;
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    :cond_15a
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    :sswitch_data_160
    .sparse-switch
        0x0 -> :sswitch_67
        0x1 -> :sswitch_63
        0x7 -> :sswitch_49
        0x8 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x2
        :pswitch_11a
        :pswitch_10e
        :pswitch_fb
        :pswitch_fb
        :pswitch_ff
    .end packed-switch
.end method
