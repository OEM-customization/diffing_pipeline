.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static greylist-max-o warnCount:I


# instance fields
.field private final greylist-max-o algorithm:Ljava/lang/String;

.field private greylist-max-o initialized:Z

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 357
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/Mac;->warnCount:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 214
    iput-object p1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 216
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 206
    iput-object p1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 207
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 208
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private greylist-max-o chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_12

    if-eqz p1, :cond_d

    iget-object v2, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v2, :cond_12

    .line 428
    :cond_d
    invoke-virtual {v1, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 429
    monitor-exit v0

    return-void

    .line 431
    :cond_12
    const/4 v1, 0x0

    .line 433
    .local v1, "lastException":Ljava/lang/Exception;
    const-string v2, "Mac"

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 435
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 436
    goto :goto_1f

    .line 438
    :cond_32
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_92

    if-nez v4, :cond_3d

    .line 439
    goto :goto_1f

    .line 442
    :cond_3d
    const/4 v4, 0x0

    :try_start_3e
    invoke-virtual {v3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/MacSpi;

    .line 443
    .local v4, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v4, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 444
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 445
    iput-object v4, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_51
    .catchall {:try_start_3e .. :try_end_4f} :catchall_92

    .line 451
    :try_start_4f
    monitor-exit v0

    return-void

    .line 452
    .end local v4    # "spi":Ljavax/crypto/MacSpi;
    :catch_51
    move-exception v4

    .line 456
    .local v4, "e":Ljava/lang/Exception;
    if-nez v1, :cond_55

    .line 457
    move-object v1, v4

    .line 460
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_55
    goto :goto_1f

    .line 462
    :cond_56
    instance-of v2, v1, Ljava/security/InvalidKeyException;

    if-nez v2, :cond_8e

    .line 465
    instance-of v2, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v2, :cond_8a

    .line 468
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_86

    .line 471
    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_6f

    :cond_6d
    const-string v2, "(null)"

    .line 472
    .local v2, "kName":Ljava/lang/String;
    :goto_6f
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No installed provider supports this key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v3

    .line 469
    .end local v2    # "kName":Ljava/lang/String;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_86
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 466
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_8a
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 463
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_8e
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidKeyException;

    .end local p0    # "this":Ljavax/crypto/Mac;
    .end local p1    # "key":Ljava/security/Key;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    throw v2

    .line 475
    .end local v1    # "lastException":Ljava/lang/Exception;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    .restart local p1    # "key":Ljava/security/Key;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_4f .. :try_end_94} :catchall_92

    throw v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 260
    const-string v0, "Mac"

    invoke-static {v0, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 263
    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 265
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 266
    goto :goto_a

    .line 270
    :cond_21
    new-instance v3, Ljavax/crypto/Mac;

    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 272
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_27
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 313
    const-string v0, "Mac"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-class v1, Ljavax/crypto/MacSpi;

    .line 315
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 316
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/Mac;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 350
    const-string v0, "Mac"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-class v1, Ljavax/crypto/MacSpi;

    .line 352
    invoke-static {v0, v1, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 353
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v1, Ljavax/crypto/Mac;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v1, v2, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method greylist-max-o chooseFirstProvider()V
    .registers 7

    .line 367
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-nez v0, :cond_5f

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_9

    goto :goto_5f

    .line 370
    :cond_9
    monitor-enter v0

    .line 371
    :try_start_a
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_10

    .line 372
    monitor-exit v0

    return-void

    .line 389
    :cond_10
    const/4 v1, 0x0

    .line 391
    .local v1, "lastException":Ljava/lang/Exception;
    const-string v2, "Mac"

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 392
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v4
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_5c

    if-nez v4, :cond_34

    .line 393
    goto :goto_1d

    .line 396
    :cond_34
    const/4 v4, 0x0

    :try_start_35
    invoke-virtual {v3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 397
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/crypto/MacSpi;

    if-nez v5, :cond_3e

    .line 398
    goto :goto_1d

    .line 400
    :cond_3e
    move-object v5, v4

    check-cast v5, Ljavax/crypto/MacSpi;

    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 401
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_49} :catch_4b
    .catchall {:try_start_35 .. :try_end_49} :catchall_5c

    .line 408
    :try_start_49
    monitor-exit v0

    return-void

    .line 409
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_4b
    move-exception v4

    .line 410
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v4

    .line 412
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_1d

    .line 413
    :cond_4e
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Could not construct MacSpi instance"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_5a

    .line 416
    invoke-virtual {v2, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 418
    :cond_5a
    nop

    .end local p0    # "this":Ljavax/crypto/Mac;
    throw v2

    .line 419
    .end local v1    # "lastException":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/security/ProviderException;
    .restart local p0    # "this":Ljavax/crypto/Mac;
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_49 .. :try_end_5e} :catchall_5c

    throw v1

    .line 368
    :cond_5f
    :goto_5f
    return-void
.end method

.method public final whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 774
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 775
    .local v0, "that":Ljavax/crypto/Mac;
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 776
    return-object v0
.end method

.method public final whitelist test-api doFinal([BI)V
    .registers 6
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 701
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 702
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_22

    .line 705
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    .line 706
    .local v0, "macLen":I
    if-eqz p1, :cond_1a

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v0, :cond_1a

    .line 710
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 711
    .local v1, "mac":[B
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    return-void

    .line 707
    .end local v1    # "mac":[B
    :cond_1a
    new-instance v1, Ljavax/crypto/ShortBufferException;

    const-string v2, "Cannot store MAC in output buffer"

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    .end local v0    # "macLen":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 664
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_13

    .line 667
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 668
    .local v0, "mac":[B
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 669
    return-object v0

    .line 665
    .end local v0    # "mac":[B
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([B)[B
    .registers 4
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 737
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 738
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_f

    .line 741
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 742
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 739
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o test-api getCurrentSpi()Ljavax/crypto/MacSpi;
    .registers 2

    .line 787
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final whitelist test-api getMacLength()I
    .registers 2

    .line 494
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 495
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 484
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 485
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(Ljava/security/Key;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 510
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_b

    iget-object v2, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v2, :cond_f

    .line 511
    :cond_b
    invoke-virtual {v0, p1, v1}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_12

    .line 513
    :cond_f
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_12
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_12} :catch_17

    .line 517
    :goto_12
    nop

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 527
    return-void

    .line 515
    :catch_17
    move-exception v0

    .line 516
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "init() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_a

    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v1, :cond_e

    .line 546
    :cond_a
    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_11

    .line 548
    :cond_e
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 550
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 559
    return-void
.end method

.method public final whitelist test-api reset()V
    .registers 2

    .line 760
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 761
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 762
    return-void
.end method

.method public final whitelist test-api update(B)V
    .registers 4
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 571
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_d

    .line 574
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 575
    return-void

    .line 572
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 634
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_17

    .line 637
    if-eqz p1, :cond_f

    .line 640
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 641
    return-void

    .line 638
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([B)V
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 587
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_11

    .line 590
    if-eqz p1, :cond_10

    .line 591
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 593
    :cond_10
    return-void

    .line 588
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 608
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 609
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-eqz v0, :cond_20

    .line 613
    if-eqz p1, :cond_1f

    .line 614
    if-ltz p2, :cond_17

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_17

    if-ltz p3, :cond_17

    .line 616
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    goto :goto_1f

    .line 615
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1f
    :goto_1f
    return-void

    .line 610
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
