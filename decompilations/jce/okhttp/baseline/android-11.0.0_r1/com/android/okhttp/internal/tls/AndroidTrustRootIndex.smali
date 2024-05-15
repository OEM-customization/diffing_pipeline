.class public final Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;
.super Ljava/lang/Object;
.source "AndroidTrustRootIndex.java"

# interfaces
.implements Lcom/android/okhttp/internal/tls/TrustRootIndex;


# instance fields
.field private final blacklist findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

.field private final blacklist trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor blacklist <init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    .registers 3
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "findByIssuerAndSignatureMethod"    # Ljava/lang/reflect/Method;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    .line 38
    iput-object p1, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 39
    return-void
.end method

.method public static blacklist get(Ljavax/net/ssl/X509TrustManager;)Lcom/android/okhttp/internal/tls/TrustRootIndex;
    .registers 7
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findTrustAnchorByIssuerAndSignature"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 62
    new-instance v1, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;

    invoke-direct {v1, p0, v0}, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;-><init>(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v1

    .line 63
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 43
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->findByIssuerAndSignatureMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/okhttp/internal/tls/AndroidTrustRootIndex;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 45
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_18

    .line 46
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_17} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_17} :catch_1a

    goto :goto_19

    .line 47
    :cond_18
    nop

    .line 45
    :goto_19
    return-object v0

    .line 50
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :catch_1a
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v0

    .line 48
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1c
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
