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
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/Platform;)V
    .registers 2
    .param p1, "-this0"    # Lcom/android/org/conscrypt/Platform;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/Platform;-><init>()V

    return-void
.end method

.method static blockGuardOnNetwork()V
    .registers 1

    .prologue
    .line 319
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 320
    return-void
.end method

.method static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
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

    .prologue
    .line 183
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    move-object v6, p0

    .line 184
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 185
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 191
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_a
    :goto_a
    return-void

    .line 186
    :cond_b
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 187
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    .line 188
    invoke-virtual {p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 187
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 186
    if-eqz v0, :cond_a

    .line 189
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
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

    .prologue
    .line 207
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    move-object v6, p0

    .line 208
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 209
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 215
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_a
    :goto_a
    return-void

    .line 210
    :cond_b
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 211
    const-string/jumbo v0, "checkClientTrusted"

    const-class v4, Ljava/lang/String;

    .line 212
    invoke-virtual {p3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 211
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 210
    if-eqz v0, :cond_a

    .line 213
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
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

    .prologue
    .line 195
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    move-object v6, p0

    .line 196
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 197
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 203
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_a
    :goto_a
    return-void

    .line 198
    :cond_b
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/net/Socket;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 199
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    .line 200
    invoke-virtual {p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 198
    if-eqz v0, :cond_a

    .line 201
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lcom/android/org/conscrypt/ConscryptEngine;)V
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

    .prologue
    .line 219
    instance-of v0, p0, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-eqz v0, :cond_b

    move-object v6, p0

    .line 220
    check-cast v6, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 221
    .local v6, "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    invoke-virtual {v6, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 227
    .end local v6    # "x509etm":Ljavax/net/ssl/X509ExtendedTrustManager;
    :cond_a
    :goto_a
    return-void

    .line 222
    :cond_b
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljavax/net/ssl/SSLEngine;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 223
    const-string/jumbo v0, "checkServerTrusted"

    const-class v4, Ljava/lang/String;

    .line 224
    invoke-virtual {p3}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 223
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/Platform;->checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 222
    if-eqz v0, :cond_a

    .line 225
    invoke-interface {p0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private static checkTrusted(Ljava/lang/String;Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 15
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
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .local p4, "argumentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 168
    const-class v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object p4, v4, v5

    .line 167
    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 169
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_29} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_29} :catch_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_29} :catch_2a

    .line 170
    return v8

    .line 172
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_2a
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/security/cert/CertificateException;

    if-eqz v3, :cond_3a

    .line 174
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateException;

    throw v3

    .line 176
    :cond_3a
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_44
    move-exception v1

    .line 178
    .local v1, "ignored":Ljava/lang/ReflectiveOperationException;
    return v7
.end method

.method static closeGuardClose(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .prologue
    move-object v0, p0

    .line 305
    check-cast v0, Ldalvik/system/CloseGuard;

    .line 306
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 307
    return-void
.end method

.method static closeGuardGet()Ldalvik/system/CloseGuard;
    .registers 1

    .prologue
    .line 296
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method static closeGuardOpen(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p0, "guardObj"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    move-object v0, p0

    .line 300
    check-cast v0, Ldalvik/system/CloseGuard;

    .line 301
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method static closeGuardWarnIfOpen(Ljava/lang/Object;)V
    .registers 2
    .param p0, "guardObj"    # Ljava/lang/Object;

    .prologue
    move-object v0, p0

    .line 310
    check-cast v0, Ldalvik/system/CloseGuard;

    .line 311
    .local v0, "guard":Ldalvik/system/CloseGuard;
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 312
    return-void
.end method

.method static fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;
    .registers 5
    .param p0, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 277
    instance-of v1, p0, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v1, :cond_15

    move-object v0, p0

    .line 278
    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 279
    .local v0, "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    new-instance v1, Lcom/android/org/conscrypt/GCMParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/GCMParameters;-><init>(I[B)V

    return-object v1

    .line 281
    .end local v0    # "gcmParams":Ljavax/crypto/spec/GCMParameterSpec;
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "s"    # Ljava/net/Socket;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static getFileDescriptorFromSSLSocket(Lcom/android/org/conscrypt/AbstractConscryptSocket;)Ljava/io/FileDescriptor;
    .registers 7
    .param p0, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .prologue
    .line 80
    :try_start_0
    const-class v4, Ljava/net/Socket;

    const-string/jumbo v5, "impl"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 81
    .local v2, "f_impl":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, "socketImpl":Ljava/lang/Object;
    const-class v4, Ljava/net/SocketImpl;

    const-string/jumbo v5, "fd"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 84
    .local v1, "f_fd":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/FileDescriptor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-object v4

    .line 86
    .end local v1    # "f_fd":Ljava/lang/reflect/Field;
    .end local v2    # "f_impl":Ljava/lang/reflect/Field;
    .end local v3    # "socketImpl":Ljava/lang/Object;
    :catch_25
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Can\'t get FileDescriptor from socket"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static getHostStringFromInetSocketAddress(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .registers 2
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 127
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 129
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p2}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 131
    :cond_2e
    return-void
.end method

.method static getSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 5
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseCipherSuitesOrder()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 152
    invoke-virtual {p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 154
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {p2}, Lcom/android/org/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 156
    :cond_2e
    return-void
.end method

.method static isCTVerificationRequired(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isLiteralIpAddress(Ljava/lang/String;)Z
    .registers 2
    .param p0, "hostname"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static logEvent(Ljava/lang/String;)V
    .registers 13
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 242
    :try_start_0
    const-string/jumbo v8, "android.os.Process"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 243
    .local v4, "processClass":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 244
    .local v5, "processInstance":Ljava/lang/Object;
    const-string/jumbo v9, "myUid"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 245
    .local v3, "myUidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 247
    .local v6, "uid":I
    const-string/jumbo v8, "android.util.EventLog"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 248
    .local v1, "eventLogClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, "eventLogInstance":Ljava/lang/Object;
    const-string/jumbo v8, "writeEvent"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, [Ljava/lang/Object;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 249
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 251
    .local v7, "writeEventMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const v9, 0x534e4554

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 252
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "conscrypt"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 251
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    .line 256
    .end local v1    # "eventLogClass":Ljava/lang/Class;
    .end local v2    # "eventLogInstance":Ljava/lang/Object;
    .end local v3    # "myUidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "processClass":Ljava/lang/Class;
    .end local v5    # "processInstance":Ljava/lang/Object;
    .end local v6    # "uid":I
    .end local v7    # "writeEventMethod":Ljava/lang/reflect/Method;
    :goto_67
    return-void

    .line 253
    :catch_68
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_67
.end method

.method static oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    .line 327
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 328
    :catch_9
    move-exception v0

    .line 329
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object p0
.end method

.method private ping()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method static setCurveName(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)V
    .registers 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Ljava/security/spec/ECParameterSpec;->setCurveName(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/AbstractConscryptSocket;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "socket"    # Lcom/android/org/conscrypt/AbstractConscryptSocket;

    .prologue
    .line 110
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 112
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v2, :cond_33

    .line 114
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serverName$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    .line 115
    .local v0, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_18

    .line 116
    check-cast v0, Ljavax/net/ssl/SNIHostName;

    .end local v0    # "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 121
    .end local v1    # "serverName$iterator":Ljava/util/Iterator;
    :cond_33
    return-void
.end method

.method static setSSLParameters(Ljavax/net/ssl/SSLParameters;Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/ConscryptEngine;)V
    .registers 7
    .param p0, "params"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "impl"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p2, "engine"    # Lcom/android/org/conscrypt/ConscryptEngine;

    .prologue
    .line 135
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->setUseCipherSuitesOrder(Z)V

    .line 137
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "serverNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v2, :cond_33

    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serverName$iterator":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    .line 140
    .local v0, "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    if-nez v3, :cond_18

    .line 141
    check-cast v0, Ljavax/net/ssl/SNIHostName;

    .end local v0    # "serverName":Ljavax/net/ssl/SNIServerName;
    invoke-virtual {v0}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 146
    .end local v1    # "serverName$iterator":Ljava/util/Iterator;
    :cond_33
    return-void
.end method

.method static setSocketWriteTimeout(Ljava/net/Socket;J)V
    .registers 8
    .param p0, "s"    # Ljava/net/Socket;
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p1, p2}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v1

    .line 102
    .local v1, "tv":Landroid/system/StructTimeval;
    :try_start_4
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {v2, v3, v4, v1}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_10

    .line 106
    return-void

    .line 103
    :catch_10
    move-exception v0

    .line 104
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static setup()V
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/org/conscrypt/Platform$NoPreloadHolder;->MAPPER:Lcom/android/org/conscrypt/Platform;

    invoke-direct {v0}, Lcom/android/org/conscrypt/Platform;->ping()V

    .line 65
    return-void
.end method

.method static toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "tagLenInBits"    # I
    .param p1, "iv"    # [B

    .prologue
    .line 288
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method

.method static unwrapSSLSession(Ljavax/net/ssl/SSLSession;)Ljavax/net/ssl/SSLSession;
    .registers 2
    .param p0, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 342
    instance-of v0, p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;

    if-eqz v0, :cond_b

    .line 343
    check-cast p0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;

    .end local p0    # "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-virtual {p0}, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;->getDelegate()Lcom/android/org/conscrypt/ActiveSession;

    move-result-object v0

    return-object v0

    .line 346
    .restart local p0    # "sslSession":Ljavax/net/ssl/SSLSession;
    :cond_b
    return-object p0
.end method

.method static wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 2
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method static wrapSSLSession(Lcom/android/org/conscrypt/ActiveSession;)Ljavax/net/ssl/SSLSession;
    .registers 2
    .param p0, "sslSession"    # Lcom/android/org/conscrypt/ActiveSession;

    .prologue
    .line 338
    new-instance v0, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/DelegatingExtendedSSLSession;-><init>(Lcom/android/org/conscrypt/ActiveSession;)V

    return-object v0
.end method

.method static wrapSocketFactoryIfNeeded(Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 1
    .param p0, "factory"    # Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    .prologue
    .line 270
    return-object p0
.end method
