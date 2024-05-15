.class public final Lcom/android/org/conscrypt/Conscrypt$Engines;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Engines"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpnSelectedProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 522
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getAlpnSelectedProtocol()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/Conscrypt;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Ljavax/net/ssl/SSLEngine;)[B
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static getHostname(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 398
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConscrypt(Ljavax/net/ssl/SSLEngine;)Z
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 361
    instance-of v0, p0, Lcom/android/org/conscrypt/ConscryptEngine;

    return v0
.end method

.method public static maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 405
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->maxSealOverhead()I

    move-result v0

    return v0
.end method

.method public static setAlpnProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "alpnProtocols"    # [Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setAlpnProtocols([Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .prologue
    .line 378
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 379
    return-void
.end method

.method public static setChannelIdEnabled(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "enabled"    # Z

    .prologue
    .line 427
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdEnabled(Z)V

    .line 428
    return-void
.end method

.method public static setChannelIdPrivateKey(Ljavax/net/ssl/SSLEngine;Ljava/security/PrivateKey;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 458
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 459
    return-void
.end method

.method public static setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .prologue
    .line 413
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 414
    return-void
.end method

.method public static setHostname(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 502
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/ConscryptEngine;->setUseSessionTickets(Z)V

    .line 503
    return-void
.end method

.method private static toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;
    .registers 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 365
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLEngine;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_28
    check-cast p0, Lcom/android/org/conscrypt/ConscryptEngine;

    .end local p0    # "engine":Ljavax/net/ssl/SSLEngine;
    return-object p0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 14
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
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
    .line 491
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public static unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt$Engines;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method
