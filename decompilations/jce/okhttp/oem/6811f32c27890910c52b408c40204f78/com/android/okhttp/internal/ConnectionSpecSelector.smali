.class public final Lcom/android/okhttp/internal/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 46
    iput-object p1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 47
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 137
    iget-object v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/ConnectionSpec;

    invoke-virtual {v1, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 138
    const/4 v1, 0x1

    return v1

    .line 136
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/android/okhttp/ConnectionSpec;
    .registers 9
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v3, 0x0

    .line 57
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    iget v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_9
    if-ge v1, v2, :cond_1e

    .line 58
    iget-object v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/ConnectionSpec;

    .line 59
    .local v0, "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    invoke-virtual {v0, p1}, Lcom/android/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 60
    move-object v3, v0

    .line 61
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->nextModeIndex:I

    .line 66
    .end local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v3    # "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_1e
    if-nez v3, :cond_5f

    .line 70
    new-instance v4, Ljava/net/UnknownServiceException;

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 72
    const-string/jumbo v6, ", modes="

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 72
    iget-object v6, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    const-string/jumbo v6, ", supported protocols="

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 73
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .restart local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .local v3, "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 76
    .end local v0    # "connectionSpec":Lcom/android/okhttp/ConnectionSpec;
    .end local v3    # "tlsConfiguration":Lcom/android/okhttp/ConnectionSpec;
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 78
    sget-object v4, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    iget-boolean v5, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v4, v3, p1, v5}, Lcom/android/okhttp/internal/Internal;->apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 80
    return-object v3
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .registers 5
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallback:Z

    .line 94
    iget-boolean v1, p0, Lcom/android/okhttp/internal/ConnectionSpecSelector;->isFallbackPossible:Z

    if-nez v1, :cond_9

    .line 95
    return v2

    .line 99
    :cond_9
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_e

    .line 100
    return v2

    .line 106
    :cond_e
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_13

    .line 107
    return v2

    .line 112
    :cond_13
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_20

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_20

    .line 116
    return v2

    .line 119
    :cond_20
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_25

    .line 121
    return v2

    .line 127
    :cond_25
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_2b

    instance-of v0, p1, Ljavax/net/ssl/SSLProtocolException;

    :cond_2b
    return v0
.end method
