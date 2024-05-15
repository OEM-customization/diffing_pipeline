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
.field private static final greylist-max-o RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final greylist-max-o RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final whitelist core-platform-api test-api SIGN:I = 0x2

.field protected static final whitelist core-platform-api test-api UNINITIALIZED:I = 0x0

.field protected static final whitelist core-platform-api test-api VERIFY:I = 0x3

.field private static final greylist-max-o rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o algorithm:Ljava/lang/String;

.field greylist-max-o provider:Ljava/security/Provider;

.field protected whitelist core-platform-api test-api state:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 316
    const/4 v0, 0x5

    new-array v0, v0, [Lsun/security/jca/ServiceId;

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "Signature"

    const-string v3, "NONEwithRSA"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v2, "Cipher"

    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v3, "RSA/ECB"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v3, "RSA//PKCS1Padding"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Lsun/security/jca/ServiceId;

    const-string v3, "RSA"

    invoke-direct {v1, v2, v3}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    .line 404
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    .line 405
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 407
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.provider.DSA$RawDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.provider.DSA$SHA1withDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string v2, "sun.security.pkcs11.P11Signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v0    # "TRUE":Ljava/lang/Boolean;
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

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

.method static synthetic blacklist access$000(Ljava/security/Signature;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/security/Signature;

    .line 249
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100()Ljava/util/List;
    .registers 1

    .line 249
    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/security/Provider$Service;)Z
    .registers 2
    .param p0, "x0"    # Ljava/security/Provider$Service;

    .line 249
    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 356
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 357
    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    invoke-static {v0}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_15

    .line 359
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :cond_f
    const-string v0, "Signature"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 361
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 369
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 370
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-static {v2}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 373
    new-instance v3, Ljava/security/Signature$Delegate;

    invoke-direct {v3, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 377
    :cond_31
    :try_start_31
    const-class v3, Ljava/security/SignatureSpi;

    .line 378
    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    .line 379
    .local v3, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v3, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_3b} :catch_3c

    return-object v4

    .line 380
    .end local v3    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_3c
    move-exception v3

    .line 381
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v3

    .line 384
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v2, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_1f

    .line 385
    :cond_45
    throw v2

    .line 363
    .end local v2    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_46
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Signature not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 489
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 491
    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 494
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 495
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_1b

    .line 499
    invoke-static {v0}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 496
    :cond_1b
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    .end local v0    # "p":Ljava/security/Provider;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_3a
    const-string v0, "Signature"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-class v1, Ljava/security/SignatureSpi;

    .line 504
    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 505
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 539
    const-string v0, "NONEwithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 541
    if-eqz p1, :cond_f

    .line 544
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0

    .line 542
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_17
    const-string v0, "Signature"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-class v1, Ljava/security/SignatureSpi;

    .line 549
    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 550
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method private static greylist getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .registers 4
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v0, v0, Ljava/security/Signature;

    if-eqz v0, :cond_d

    .line 391
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 392
    .local v0, "sig":Ljava/security/Signature;
    iput-object p1, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    goto :goto_17

    .line 394
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_d
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/SignatureSpi;

    .line 395
    .local v0, "spi":Ljava/security/SignatureSpi;
    new-instance v1, Ljava/security/Signature$Delegate;

    invoke-direct {v1, v0, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    move-object v0, v1

    .line 397
    .local v0, "sig":Ljava/security/Signature;
    :goto_17
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v1, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 398
    return-object v0
.end method

.method private static greylist-max-o getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .registers 6
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 558
    const-string v0, "Signature"

    const-string v1, "NONEwithRSA"

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 559
    .local v0, "s":Ljava/security/Provider$Service;
    if-eqz v0, :cond_15

    .line 560
    const-class v2, Ljava/security/SignatureSpi;

    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 561
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, v1}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 565
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_15
    :try_start_15
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 566
    .local v2, "c":Ljavax/crypto/Cipher;
    new-instance v3, Ljava/security/Signature$Delegate;

    new-instance v4, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v4, v2}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4, v1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_25} :catch_26

    return-object v3

    .line 567
    .end local v2    # "c":Ljavax/crypto/Cipher;
    :catch_26
    move-exception v1

    .line 570
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such algorithm: NONEwithRSA for provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o isSpi(Ljava/security/Provider$Service;)Z
    .registers 7
    .param p0, "s"    # Ljava/security/Provider$Service;

    .line 420
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cipher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 422
    return v1

    .line 424
    :cond_e
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "className":Ljava/lang/String;
    sget-object v2, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 426
    .local v2, "result":Ljava/lang/Boolean;
    if-nez v2, :cond_3a

    .line 428
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 432
    .local v3, "instance":Ljava/lang/Object;
    instance-of v5, v3, Ljava/security/SignatureSpi;

    if-eqz v5, :cond_2b

    instance-of v5, v3, Ljava/security/Signature;

    if-nez v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v4

    .line 443
    .local v1, "r":Z
    :goto_2c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, v5

    .line 444
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_38

    .line 448
    nop

    .end local v1    # "r":Z
    .end local v3    # "instance":Ljava/lang/Object;
    goto :goto_3a

    .line 445
    :catch_38
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/Exception;
    return v4

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 1

    .line 587
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1088
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 1089
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 958
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o core-platform-api getCurrentSpi()Ljava/security/SignatureSpi;
    .registers 2

    .line 1102
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 1046
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 581
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    .line 582
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api initSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 679
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 680
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 690
    return-void
.end method

.method public final whitelist core-platform-api test-api initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 706
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 707
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 717
    return-void
.end method

.method public final whitelist core-platform-api test-api initVerify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 601
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 602
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 612
    return-void
.end method

.method public final whitelist core-platform-api test-api initVerify(Ljava/security/cert/Certificate;)V
    .registers 7
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 637
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2f

    .line 641
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 642
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 644
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 645
    const-string v2, "2.5.29.15"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 646
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 648
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_27

    goto :goto_2f

    .line 649
    :cond_27
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Wrong key usage"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 653
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "keyUsageInfo":[Z
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 654
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v0}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 655
    const/4 v1, 0x3

    iput v1, p0, Ljava/security/Signature;->state:I

    .line 665
    return-void
.end method

.method public final whitelist core-platform-api test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 1012
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method public final whitelist core-platform-api test-api setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1027
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1028
    return-void
.end method

.method public final whitelist core-platform-api test-api sign([BII)I
    .registers 6
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 775
    if-eqz p1, :cond_2c

    .line 778
    if-ltz p2, :cond_24

    if-ltz p3, :cond_24

    .line 781
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1c

    .line 785
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 789
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0

    .line 786
    :cond_14
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output buffer too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api sign()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 738
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 739
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0

    .line 741
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 969
    const-string v0, ""

    .line 970
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    if-eqz v1, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    goto :goto_16

    .line 975
    :cond_d
    const-string v0, "<initialized for verifying>"

    .line 976
    goto :goto_16

    .line 978
    :cond_10
    const-string v0, "<initialized for signing>"

    goto :goto_16

    .line 972
    :cond_13
    const-string v0, "<not initialized>"

    .line 973
    nop

    .line 981
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist core-platform-api test-api update(B)V
    .registers 4
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 876
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 879
    :cond_9
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_11
    :goto_11
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 882
    return-void
.end method

.method public final whitelist core-platform-api test-api update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 942
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 943
    :cond_9
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_11
    :goto_11
    if-eqz p1, :cond_17

    .line 949
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 950
    return-void

    .line 947
    :cond_17
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api update([B)V
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 894
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->update([BII)V

    .line 895
    return-void
.end method

.method public final whitelist core-platform-api test-api update([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 910
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 923
    :cond_9
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_11
    :goto_11
    if-eqz p1, :cond_2f

    .line 914
    if-ltz p2, :cond_27

    if-ltz p3, :cond_27

    .line 917
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1f

    .line 921
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 926
    return-void

    .line 918
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "off or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api verify([B)Z
    .registers 4
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 811
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 812
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0

    .line 814
    :cond_a
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist core-platform-api test-api verify([BII)Z
    .registers 6
    .param p1, "signature"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 848
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 849
    if-eqz p1, :cond_24

    .line 852
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    .line 856
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_14

    .line 861
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0

    .line 857
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature too small for specified offset and length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset or length is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_2c
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "object not initialized for verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
