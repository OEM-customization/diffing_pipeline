.class final Lcom/android/org/conscrypt/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Platform$NoPreloadHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/Platform$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/conscrypt/Platform$1;

    .line 69
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    return-void
.end method

.method static blacklist blockGuardOnNetwork()V
    .registers 1

    .line 426
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 427
    return-void
.end method

.method static blacklist checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 212
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    .line 213
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 214
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 215
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    goto :goto_31

    :cond_b
    const-class v5, Ljava/net/Socket;

    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-class v5, Ljava/lang/String;

    .line 217
    invoke-virtual {p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    .line 216
    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 218
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 220
    :cond_31
    :goto_31
    return-void
.end method

.method static blacklist checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 236
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    .line 237
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 238
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 239
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    goto :goto_31

    :cond_b
    const-class v5, Ljavax/net/ssl/SSLEngine;

    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-class v5, Ljava/lang/String;

    .line 241
    invoke-virtual {p3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    .line 240
    const-string v1, "checkClientTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 242
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 244
    :cond_31
    :goto_31
    return-void
.end method

.method static blacklist checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 224
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    .line 225
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 226
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 227
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    goto :goto_31

    :cond_b
    const-class v5, Ljava/net/Socket;

    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-class v5, Ljava/lang/String;

    .line 229
    invoke-virtual {p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    .line 228
    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 230
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 232
    :cond_31
    :goto_31
    return-void
.end method

.method static blacklist checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 11
    .param p0, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 248
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    .line 249
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 250
    .local v0, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 251
    .end local v0    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    goto :goto_31

    :cond_b
    const-class v5, Ljavax/net/ssl/SSLEngine;

    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-class v5, Ljava/lang/String;

    .line 253
    invoke-virtual {p3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    .line 252
    const-string v1, "checkServerTrusted"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 254
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 256
    :cond_31
    :goto_31
    return-void
.end method

.method private static blacklist checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 12
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "authType"    # Ljava/lang/String;
    .param p5, "argumentInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/X509TrustManager;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 196
    .local p4, "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 198
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    aput-object p3, v2, v5

    aput-object p5, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_23} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_24

    .line 199
    return v5

    .line 201
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_24
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_34

    .line 203
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateException;

    throw v1

    .line 205
    :cond_34
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3e
    move-exception v1

    .line 206
    nop

    .line 207
    return v0
.end method

.method static blacklist closeGuardClose(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .line 412
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 413
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 414
    return-void
.end method

.method static blacklist closeGuardGet()Ldalvik/system/CloseGuard;
    .registers 1

    .line 403
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method static blacklist closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "guardObj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .line 407
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 408
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method static blacklist closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .line 417
    move-object v0, p0

    check-cast v0, Ldalvik/system/CloseGuard;

    .line 418
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 419
    return-void
.end method

.method static blacklist createEngineSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 2
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 4
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 12
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v6, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist createEngineSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createEngineSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 12
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v6, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist createEngineSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptEngineSocket;
    .registers 12
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "autoClose"    # Z
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v6, Lcom/android/org/conscrypt/Java8EngineSocket;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8EngineSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist createFileDescriptorSocket(Lcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 2
    .param p0, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Lcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 4
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 12
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    new-instance v6, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 4
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 12
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "port"    # I
    .param p2, "clientAddress"    # Ljava/net/InetAddress;
    .param p3, "clientPort"    # I
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    new-instance v6, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist createFileDescriptorSocket(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
    .registers 12
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "autoClose"    # Z
    .param p4, "sslParameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v6, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/Java8FileDescriptorSocket;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/android/org/conscrypt/SSLParametersImpl;)V

    return-object v6
.end method

.method static blacklist fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;
    .registers 5
    .param p0, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 373
    instance-of v0, p0, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_15

    .line 374
    move-object v0, p0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 375
    .local v0, "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    new-instance v1, Lcom/android/org/conscrypt/GCMParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/GCMParameters;-><init>(I[B)V

    return-object v1

    .line 377
    .end local v0    # "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "params"    # Ljava/security/AlgorithmParameters;

    .line 385
    :try_start_0
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 386
    :catch_7
    move-exception v0

    .line 387
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 117
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getDefaultCertKeyStore()Ljava/security/KeyStore;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 494
    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 496
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_a} :catch_c

    .line 499
    nop

    .line 500
    return-object v0

    .line 497
    :catch_c
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist getDefaultProviderName()Ljava/lang/String;
    .registers 1

    .line 92
    const-string v0, "AndroidOpenSSL"

    return-object v0
.end method

.method static blacklist getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "s"    # Ljava/net/Socket;

    .line 100
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;
    .registers 6
    .param p0, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 105
    :try_start_0
    const-class v0, Ljava/net/Socket;

    const-string v1, "impl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 106
    .local v0, "f_impl":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    .local v2, "socketImpl":Ljava/lang/Object;
    const-class v3, Ljava/net/SocketImpl;

    const-string v4, "fd"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 109
    .local v3, "f_fd":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-object v1

    .line 111
    .end local v0    # "f_impl":Ljava/lang/reflect/Field;
    .end local v2    # "socketImpl":Ljava/lang/Object;
    .end local v3    # "f_fd":Ljava/lang/reflect/Field;
    :catch_22
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t get FileDescriptor from socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 476
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getOriginalHostNameFromInetAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .registers 7
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 449
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "holder"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 450
    .local v0, "getHolder":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 452
    const-string v3, "java.net.InetAddress$InetAddressHolder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getOriginalHostName"

    new-array v5, v2, [Ljava/lang/Class;

    .line 453
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 454
    .local v3, "getOriginalHostName":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 456
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "originalHostName":Ljava/lang/String;
    if-nez v1, :cond_35

    .line 458
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_34} :catch_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_34} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_34} :catch_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_34} :catch_36

    return-object v2

    .line 460
    :cond_35
    return-object v1

    .line 466
    .end local v0    # "getHolder":Ljava/lang/reflect/Method;
    .end local v1    # "originalHostName":Ljava/lang/String;
    .end local v3    # "getOriginalHostName":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v0

    goto :goto_3c

    .line 465
    :catch_38
    move-exception v0

    goto :goto_3b

    .line 463
    :catch_3a
    move-exception v0

    .line 467
    :goto_3b
    nop

    .line 468
    :goto_3c
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 461
    :catch_41
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get originalHostName"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 151
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 153
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 154
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    .line 155
    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 157
    :cond_2e
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method static blacklist getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 178
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 180
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 181
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    .line 182
    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 184
    :cond_2e
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method static blacklist isCTVerificationRequired(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostname"    # Ljava/lang/String;

    .line 485
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist logEvent(Ljava/lang/String;)V
    .registers 14
    .param p0, "message"    # Ljava/lang/String;

    .line 271
    :try_start_0
    const-string v0, "android.os.Process"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 272
    .local v0, "processClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 273
    .local v1, "processInstance":Ljava/lang/Object;
    const-string v2, "myUid"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 274
    .local v2, "myUidMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 276
    .local v4, "uid":I
    const-string v5, "android.util.EventLog"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 277
    .local v5, "eventLogClass":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 278
    .local v6, "eventLogInstance":Ljava/lang/Object;
    const-string v7, "writeEvent"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    const-class v10, [Ljava/lang/Object;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 280
    .local v7, "writeEventMethod":Ljava/lang/reflect/Method;
    new-array v9, v8, [Ljava/lang/Object;

    const v10, 0x534e4554

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const-string v12, "conscrypt"

    aput-object v12, v10, v3

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v11

    aput-object p0, v10, v8

    aput-object v10, v9, v11

    .line 280
    invoke-virtual {v7, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5d

    .line 284
    nop

    .end local v0    # "processClass":Ljava/lang/Class;
    .end local v1    # "processInstance":Ljava/lang/Object;
    .end local v2    # "myUidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "uid":I
    .end local v5    # "eventLogClass":Ljava/lang/Class;
    .end local v6    # "eventLogInstance":Ljava/lang/Object;
    .end local v7    # "writeEventMethod":Ljava/lang/reflect/Method;
    goto :goto_5e

    .line 282
    :catch_5d
    move-exception v0

    .line 285
    :goto_5e
    return-void
.end method

.method static blacklist newDefaultBlacklist()Lcom/android/org/conscrypt/CertBlacklist;
    .registers 1

    .line 508
    invoke-static {}, Lcom/android/org/conscrypt/CertBlacklistImpl;->getDefault()Lcom/android/org/conscrypt/CertBlacklist;

    move-result-object v0

    return-object v0
.end method

.method static blacklist newDefaultCertStore()Lcom/android/org/conscrypt/ConscryptCertStore;
    .registers 1

    .line 504
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    return-object v0
.end method

.method static blacklist newDefaultLogStore()Lcom/android/org/conscrypt/ct/CTLogStore;
    .registers 1

    .line 512
    new-instance v0, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;

    invoke-direct {v0}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>()V

    return-object v0
.end method

.method static blacklist newDefaultPolicy(Lcom/android/org/conscrypt/ct/CTLogStore;)Lcom/android/org/conscrypt/ct/CTPolicy;
    .registers 3
    .param p0, "logStore"    # Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 516
    new-instance v0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/ct/CTPolicyImpl;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V

    return-object v0
.end method

.method static blacklist oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Ljava/lang/String;

    .line 434
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 435
    :catch_9
    move-exception v0

    .line 436
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object p0
.end method

.method private blacklist ping()V
    .registers 1

    .line 82
    return-void
.end method

.method static blacklist provideTrustManagerByDefault()Z
    .registers 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist serverNamePermitted(Lcom/android/org/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z
    .registers 8
    .param p0, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "serverName"    # Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSNIMatchers()Ljava/util/Collection;

    move-result-object v0

    .line 521
    .local v0, "sniMatchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2d

    .line 525
    :cond_e
    new-instance v2, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v2, p1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 526
    .local v2, "hostname":Ljavax/net/ssl/SNIHostName;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SNIMatcher;

    .line 527
    .local v4, "m":Ljavax/net/ssl/SNIMatcher;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result v5

    .line 528
    .local v5, "match":Z
    if-eqz v5, :cond_2a

    .line 529
    return v1

    .line 531
    .end local v4    # "m":Ljavax/net/ssl/SNIMatcher;
    .end local v5    # "match":Z
    :cond_2a
    goto :goto_17

    .line 532
    :cond_2b
    const/4 v1, 0x0

    return v1

    .line 522
    .end local v2    # "hostname":Ljavax/net/ssl/SNIHostName;
    :cond_2d
    :goto_2d
    return v1
.end method

.method static blacklist setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method static blacklist setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .line 135
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 137
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v0, :cond_36

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 140
    .local v2, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_35

    .line 141
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 142
    goto :goto_36

    .line 144
    .end local v2    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_35
    goto :goto_18

    .line 146
    :cond_36
    :goto_36
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method static blacklist setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 162
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 164
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v0, :cond_36

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SNIServerName;

    .line 167
    .local v2, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v2}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_35

    .line 168
    move-object v1, v2

    check-cast v1, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v1}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 169
    goto :goto_36

    .line 171
    .end local v2    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_35
    goto :goto_18

    .line 173
    :cond_36
    :goto_36
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method static blacklist setSocketWriteTimeout(Ljava/net/Socket;J)V
    .registers 7
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 125
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v0

    .line 127
    .local v0, "tv":Landroid/system/StructTimeval;
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v1, v2, v3, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_11

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_11
    move-exception v1

    .line 129
    .local v1, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist setup()V
    .registers 1

    .line 76
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    .line 77
    return-void
.end method

.method static blacklist supportsConscryptCertStore()Z
    .registers 1

    .line 490
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist supportsX509ExtendedTrustManager()Z
    .registers 1

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method static blacklist toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "tagLenInBits"    # I
    .param p1, "iv"    # [B

    .line 395
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method

.method static blacklist unwrapEngine(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 292
    invoke-static {p0}, Lcom/android/org/conscrypt/Java8EngineWrapper;->getDelegate(Ljavax/net/ssl/SSLEngine;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method static blacklist wrapEngine(Lcom/android/org/conscrypt/ConscryptEngine;)Ljavax/net/ssl/SSLEngine;
    .registers 2
    .param p0, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .line 288
    new-instance v0, Lcom/android/org/conscrypt/Java8EngineWrapper;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8EngineWrapper;-><init>(Lcom/android/org/conscrypt/ConscryptEngine;)V

    return-object v0
.end method

.method static blacklist wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2
    .param p0, "key"    # Ljava/security/PrivateKey;

    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist wrapSSLSession(Lcom/android/org/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;
    .registers 2
    .param p0, "sslSession"    # Lcom/android/org/conscrypt/ExternalSession;

    .line 444
    new-instance v0, Lcom/android/org/conscrypt/Java8ExtendedSSLSession;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/Java8ExtendedSSLSession;-><init>(Lcom/android/org/conscrypt/ExternalSession;)V

    return-object v0
.end method

.method static blacklist wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 1
    .param p0, "factory"    # Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    .line 366
    return-object p0
.end method
