.class public final Lcom/android/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lcom/android/okhttp/Authenticator;

.field final certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lcom/android/okhttp/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/android/okhttp/CertificatePinner;Lcom/android/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
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
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lcom/android/okhttp/HttpUrl$Builder;

    invoke-direct {v1}, Lcom/android/okhttp/HttpUrl$Builder;-><init>()V

    .line 56
    if-eqz p5, :cond_2a

    const-string/jumbo v0, "https"

    .line 55
    :goto_d
    invoke-virtual {v1, v0}, Lcom/android/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/okhttp/HttpUrl$Builder;->port(I)Lcom/android/okhttp/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl$Builder;->build()Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    .line 61
    if-nez p3, :cond_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2a
    const-string/jumbo v0, "http"

    goto :goto_d

    .line 62
    :cond_2e
    iput-object p3, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    .line 64
    if-nez p4, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3b
    iput-object p4, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-nez p8, :cond_48

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_48
    iput-object p8, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 70
    if-nez p10, :cond_55

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_55
    invoke-static {p10}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    .line 73
    if-nez p11, :cond_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_66
    invoke-static {p11}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 76
    if-nez p12, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_77
    iput-object p12, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 79
    iput-object p9, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 80
    iput-object p5, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    iput-object p6, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput-object p7, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 173
    instance-of v2, p1, Lcom/android/okhttp/Address;

    if-eqz v2, :cond_6b

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/android/okhttp/Address;

    .line 175
    .local v0, "that":Lcom/android/okhttp/Address;
    iget-object v2, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    iget-object v3, v0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v2, v3}, Lcom/android/okhttp/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 176
    iget-object v2, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    iget-object v3, v0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 177
    iget-object v2, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    iget-object v3, v0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 178
    iget-object v2, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 179
    iget-object v2, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 180
    iget-object v2, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2, v3}, Ljava/net/ProxySelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 181
    iget-object v2, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 182
    iget-object v2, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 183
    iget-object v2, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_6a

    .line 184
    iget-object v1, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    iget-object v2, v0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    invoke-static {v1, v2}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 175
    :cond_6a
    return v1

    .line 186
    .end local v0    # "that":Lcom/android/okhttp/Address;
    :cond_6b
    return v1
.end method

.method public getAuthenticator()Lcom/android/okhttp/Authenticator;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object v0
.end method

.method public getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getDns()Lcom/android/okhttp/Dns;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriPort()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->port()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 190
    const/16 v0, 0x11

    .line 191
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->dns:Lcom/android/okhttp/Dns;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->authenticator:Lcom/android/okhttp/Authenticator;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/net/ProxySelector;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 197
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_49
    add-int v0, v3, v1

    .line 198
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/android/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->hashCode()I

    move-result v1

    :goto_57
    add-int v0, v3, v1

    .line 199
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/android/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_65
    add-int v0, v3, v1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    if-eqz v3, :cond_73

    iget-object v2, p0, Lcom/android/okhttp/Address;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    invoke-virtual {v2}, Lcom/android/okhttp/CertificatePinner;->hashCode()I

    move-result v2

    :cond_73
    add-int v0, v1, v2

    .line 201
    return v0

    :cond_76
    move v1, v2

    .line 197
    goto :goto_49

    :cond_78
    move v1, v2

    .line 198
    goto :goto_57

    :cond_7a
    move v1, v2

    .line 199
    goto :goto_65
.end method

.method public url()Lcom/android/okhttp/HttpUrl;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Address;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method
