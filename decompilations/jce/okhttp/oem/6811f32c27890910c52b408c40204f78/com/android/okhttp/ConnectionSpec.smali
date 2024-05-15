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
.field private static final APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

.field public static final CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

.field public static final COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

.field public static final MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field private final supportsTlsExtensions:Z

.field private final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/ConnectionSpec;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/okhttp/CipherSuite;

    .line 44
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    aput-object v1, v0, v4

    .line 45
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    aput-object v1, v0, v3

    .line 46
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    aput-object v1, v0, v5

    .line 51
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    aput-object v1, v0, v6

    .line 52
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 56
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 57
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/android/okhttp/CipherSuite;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 58
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 59
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 60
    sget-object v1, Lcom/android/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/android/okhttp/CipherSuite;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 43
    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    .line 64
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    .line 65
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->APPROVED_CIPHER_SUITES:[Lcom/android/okhttp/CipherSuite;

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    new-array v1, v6, [Lcom/android/okhttp/TlsVersion;

    .line 66
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_2:Lcom/android/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_1:Lcom/android/okhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 71
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    new-array v1, v3, [Lcom/android/okhttp/TlsVersion;

    .line 72
    sget-object v2, Lcom/android/okhttp/TlsVersion;->TLS_1_0:Lcom/android/okhttp/TlsVersion;

    aput-object v2, v1, v4

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    .line 77
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v4}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get2(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    .line 86
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get0(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get3(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec$Builder;->-get1(Lcom/android/okhttp/ConnectionSpec$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/ConnectionSpec$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;)V

    return-void
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 198
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 199
    :cond_5
    return v2

    .line 198
    :cond_6
    array-length v1, p0

    if-eqz v1, :cond_5

    array-length v1, p1

    if-eqz v1, :cond_5

    .line 201
    array-length v3, p0

    move v1, v2

    :goto_e
    if-ge v1, v3, :cond_1d

    aget-object v0, p0, v1

    .line 202
    .local v0, "toFind":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 203
    const/4 v1, 0x1

    return v1

    .line 201
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 206
    .end local v0    # "toFind":Ljava/lang/String;
    :cond_1d
    return v2
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;
    .registers 8
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 144
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_4c

    .line 145
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 147
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    :goto_12
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_51

    .line 148
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/okhttp/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 153
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    :goto_24
    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/Util;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 154
    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3a
    new-instance v2, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v2, p0}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Lcom/android/okhttp/ConnectionSpec;)V

    invoke-virtual {v2, v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v2

    return-object v2

    .line 146
    .end local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    .end local v1    # "tlsVersionsIntersection":[Ljava/lang/String;
    :cond_4c
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    goto :goto_12

    .line 149
    :cond_51
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tlsVersionsIntersection":[Ljava/lang/String;
    goto :goto_24
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/ConnectionSpec;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    .line 131
    .local v0, "specToApply":Lcom/android/okhttp/ConnectionSpec;
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 132
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 134
    :cond_d
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 135
    iget-object v1, v0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 137
    :cond_16
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-nez v2, :cond_6

    return-object v3

    .line 102
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/android/okhttp/CipherSuite;

    .line 103
    .local v1, "result":[Lcom/android/okhttp/CipherSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 104
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 106
    :cond_1e
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    instance-of v1, p1, Lcom/android/okhttp/ConnectionSpec;

    if-nez v1, :cond_7

    return v3

    .line 211
    :cond_7
    if-ne p1, p0, :cond_a

    return v4

    :cond_a
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/android/okhttp/ConnectionSpec;

    .line 214
    .local v0, "that":Lcom/android/okhttp/ConnectionSpec;
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    iget-boolean v2, v0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eq v1, v2, :cond_14

    return v3

    .line 216
    :cond_14
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_35

    .line 217
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    iget-object v2, v0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 218
    :cond_23
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    iget-object v2, v0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v3

    .line 219
    :cond_2e
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    iget-boolean v2, v0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eq v1, v2, :cond_35

    return v3

    .line 222
    :cond_35
    return v4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 226
    const/16 v0, 0x11

    .line 227
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-eqz v1, :cond_21

    .line 228
    iget-object v1, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 229
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    :goto_1f
    add-int v0, v2, v1

    .line 232
    :cond_21
    return v0

    .line 230
    :cond_22
    const/4 v1, 0x1

    goto :goto_1f
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-nez v0, :cond_6

    .line 176
    return v2

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 180
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 179
    if-eqz v0, :cond_19

    .line 181
    return v2

    .line 184
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 185
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/okhttp/ConnectionSpec;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 184
    if-eqz v0, :cond_2c

    .line 186
    return v2

    .line 189
    :cond_2c
    const/4 v0, 0x1

    return v0
.end method

.method public isTls()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    return v0
.end method

.method public supportsTlsExtensions()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-nez v2, :cond_6

    return-object v3

    .line 116
    :cond_6
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/android/okhttp/TlsVersion;

    .line 117
    .local v1, "result":[Lcom/android/okhttp/TlsVersion;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 118
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/android/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 120
    :cond_1e
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec;->tls:Z

    if-nez v2, :cond_8

    .line 237
    const-string/jumbo v2, "ConnectionSpec()"

    return-object v2

    .line 240
    :cond_8
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->cipherSuites()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_14
    iget-object v2, p0, Lcom/android/okhttp/ConnectionSpec;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_58

    invoke-virtual {p0}, Lcom/android/okhttp/ConnectionSpec;->tlsVersions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    const-string/jumbo v3, ", tlsVersions="

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string/jumbo v3, ", supportsTlsExtensions="

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    iget-boolean v3, p0, Lcom/android/okhttp/ConnectionSpec;->supportsTlsExtensions:Z

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string/jumbo v3, ")"

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 240
    .end local v0    # "cipherSuitesString":Ljava/lang/String;
    .end local v1    # "tlsVersionsString":Ljava/lang/String;
    :cond_54
    const-string/jumbo v0, "[all enabled]"

    .restart local v0    # "cipherSuitesString":Ljava/lang/String;
    goto :goto_14

    .line 241
    :cond_58
    const-string/jumbo v1, "[all enabled]"

    .restart local v1    # "tlsVersionsString":Ljava/lang/String;
    goto :goto_20
.end method
