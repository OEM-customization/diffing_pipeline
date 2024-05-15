.class public Ljavax/net/ssl/HandshakeCompletedEvent;
.super Ljava/util/EventObject;
.source "HandshakeCompletedEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x6dd7999712948132L


# instance fields
.field private transient session:Ljavax/net/ssl/SSLSession;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V
    .registers 3
    .param p1, "sock"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "s"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 65
    iput-object p2, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    .line 66
    return-void
.end method


# virtual methods
.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 5

    .prologue
    .line 210
    :try_start_0
    iget-object v3, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;
    :try_end_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    .line 221
    :cond_6
    :goto_6
    return-object v2

    .line 211
    :catch_7
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/AbstractMethodError;
    const/4 v2, 0x0

    .line 215
    .local v2, "principal":Ljava/security/Principal;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 216
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_6

    .line 218
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .local v2, "principal":Ljava/security/Principal;
    goto :goto_6
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    iget-object v3, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;
    :try_end_5
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v2

    .line 190
    .local v2, "principal":Ljava/security/Principal;
    :goto_6
    return-object v2

    .line 184
    .end local v2    # "principal":Ljava/security/Principal;
    :catch_7
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/AbstractMethodError;
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 188
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .restart local v2    # "principal":Ljava/security/Principal;
    goto :goto_6
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/net/ssl/HandshakeCompletedEvent;->session:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public getSocket()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Ljavax/net/ssl/HandshakeCompletedEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
