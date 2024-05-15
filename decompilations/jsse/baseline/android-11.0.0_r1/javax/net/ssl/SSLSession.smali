.class public interface abstract Ljavax/net/ssl/SSLSession;
.super Ljava/lang/Object;
.source "SSLSession.java"


# virtual methods
.method public abstract whitelist core-platform-api test-api getApplicationBufferSize()I
.end method

.method public abstract whitelist core-platform-api test-api getCipherSuite()Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getCreationTime()J
.end method

.method public abstract whitelist core-platform-api test-api getId()[B
.end method

.method public abstract whitelist core-platform-api test-api getLastAccessedTime()J
.end method

.method public abstract whitelist core-platform-api test-api getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public abstract whitelist core-platform-api test-api getLocalPrincipal()Ljava/security/Principal;
.end method

.method public abstract whitelist core-platform-api test-api getPacketBufferSize()I
.end method

.method public abstract whitelist core-platform-api test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getPeerHost()Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getPeerPort()I
.end method

.method public abstract whitelist core-platform-api test-api getPeerPrincipal()Ljava/security/Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api getProtocol()Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method public abstract whitelist core-platform-api test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract whitelist core-platform-api test-api getValueNames()[Ljava/lang/String;
.end method

.method public abstract whitelist core-platform-api test-api invalidate()V
.end method

.method public abstract whitelist core-platform-api test-api isValid()Z
.end method

.method public abstract whitelist core-platform-api test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract whitelist core-platform-api test-api removeValue(Ljava/lang/String;)V
.end method
