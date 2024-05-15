.class public final Lcom/android/okhttp/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final greylist-max-o cipherSuite:Ljava/lang/String;

.field private final greylist-max-o localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .param p1, "cipherSuite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static greylist-max-o get(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/okhttp/Handshake;
    .registers 6
    .param p0, "cipherSuite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/android/okhttp/Handshake;"
        }
    .end annotation

    .line 73
    .local p1, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p2, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz p0, :cond_10

    .line 74
    new-instance v0, Lcom/android/okhttp/Handshake;

    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-static {p2}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 74
    return-object v0

    .line 73
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o get(Ljavax/net/ssl/SSLSession;)Lcom/android/okhttp/Handshake;
    .registers 7
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .line 50
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "cipherSuite":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 55
    :try_start_6
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_a
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_a} :catch_b

    .line 58
    .local v1, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_e

    .line 56
    .end local v1    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catch_b
    move-exception v1

    .line 57
    .local v1, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 59
    .local v1, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_e
    if-eqz v1, :cond_15

    .line 60
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_19

    .line 61
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_19
    nop

    .line 63
    .local v2, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 64
    .local v3, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v3, :cond_25

    .line 65
    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_29

    .line 66
    :cond_25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_29
    nop

    .line 68
    .local v4, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v5, Lcom/android/okhttp/Handshake;

    invoke-direct {v5, v0, v2, v4}, Lcom/android/okhttp/Handshake;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v5

    .line 51
    .end local v1    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v2    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v3    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v4    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_30
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipherSuite == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public greylist-max-o cipherSuite()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lcom/android/okhttp/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 109
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/Handshake;

    .line 110
    .local v0, "that":Lcom/android/okhttp/Handshake;
    iget-object v2, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 111
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    .line 112
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    nop

    .line 110
    :goto_2a
    return v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 116
    const/16 v0, 0x11

    .line 117
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Handshake;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 118
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 119
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o localCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o localPrincipal()Ljava/security/Principal;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 103
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_17

    .line 104
    :cond_16
    const/4 v0, 0x0

    .line 102
    :goto_17
    return-object v0
.end method

.method public greylist-max-o peerCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o peerPrincipal()Ljava/security/Principal;
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_17

    .line 92
    :cond_16
    const/4 v0, 0x0

    .line 90
    :goto_17
    return-object v0
.end method
