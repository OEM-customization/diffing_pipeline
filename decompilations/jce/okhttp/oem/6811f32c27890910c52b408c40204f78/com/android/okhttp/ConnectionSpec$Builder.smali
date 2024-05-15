.class public final Lcom/android/okhttp/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/ConnectionSpec$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/ConnectionSpec$Builder;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/ConnectionSpec$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/okhttp/ConnectionSpec;)V
    .registers 3
    .param p1, "connectionSpec"    # Lcom/android/okhttp/ConnectionSpec;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get2(Lcom/android/okhttp/ConnectionSpec;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    .line 261
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get0(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get3(Lcom/android/okhttp/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/android/okhttp/ConnectionSpec;->-get1(Lcom/android/okhttp/ConnectionSpec;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 264
    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .param p1, "tls"    # Z

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    .line 257
    return-void
.end method


# virtual methods
.method public allEnabledCipherSuites()Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 3

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 269
    return-object p0
.end method

.method public allEnabledTlsVersions()Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 3

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public build()Lcom/android/okhttp/ConnectionSpec;
    .registers 3

    .prologue
    .line 328
    new-instance v0, Lcom/android/okhttp/ConnectionSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/ConnectionSpec;-><init>(Lcom/android/okhttp/ConnectionSpec$Builder;Lcom/android/okhttp/ConnectionSpec;)V

    return-object v0
.end method

.method public varargs cipherSuites([Lcom/android/okhttp/CipherSuite;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 6
    .param p1, "cipherSuites"    # [Lcom/android/okhttp/CipherSuite;

    .prologue
    .line 273
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no cipher suites for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_d
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 276
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 277
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/android/okhttp/CipherSuite;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 279
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    return-object v2
.end method

.method public varargs cipherSuites([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 4
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_d
    array-length v0, p1

    if-nez v0, :cond_19

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 4
    .param p1, "supportsTlsExtensions"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_d
    iput-boolean p1, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 324
    return-object p0
.end method

.method public varargs tlsVersions([Lcom/android/okhttp/TlsVersion;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 6
    .param p1, "tlsVersions"    # [Lcom/android/okhttp/TlsVersion;

    .prologue
    .line 300
    iget-boolean v2, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no TLS versions for cleartext connections"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 302
    :cond_d
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 303
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v2, p1

    if-ge v0, v2, :cond_1d

    .line 304
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/android/okhttp/TlsVersion;->javaName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 307
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v2

    return-object v2
.end method

.method public varargs tlsVersions([Ljava/lang/String;)Lcom/android/okhttp/ConnectionSpec$Builder;
    .registers 4
    .param p1, "tlsVersions"    # [Ljava/lang/String;

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tls:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_d
    array-length v0, p1

    if-nez v0, :cond_19

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/okhttp/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 318
    return-object p0
.end method
