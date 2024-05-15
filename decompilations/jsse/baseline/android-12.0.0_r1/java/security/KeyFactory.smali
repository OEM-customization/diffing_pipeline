.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final greylist-max-o debug:Lsun/security/util/Debug;


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o spi:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 121
    nop

    .line 122
    const-string v0, "jca"

    const-string v1, "KeyFactory"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/KeyFactory;->debug:Lsun/security/util/Debug;

    .line 121
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    .line 156
    iput-object p1, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    .line 157
    const-string v0, "KeyFactory"

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 160
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 164
    return-void

    .line 161
    :cond_20
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " KeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor whitelist test-api <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyFacSpi"    # Ljava/security/KeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 149
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

.method public static whitelist test-api getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/security/KeyFactory;

    invoke-direct {v0, p0}, Ljava/security/KeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 235
    const-string v0, "KeyFactory"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-class v1, Ljava/security/KeyFactorySpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 238
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/KeyFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 274
    const-string v0, "KeyFactory"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-class v1, Ljava/security/KeyFactorySpi;

    invoke-static {v0, v1, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 277
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljava/security/KeyFactory;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyFactorySpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist-max-o nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;
    .registers 8
    .param p1, "oldSpi"    # Ljava/security/KeyFactorySpi;

    .line 312
    iget-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    if-eq p1, v1, :cond_d

    .line 316
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    monitor-exit v0

    return-object v1

    .line 318
    :cond_d
    iget-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 319
    monitor-exit v0

    return-object v2

    .line 321
    :cond_14
    :goto_14
    iget-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 322
    iget-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_40

    .line 324
    .local v1, "s":Ljava/security/Provider$Service;
    :try_start_24
    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 325
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/security/KeyFactorySpi;

    if-nez v4, :cond_2d

    .line 326
    goto :goto_14

    .line 328
    :cond_2d
    move-object v4, v3

    check-cast v4, Ljava/security/KeyFactorySpi;

    .line 329
    .local v4, "spi":Ljava/security/KeyFactorySpi;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    .line 330
    iput-object v4, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_38} :catch_3a
    .catchall {:try_start_24 .. :try_end_38} :catchall_40

    .line 331
    :try_start_38
    monitor-exit v0

    return-object v4

    .line 332
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "spi":Ljava/security/KeyFactorySpi;
    :catch_3a
    move-exception v3

    .line 335
    .end local v1    # "s":Ljava/security/Provider$Service;
    goto :goto_14

    .line 336
    :cond_3c
    iput-object v2, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 337
    monitor-exit v0

    return-object v2

    .line 338
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v1
.end method


# virtual methods
.method public final whitelist test-api generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 393
    iget-object v0, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 395
    :cond_b
    const/4 v0, 0x0

    .line 396
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 399
    .local v1, "mySpi":Ljava/security/KeyFactorySpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 400
    :catch_13
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 402
    move-object v0, v2

    .line 404
    :cond_17
    invoke-direct {p0, v1}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    .line 406
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_35

    .line 407
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_31

    .line 410
    instance-of v2, v0, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v2, :cond_29

    .line 411
    move-object v2, v0

    check-cast v2, Ljava/security/spec/InvalidKeySpecException;

    throw v2

    .line 413
    :cond_29
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Could not generate private key"

    invoke-direct {v2, v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 408
    :cond_31
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 406
    :cond_35
    goto :goto_e
.end method

.method public final whitelist test-api generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 355
    iget-object v0, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 357
    :cond_b
    const/4 v0, 0x0

    .line 358
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 361
    .local v1, "mySpi":Ljava/security/KeyFactorySpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 362
    :catch_13
    move-exception v2

    .line 363
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 364
    move-object v0, v2

    .line 366
    :cond_17
    invoke-direct {p0, v1}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    .line 368
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_35

    .line 369
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_31

    .line 372
    instance-of v2, v0, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v2, :cond_29

    .line 373
    move-object v2, v0

    check-cast v2, Ljava/security/spec/InvalidKeySpecException;

    throw v2

    .line 375
    :cond_29
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Could not generate public key"

    invoke-direct {v2, v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 370
    :cond_31
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 368
    :cond_35
    goto :goto_e
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 302
    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 441
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 442
    iget-object v0, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0

    .line 444
    :cond_b
    const/4 v0, 0x0

    .line 445
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 448
    .local v1, "mySpi":Ljava/security/KeyFactorySpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 449
    :catch_13
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 451
    move-object v0, v2

    .line 453
    :cond_17
    invoke-direct {p0, v1}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    .line 455
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_35

    .line 456
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_31

    .line 459
    instance-of v2, v0, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v2, :cond_29

    .line 460
    move-object v2, v0

    check-cast v2, Ljava/security/spec/InvalidKeySpecException;

    throw v2

    .line 462
    :cond_29
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Could not get key spec"

    invoke-direct {v2, v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 457
    :cond_31
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 455
    :cond_35
    goto :goto_e
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 3

    .line 287
    iget-object v0, p0, Ljava/security/KeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 290
    iget-object v1, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    monitor-exit v0

    return-object v1

    .line 291
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final whitelist test-api translateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Ljava/security/KeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 479
    iget-object v0, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 481
    :cond_b
    const/4 v0, 0x0

    .line 482
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/security/KeyFactory;->spi:Ljava/security/KeyFactorySpi;

    .line 485
    .local v1, "mySpi":Ljava/security/KeyFactorySpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 486
    :catch_13
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Exception;
    if-nez v0, :cond_17

    .line 488
    move-object v0, v2

    .line 490
    :cond_17
    invoke-direct {p0, v1}, Ljava/security/KeyFactory;->nextSpi(Ljava/security/KeyFactorySpi;)Ljava/security/KeyFactorySpi;

    move-result-object v1

    .line 492
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_35

    .line 493
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_31

    .line 496
    instance-of v2, v0, Ljava/security/InvalidKeyException;

    if-eqz v2, :cond_29

    .line 497
    move-object v2, v0

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2

    .line 499
    :cond_29
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Could not translate key"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 494
    :cond_31
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 492
    :cond_35
    goto :goto_e
.end method
