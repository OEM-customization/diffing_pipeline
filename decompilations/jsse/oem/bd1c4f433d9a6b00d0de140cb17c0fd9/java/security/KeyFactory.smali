.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 122
    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "KeyFactory"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 121
    sput-object v0, Ljava/security/KeyFactory;->debug:Lsun/security/util/Debug;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    .line 156
    iput-object p1, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    .line 157
    const-string/jumbo v1, "KeyFactory"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 160
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 161
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " KeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_3a
    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyFacSpi"    # Ljava/security/KeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 151
    iput-object p2, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    .line 152
    iput-object p3, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/security/KeyFactory;

    invoke-direct {v0, p0}, Ljava/security/KeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v1, "KeyFactory"

    .line 235
    const-class v2, Ljava/security/KeyFactorySpi;

    .line 234
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 236
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/KeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyFactorySpi;

    .line 237
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 236
    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 271
    const-string/jumbo v1, "KeyFactory"

    .line 272
    const-class v2, Ljava/security/KeyFactorySpi;

    .line 271
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 273
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/KeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyFactorySpi;

    .line 274
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 273
    invoke-direct {v2, v1, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;
    .registers 10
    .param p1, "oldSpi"    # Ljava/security/KeyFactorySpi;

    .prologue
    const/4 v7, 0x0

    .line 308
    iget-object v6, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 311
    if-eqz p1, :cond_e

    :try_start_6
    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    if-eq p1, v5, :cond_e

    .line 312
    iget-object v5, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_40

    monitor-exit v6

    return-object v5

    .line 314
    :cond_e
    :try_start_e
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_40

    if-nez v5, :cond_14

    monitor-exit v6

    .line 315
    return-object v7

    .line 317
    :cond_14
    :goto_14
    :try_start_14
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 318
    iget-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_40

    .line 320
    .local v3, "s":Ljava/security/Provider$Service;
    const/4 v5, 0x0

    :try_start_25
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 321
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/KeyFactorySpi;

    if-eqz v5, :cond_14

    .line 324
    move-object v0, v2

    check-cast v0, Ljava/security/KeyFactorySpi;

    move-object v4, v0

    .line 325
    .local v4, "spi":Ljava/security/KeyFactorySpi;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    .line 326
    iput-object v4, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_39} :catch_43
    .catchall {:try_start_25 .. :try_end_39} :catchall_40

    monitor-exit v6

    .line 327
    return-object v4

    .line 332
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljava/security/KeyFactorySpi;
    :cond_3b
    const/4 v5, 0x0

    :try_start_3c
    iput-object v5, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_40

    monitor-exit v6

    .line 333
    return-object v7

    .line 308
    :catchall_40
    move-exception v5

    monitor-exit v6

    throw v5

    .line 328
    .restart local v3    # "s":Ljava/security/Provider$Service;
    :catch_43
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_14
.end method


# virtual methods
.method public final generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 7
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 389
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    return-object v3

    .line 391
    :cond_b
    const/4 v1, 0x0

    .line 392
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 395
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 396
    :catch_13
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_17

    .line 398
    move-object v1, v0

    .line 400
    :cond_17
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    .line 402
    if-nez v2, :cond_e

    .line 403
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_24

    .line 404
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 406
    :cond_24
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_2b

    .line 407
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    .line 409
    :cond_2b
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 410
    const-string/jumbo v4, "Could not generate private key"

    .line 409
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 7
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 351
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3

    .line 353
    :cond_b
    const/4 v1, 0x0

    .line 354
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 357
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 358
    :catch_13
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_17

    .line 360
    move-object v1, v0

    .line 362
    :cond_17
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    .line 364
    if-nez v2, :cond_e

    .line 365
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_24

    .line 366
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 368
    :cond_24
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_2b

    .line 369
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    .line 371
    :cond_2b
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 372
    const-string/jumbo v4, "Could not generate public key"

    .line 371
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 438
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    return-object v3

    .line 440
    :cond_b
    const/4 v1, 0x0

    .line 441
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 444
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 445
    :catch_13
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_17

    .line 447
    move-object v1, v0

    .line 449
    :cond_17
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    .line 451
    if-nez v2, :cond_e

    .line 452
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_24

    .line 453
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 455
    :cond_24
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_2b

    .line 456
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    .line 458
    :cond_2b
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 459
    const-string/jumbo v4, "Could not get key spec"

    .line 458
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 3

    .prologue
    .line 283
    iget-object v1, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 286
    iget-object v0, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    .line 283
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final translateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v3, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 475
    iget-object v3, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v3

    return-object v3

    .line 477
    :cond_b
    const/4 v1, 0x0

    .line 478
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 481
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyFactorySpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 482
    :catch_13
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_17

    .line 484
    move-object v1, v0

    .line 486
    :cond_17
    invoke-direct {p0, v2}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v2

    .line 488
    if-nez v2, :cond_e

    .line 489
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_24

    .line 490
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 492
    :cond_24
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    if-eqz v3, :cond_2b

    .line 493
    check-cast v1, Ljava/security/InvalidKeyException;

    throw v1

    .line 495
    :cond_2b
    new-instance v3, Ljava/security/InvalidKeyException;

    .line 496
    const-string/jumbo v4, "Could not translate key"

    .line 495
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
