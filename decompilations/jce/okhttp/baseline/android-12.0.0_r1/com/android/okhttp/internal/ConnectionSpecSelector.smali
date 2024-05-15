.class public final Lcom/android/okhttp/internal/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final blacklist connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isFallback:Z

.field private blacklist isFallbackPossible:Z

.field private blacklist nextModeIndex:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 48
    iput-object p1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 49
    return-void
.end method

.method private blacklist isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 138
    iget v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 139
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/ConnectionSpec;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 140
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;
    .registers 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    iget v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    if-ge v1, v2, :cond_22

    .line 60
    iget-object v3, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/ConnectionSpec;

    .line 61
    .local v3, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v3, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 62
    move-object v0, v3

    .line 63
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 64
    goto :goto_22

    .line 59
    .end local v3    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 68
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_22
    :goto_22
    if-eqz v0, :cond_32

    .line 78
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 80
    sget-object v1, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-boolean v2, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/okhttp/internal/Internal;->apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 82
    return-object v0

    .line 72
    :cond_32
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", supported protocols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist connectionFailed(Ljava/io/IOException;)Z
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    .line 96
    iget-boolean v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    .line 97
    return v2

    .line 101
    :cond_9
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_e

    .line 102
    return v2

    .line 108
    :cond_e
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_13

    .line 109
    return v2

    .line 114
    :cond_13
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_20

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_20

    .line 118
    return v2

    .line 121
    :cond_20
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_25

    .line 123
    return v2

    .line 129
    :cond_25
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_2f

    instance-of v1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    :cond_2f
    :goto_2f
    return v0
.end method
