.class public final Lcom/android/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final greylist-max-o authenticator:Lcom/android/okhttp/Authenticator;

.field final greylist-max-o certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field final greylist-max-o connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o dns:Lcom/android/okhttp/Dns;

.field final greylist-max-o hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final greylist-max-o protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o proxy:Ljava/net/Proxy;

.field final greylist-max-o proxySelector:Ljava/net/ProxySelector;

.field final greylist-max-o socketFactory:Ljavax/net/SocketFactory;

.field final greylist-max-o sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final greylist-max-o url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lcom/android/okhttp/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "certificatePinner"    # Lcom/android/okhttp/CertificatePinner;
    .param p8, "authenticator"    # Lcom/android/okhttp/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/okhttp/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lcom/android/okhttp/CertificatePinner;",
            "Lcom/android/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 56
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/android/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 58
    if-eqz p5, :cond_d

    const-string v1, "https"

    goto :goto_f

    :cond_d
    const-string v1, "http"

    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->port(I)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    .line 63
    if-eqz p3, :cond_72

    .line 64
    iput-object p3, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    .line 66
    if-eqz p4, :cond_6a

    .line 67
    iput-object p4, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 69
    if-eqz p8, :cond_62

    .line 70
    iput-object p8, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 72
    if-eqz p10, :cond_5a

    .line 73
    invoke-static {p10}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    .line 75
    if-eqz p11, :cond_52

    .line 76
    invoke-static {p11}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 78
    if-eqz p12, :cond_4a

    .line 79
    iput-object p12, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 81
    iput-object p9, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 82
    iput-object p5, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    iput-object p6, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 84
    iput-object p7, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 85
    return-void

    .line 78
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 175
    instance-of v0, p1, Lcom/android/okhttp/Address;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/Address;

    .line 177
    .local v0, "that":Lcom/android/okhttp/Address;
    iget-object v2, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    iget-object v3, v0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    iget-object v3, v0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    iget-object v3, v0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    .line 180
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 181
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 183
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 184
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 185
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    iget-object v3, v0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 186
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const/4 v1, 0x1

    goto :goto_6f

    :cond_6e
    nop

    .line 177
    :goto_6f
    return v1

    .line 188
    .end local v0    # "that":Lcom/android/okhttp/Address;
    :cond_70
    return v1
.end method

.method public greylist-max-o getAuthenticator()Lcom/android/okhttp/Authenticator;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object v0
.end method

.method public greylist-max-o getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object v0
.end method

.method public greylist-max-o getConnectionSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getDns()Lcom/android/okhttp/Dns;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    return-object v0
.end method

.method public greylist-max-o getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public greylist-max-o getProtocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getProxy()Ljava/net/Proxy;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public greylist-max-o getProxySelector()Ljava/net/ProxySelector;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public greylist-max-o getSocketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public greylist-max-o getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public greylist-max-o getUriHost()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getUriPort()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 192
    const/16 v0, 0x11

    .line 193
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 195
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 196
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 197
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 198
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 199
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    goto :goto_45

    :cond_44
    move v2, v3

    :goto_45
    add-int/2addr v1, v2

    .line 200
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_52

    :cond_51
    move v2, v3

    :goto_52
    add-int/2addr v0, v2

    .line 201
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5f

    :cond_5e
    move v2, v3

    :goto_5f
    add-int/2addr v1, v2

    .line 202
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_6a
    add-int/2addr v0, v3

    .line 203
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public greylist-max-o url()Lcom/android/okhttp/HttpUrl;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method
