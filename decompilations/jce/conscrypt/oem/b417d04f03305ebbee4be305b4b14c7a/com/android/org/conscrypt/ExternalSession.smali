.class final Lcom/android/org/conscrypt/ExternalSession;
.super Ljava/lang/Object;
.source "ExternalSession.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ExternalSession$Provider;
    }
.end annotation


# instance fields
.field private final blacklist provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

.field private final blacklist values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ExternalSession$Provider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/org/conscrypt/ExternalSession$Provider;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getApplicationBufferSize()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public blacklist getApplicationProtocol()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCipherSuite()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCreationTime()J
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getId()[B
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLastAccessedTime()J
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPacketBufferSize()I
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/android/org/conscrypt/ExternalSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPeerHost()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPeerPort()I
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPort()I

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

    .line 121
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPeerSignedCertificateTimestamp()[B
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getProtocol()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestedServerName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStatusResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_9

    .line 169
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 167
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getValueNames()[Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api invalidate()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->invalidate()V

    .line 96
    return-void
.end method

.method public whitelist core-platform-api test-api isValid()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->provider:Lcom/android/org/conscrypt/ExternalSession$Provider;

    invoke-interface {v0}, Lcom/android/org/conscrypt/ExternalSession$Provider;->provideSession()Lcom/android/org/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 179
    invoke-virtual {p0, p0, p1, p2}, Lcom/android/org/conscrypt/ExternalSession;->putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method blacklist putValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 183
    if-eqz p2, :cond_29

    if-eqz p3, :cond_29

    .line 186
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, p3, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_19

    .line 188
    move-object v1, p3

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 189
    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 191
    :cond_19
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_28

    .line 192
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 193
    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 195
    :cond_28
    return-void

    .line 184
    .end local v0    # "old":Ljava/lang/Object;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api removeValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p0, p0, p1}, Lcom/android/org/conscrypt/ExternalSession;->removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method blacklist removeValue(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;
    .param p2, "name"    # Ljava/lang/String;

    .line 203
    if-eqz p2, :cond_18

    .line 206
    iget-object v0, p0, Lcom/android/org/conscrypt/ExternalSession;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_17

    .line 208
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 209
    .local v1, "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p1, p2}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 211
    .end local v1    # "listener":Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_17
    return-void

    .line 204
    .end local v0    # "old":Ljava/lang/Object;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
