.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$CipherAdapter;,
        Ljava/security/Signature$Delegate;
    }
.end annotation


# static fields
.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3

.field private static final rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static synthetic -get0(Ljava/security/Signature;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/security/Signature;

    .prologue
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/List;
    .registers 1

    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .registers 2
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 317
    const/4 v1, 0x5

    new-array v1, v1, [Lsun/security/jca/ServiceId;

    .line 318
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Signature"

    const-string/jumbo v4, "NONEwithRSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 319
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 320
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 321
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA//PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 322
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 316
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    .line 404
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    .line 405
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 407
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$RawDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$SHA1withDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.pkcs11.P11Signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 306
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 10
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 356
    const-string/jumbo v6, "NONEwithRSA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 357
    sget-object v6, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    invoke-static {v6}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 361
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 362
    .local v5, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_43

    .line 363
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Signature not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 359
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_33
    const-string/jumbo v6, "Signature"

    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_f

    .line 380
    .local v4, "s":Ljava/security/Provider$Service;
    .restart local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catch_3b
    move-exception v0

    .line 381
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .line 384
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 369
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_43
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 370
    .restart local v4    # "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 373
    new-instance v6, Ljava/security/Signature$Delegate;

    invoke-direct {v6, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 378
    :cond_55
    :try_start_55
    const-class v6, Ljava/security/SignatureSpi;

    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 379
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_55 .. :try_end_5e} :catch_3b

    move-result-object v6

    return-object v6

    .line 385
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_60
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 489
    const-string/jumbo v2, "NONEwithRSA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 491
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 492
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_1a
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 495
    .local v1, "p":Ljava/security/Provider;
    if-nez v1, :cond_3a

    .line 496
    new-instance v2, Ljava/security/NoSuchProviderException;

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_3a
    invoke-static {v1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v2

    return-object v2

    .line 502
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3f
    const-string/jumbo v2, "Signature"

    const-class v3, Ljava/security/SignatureSpi;

    .line 501
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 503
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 537
    const-string/jumbo v1, "NONEwithRSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 539
    if-nez p1, :cond_14

    .line 540
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_14
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 545
    :cond_19
    const-string/jumbo v1, "Signature"

    const-class v2, Ljava/security/SignatureSpi;

    .line 544
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 546
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .registers 5
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/Signature;

    if-eqz v2, :cond_11

    .line 391
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 392
    .local v0, "sig":Ljava/security/Signature;
    iput-object p1, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 397
    :goto_c
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 398
    return-object v0

    .line 394
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_11
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    .line 395
    .local v1, "spi":Ljava/security/SignatureSpi;
    new-instance v0, Ljava/security/Signature$Delegate;

    invoke-direct {v0, v1, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_c
.end method

.method private static getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .registers 8
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 554
    const-string/jumbo v4, "Signature"

    const-string/jumbo v5, "NONEwithRSA"

    invoke-virtual {p0, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 555
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_1a

    .line 556
    const-class v4, Ljava/security/SignatureSpi;

    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 557
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    const-string/jumbo v4, "NONEwithRSA"

    invoke-static {v2, v4}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    return-object v4

    .line 561
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_1a
    :try_start_1a
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 562
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v4, Ljava/security/Signature$Delegate;

    new-instance v5, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v5, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    const-string/jumbo v6, "NONEwithRSA"

    invoke-direct {v4, v5, v6}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_2e} :catch_2f

    return-object v4

    .line 563
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_2f
    move-exception v1

    .line 566
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such algorithm: NONEwithRSA for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 567
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 566
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static isSpi(Ljava/security/Provider$Service;)Z
    .registers 8
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cipher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 422
    const/4 v5, 0x1

    return v5

    .line 424
    :cond_f
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "className":Ljava/lang/String;
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 426
    .local v4, "result":Ljava/lang/Boolean;
    if-nez v4, :cond_34

    .line 428
    const/4 v5, 0x0

    :try_start_1e
    invoke-virtual {p0, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 432
    .local v2, "instance":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/SignatureSpi;

    if-eqz v5, :cond_3b

    .line 433
    instance-of v5, v2, Ljava/security/Signature;

    if-nez v5, :cond_39

    const/4 v3, 0x1

    .line 443
    .local v3, "r":Z
    :goto_2b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 444
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_3d

    .line 450
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :cond_34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 433
    .restart local v2    # "instance":Ljava/lang/Object;
    :cond_39
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_2b

    .line 432
    .end local v3    # "r":Z
    :cond_3b
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_2b

    .line 445
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :catch_3d
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method chooseFirstProvider()V
    .registers 1

    .prologue
    .line 583
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1084
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 1085
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .registers 2

    .prologue
    .line 1098
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1072
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 1042
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 577
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    .line 578
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 676
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 686
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 703
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 713
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 598
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 608
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .registers 8
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 633
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_32

    move-object v0, p1

    .line 637
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 638
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 640
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_32

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_32

    .line 641
    const-string/jumbo v4, "2.5.29.15"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 640
    if-eqz v4, :cond_32

    .line 642
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 644
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_32

    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_32

    .line 645
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Wrong key usage"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 649
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "keyUsageInfo":[Z
    :cond_32
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 650
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 651
    const/4 v4, 0x3

    iput v4, p0, Ljava/security/Signature;->state:I

    .line 661
    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1008
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1024
    return-void
.end method

.method public final sign([BII)I
    .registers 6
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 771
    if-nez p1, :cond_b

    .line 772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_b
    if-ltz p2, :cond_f

    if-gez p3, :cond_18

    .line 775
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_18
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_25

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 779
    const-string/jumbo v1, "Output buffer too small for specified offset and length"

    .line 778
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_25
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_33

    .line 782
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_33
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method public final sign()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 734
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 735
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0

    .line 737
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 965
    const-string/jumbo v0, ""

    .line 966
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    packed-switch v1, :pswitch_data_32

    .line 977
    :goto_8
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 968
    :pswitch_25
    const-string/jumbo v0, "<not initialized>"

    goto :goto_8

    .line 971
    :pswitch_29
    const-string/jumbo v0, "<initialized for verifying>"

    goto :goto_8

    .line 974
    :pswitch_2d
    const-string/jumbo v0, "<initialized for signing>"

    goto :goto_8

    .line 966
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_25
        :pswitch_8
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public final update(B)V
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 872
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 873
    :cond_a
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 878
    return-void

    .line 875
    :cond_e
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 938
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    .line 939
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_13
    if-nez p1, :cond_1b

    .line 943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 945
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 946
    return-void
.end method

.method public final update([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 890
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->update([BII)V

    .line 891
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 906
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 907
    :cond_a
    if-nez p1, :cond_15

    .line 908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_15
    if-ltz p2, :cond_19

    if-gez p3, :cond_22

    .line 911
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "off or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_22
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_2f

    .line 914
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 915
    const-string/jumbo v1, "data too small for specified offset and length"

    .line 914
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_2f
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 922
    return-void

    .line 919
    :cond_33
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verify([B)Z
    .registers 4
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 807
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 808
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0

    .line 810
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verify([BII)Z
    .registers 6
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 844
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 845
    if-nez p1, :cond_10

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "signature is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_10
    if-ltz p2, :cond_14

    if-gez p3, :cond_1d

    .line 849
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 850
    const-string/jumbo v1, "offset or length is less than 0"

    .line 849
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_1d
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_2a

    .line 853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 854
    const-string/jumbo v1, "signature too small for specified offset and length"

    .line 853
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0

    .line 859
    :cond_2f
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
