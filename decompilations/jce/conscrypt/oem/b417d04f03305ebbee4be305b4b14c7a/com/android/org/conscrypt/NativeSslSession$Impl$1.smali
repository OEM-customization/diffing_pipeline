.class Lcom/android/org/conscrypt/NativeSslSession$Impl$1;
.super Ljava/lang/Object;
.source "NativeSslSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/NativeSslSession$Impl;->toSSLSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSslSession$Impl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/org/conscrypt/NativeSslSession$Impl;

    .line 358
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getApplicationBufferSize()I
    .registers 2

    .line 464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCreationTime()J
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    # invokes: Lcom/android/org/conscrypt/NativeSslSession$Impl;->getCreationTime()J
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->access$300(Lcom/android/org/conscrypt/NativeSslSession$Impl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getId()[B
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLastAccessedTime()J
    .registers 2

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 438
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 454
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPacketBufferSize()I
    .registers 2

    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPeerPort()I
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api getValueNames()[Ljava/lang/String;
    .registers 2

    .line 428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api invalidate()V
    .registers 2

    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api isValid()Z
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSslSession$Impl$1;->this$0:Lcom/android/org/conscrypt/NativeSslSession$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSslSession$Impl;->isValid()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
