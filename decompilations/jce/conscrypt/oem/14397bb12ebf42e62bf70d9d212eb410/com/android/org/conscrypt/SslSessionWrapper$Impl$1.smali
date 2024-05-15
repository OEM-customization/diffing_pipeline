.class Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;
.super Ljava/lang/Object;
.source "SslSessionWrapper.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->toSSLSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/SslSessionWrapper$Impl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 451
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-static {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->-wrap0(Lcom/android/org/conscrypt/SslSessionWrapper$Impl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 2

    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/org/conscrypt/SslSessionWrapper$Impl$1;->this$1:Lcom/android/org/conscrypt/SslSessionWrapper$Impl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SslSessionWrapper$Impl;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 410
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
