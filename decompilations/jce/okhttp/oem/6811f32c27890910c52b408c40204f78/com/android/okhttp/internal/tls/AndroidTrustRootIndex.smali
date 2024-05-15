.class public final Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;
.super Ljava/lang/Object;
.source "AndroidTrustRootIndex.java"

# interfaces
.implements Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field private final findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "findByIssuerAndSignatureMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 36
    iput-object p1, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 37
    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 8
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 58
    const-string/jumbo v3, "findTrustAnchorByIssuerAndSignature"

    .line 57
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    .line 58
    const-class v5, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    new-instance v2, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;

    invoke-direct {v2, p0, v1}, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v2

    .line 61
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_1d
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 41
    :try_start_1
    iget-object v4, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 42
    iget-object v5, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 41
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 42
    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 41
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 43
    .local v2, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v2, :cond_17

    .line 44
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_16} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v3

    .line 43
    :cond_17
    return-object v3

    .line 48
    .end local v2    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_18
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v3

    .line 46
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1a
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method
