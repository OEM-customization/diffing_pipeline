.class public final Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;
.super Ljava/lang/Object;
.source "AndroidDigestFactory.java"


# static fields
.field private static final BouncyCastleFactoryClassName:Ljava/lang/String;

.field private static final FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

.field private static final OpenSSLFactoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "OpenSSL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26
    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "BouncyCastle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    .line 35
    :try_start_38
    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 37
    .local v5, "factoryImplementationClass":Ljava/lang/Class;
    const-string/jumbo v6, "com.android.org.conscrypt.NativeCrypto"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_44} :catch_66

    .line 51
    :goto_44
    const-class v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 52
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 53
    const-string/jumbo v8, "does not implement AndroidDigestFactoryInterface"

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 38
    :catch_66
    move-exception v3

    .line 40
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    :try_start_67
    sget-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_6c} :catch_6e

    move-result-object v5

    goto :goto_44

    .line 41
    :catch_6e
    move-exception v4

    .line 42
    .local v4, "e2":Ljava/lang/ClassNotFoundException;
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load AndroidDigestFactoryInterface implementation. Looked for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    sget-object v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->OpenSSLFactoryClassName:Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    const-string/jumbo v7, " and "

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 46
    sget-object v7, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->BouncyCastleFactoryClassName:Ljava/lang/String;

    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-virtual {v0, v3}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 48
    throw v0

    .line 56
    .end local v0    # "e":Ljava/lang/AssertionError;
    .end local v3    # "e1":Ljava/lang/ClassNotFoundException;
    .end local v4    # "e2":Ljava/lang/ClassNotFoundException;
    :cond_9b
    :try_start_9b
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    sput-object v6, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;
    :try_end_a3
    .catch Ljava/lang/InstantiationException; {:try_start_9b .. :try_end_a3} :catch_ab
    .catch Ljava/lang/IllegalAccessException; {:try_start_9b .. :try_end_a3} :catch_a4

    .line 25
    return-void

    .line 59
    :catch_a4
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 57
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_ab
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA224()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA256()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA384()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->FACTORY:Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;->getSHA512()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method
