.class public final Lcom/android/okhttp/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/ConnectionSpec$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

.field public static final greylist-max-o CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

.field public static final greylist-max-o COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

.field public static final greylist-max-o MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final greylist-max-o cipherSuites:[Ljava/lang/String;

.field private final greylist-max-o supportsTlsExtensions:Z

.field private final greylist-max-o tls:Z

.field private final greylist-max-o tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 45
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/okhttp/CipherSuite;

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    .line 66
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v5, [Lcom/android/okhttp/TlsVersion;

    sget-object v5, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    aput-object v5, v1, v2

    sget-object v5, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    aput-object v5, v1, v3

    sget-object v5, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    aput-object v5, v1, v4

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 73
    new-instance v1, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    new-array v0, v3, [Lcom/android/okhttp/TlsVersion;

    sget-object v4, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    aput-object v4, v0, v2

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 79
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v2}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$000(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    .line 88
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$100(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 89
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$200(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 90
    # getter for: Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->access$300(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/ConnectionSpec$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/ConnectionSpec$1;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionSpec;

    .line 40
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionSpec;

    .line 40
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionSpec;

    .line 40
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/ConnectionSpec;

    .line 40
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method private static greylist-max-o nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    array-length v1, p0

    if-eqz v1, :cond_1e

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_1e

    .line 203
    :cond_c
    array-length v1, p0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 204
    .local v3, "toFind":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 205
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v3    # "toFind":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 208
    :cond_1d
    return v0

    .line 201
    :cond_1e
    :goto_1e
    return v0
.end method

.method private greylist-max-o supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;
    .registers 7
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 147
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_15

    .line 148
    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_15
    nop

    .line 149
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 150
    const-class v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_2b

    .line 151
    :cond_27
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_2b
    nop

    .line 155
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    if-eqz p2, :cond_3e

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 156
    invoke-static {v0, v3}, Lcom/android/okhttp/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_3e
    new-instance v2, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    .line 160
    invoke-virtual {v2, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v2

    .line 159
    return-object v2
.end method


# virtual methods
.method greylist-max-o apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    .line 133
    .local v0, "specToApply":Lcom/android/okhttp/ConnectionSpec;
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 134
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 136
    :cond_b
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 137
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 139
    :cond_12
    return-void
.end method

.method public greylist-max-o cipherSuites()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Lcom/android/okhttp/CipherSuite;

    .line 105
    .local v0, "result":[Lcom/android/okhttp/CipherSuite;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 106
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 108
    .end local v1    # "i":I
    :cond_1a
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 212
    instance-of v0, p1, Lcom/android/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 213
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 215
    :cond_a
    move-object v2, p1

    check-cast v2, Lcom/android/okhttp/ConnectionSpec;

    .line 216
    .local v2, "that":Lcom/android/okhttp/ConnectionSpec;
    iget-boolean v3, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v4, v2, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eq v3, v4, :cond_14

    return v1

    .line 218
    :cond_14
    if-eqz v3, :cond_33

    .line 219
    iget-object v3, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v2, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    return v1

    .line 220
    :cond_21
    iget-object v3, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v2, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    return v1

    .line 221
    :cond_2c
    iget-boolean v3, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v4, v2, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v3, v4, :cond_33

    return v1

    .line 224
    :cond_33
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 228
    const/16 v0, 0x11

    .line 229
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_20

    .line 230
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 231
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 232
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    xor-int/lit8 v2, v2, 0x1

    add-int v0, v1, v2

    .line 234
    :cond_20
    return v0
.end method

.method public greylist-max-o isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 177
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 178
    return v1

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 182
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 183
    return v1

    .line 186
    :cond_15
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 187
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 188
    return v1

    .line 191
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o isTls()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method public greylist-max-o supportsTlsExtensions()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public greylist-max-o tlsVersions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_6
    array-length v0, v0

    new-array v0, v0, [Lcom/android/okhttp/TlsVersion;

    .line 119
    .local v0, "result":[Lcom/android/okhttp/TlsVersion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 120
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 122
    .end local v1    # "i":I
    :cond_1a
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 238
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-nez v0, :cond_7

    .line 239
    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 243
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_17
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
