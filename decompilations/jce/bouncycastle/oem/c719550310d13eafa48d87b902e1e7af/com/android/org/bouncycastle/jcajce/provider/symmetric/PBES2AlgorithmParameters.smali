.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;
.super Ljava/lang/Object;
.source "PBES2AlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$BasePBEWithHmacAlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$Mappings;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES128AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA1AES256AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES128AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA224AES256AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES128AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA256AES256AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES128AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA384AES256AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES128AlgorithmParameters;,
        Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters$PBEWithHmacSHA512AES256AlgorithmParameters;
    }
.end annotation


# direct methods
.method static synthetic -wrap0([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 4
    .param p0, "salt"    # [B
    .param p1, "iterationCount"    # I
    .param p2, "iv"    # [B

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;->createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static createPBEParameterSpec([BI[B)Ljavax/crypto/spec/PBEParameterSpec;
    .registers 9
    .param p0, "salt"    # [B
    .param p1, "iterationCount"    # I
    .param p2, "iv"    # [B

    .prologue
    .line 318
    :try_start_0
    const-class v3, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/PBES2AlgorithmParameters;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 319
    const-string/jumbo v4, "javax.crypto.spec.PBEParameterSpec"

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 321
    .local v2, "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 322
    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 323
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v3

    .line 324
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljavax/crypto/spec/PBEParameterSpec;>;"
    .end local v2    # "pbeParameterSpecClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljavax/crypto/spec/PBEParameterSpec;>;"
    :catch_3f
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 326
    const-string/jumbo v4, "Requested creation PBES2 parameters in an SDK that doesn\'t support them"

    .line 325
    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
