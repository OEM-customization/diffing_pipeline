.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 353
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/Mac;->warnCount:I

    .line 154
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
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

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
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

.method private chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 13
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 423
    :try_start_3
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v6, :cond_14

    if-eqz p1, :cond_d

    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v6, :cond_14

    .line 424
    :cond_d
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v6, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5e

    monitor-exit v7

    .line 425
    return-void

    .line 427
    :cond_14
    const/4 v2, 0x0

    .line 429
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_15
    const-string/jumbo v6, "Mac"

    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 431
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 434
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_5e

    move-result v6

    if-eqz v6, :cond_22

    .line 438
    const/4 v6, 0x0

    :try_start_3f
    invoke-virtual {v3, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/MacSpi;

    .line 439
    .local v5, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v5, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 440
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 441
    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_52
    .catchall {:try_start_3f .. :try_end_50} :catchall_5e

    monitor-exit v7

    .line 447
    return-void

    .line 448
    .end local v5    # "spi":Ljavax/crypto/MacSpi;
    :catch_52
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_22

    .line 453
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_22

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_57
    :try_start_57
    instance-of v6, v2, Ljava/security/InvalidKeyException;

    if-eqz v6, :cond_61

    .line 459
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5e

    .line 420
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catchall_5e
    move-exception v6

    monitor-exit v7

    throw v6

    .line 461
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_61
    :try_start_61
    instance-of v6, v2, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v6, :cond_68

    .line 462
    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    .line 464
    :cond_68
    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_6f

    .line 465
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 467
    :cond_6f
    if-eqz p1, :cond_93

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "kName":Ljava/lang/String;
    :goto_79
    new-instance v6, Ljava/security/InvalidKeyException;

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No installed provider supports this key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 468
    invoke-direct {v6, v8, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 467
    .end local v1    # "kName":Ljava/lang/String;
    :cond_93
    const-string/jumbo v1, "(null)"
    :try_end_96
    .catchall {:try_start_61 .. :try_end_96} :catchall_5e

    .restart local v1    # "kName":Ljava/lang/String;
    goto :goto_79
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 260
    const-string/jumbo v3, "Mac"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 263
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 264
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 265
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 270
    new-instance v3, Ljavax/crypto/Mac;

    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 272
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_27
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
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
    .line 313
    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    .line 312
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 314
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 348
    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    .line 347
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 349
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .registers 10

    .prologue
    .line 363
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-nez v6, :cond_8

    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v6, :cond_9

    .line 364
    :cond_8
    return-void

    .line 366
    :cond_9
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 367
    :try_start_c
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_5c

    if-eqz v6, :cond_12

    monitor-exit v7

    .line 368
    return-void

    .line 385
    :cond_12
    const/4 v2, 0x0

    .line 387
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_13
    const-string/jumbo v6, "Mac"

    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 388
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_5c

    move-result v6

    if-eqz v6, :cond_20

    .line 392
    const/4 v6, 0x0

    :try_start_37
    invoke-virtual {v4, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 393
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Ljavax/crypto/MacSpi;

    if-eqz v6, :cond_20

    .line 396
    check-cast v3, Ljavax/crypto/MacSpi;

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 397
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_49} :catch_4b
    .catchall {:try_start_37 .. :try_end_49} :catchall_5c

    monitor-exit v7

    .line 404
    return-void

    .line 405
    :catch_4b
    move-exception v0

    .line 406
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_20

    .line 409
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_4e
    :try_start_4e
    new-instance v1, Ljava/security/ProviderException;

    .line 410
    const-string/jumbo v6, "Could not construct MacSpi instance"

    .line 409
    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_5b

    .line 412
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 414
    :cond_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5c

    .line 366
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_5c
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 770
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 771
    .local v0, "that":Ljavax/crypto/Mac;
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 772
    return-object v0
.end method

.method public final doFinal([BI)V
    .registers 7
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 698
    iget-boolean v2, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v2, :cond_10

    .line 699
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "MAC not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :cond_10
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    .line 702
    .local v1, "macLen":I
    if-eqz p1, :cond_1a

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, v1, :cond_23

    .line 703
    :cond_1a
    new-instance v2, Ljavax/crypto/ShortBufferException;

    .line 704
    const-string/jumbo v3, "Cannot store MAC in output buffer"

    .line 703
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :cond_23
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 707
    .local v0, "mac":[B
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 708
    return-void
.end method

.method public final doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 660
    iget-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v1, :cond_10

    .line 661
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "MAC not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_10
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 664
    .local v0, "mac":[B
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 665
    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 4
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 734
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_10

    .line 735
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_10
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 738
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/MacSpi;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final getMacLength()I
    .registers 2

    .prologue
    .line 490
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 491
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 480
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 481
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_14

    if-eqz p1, :cond_a

    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 507
    :cond_a
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_10
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_10} :catch_19

    .line 514
    :goto_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 523
    return-void

    .line 509
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_18
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_10

    .line 511
    :catch_19
    move-exception v0

    .line 512
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "init() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_a

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_13

    .line 542
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 546
    :goto_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 555
    return-void

    .line 544
    :cond_13
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_f
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 756
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 757
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 758
    return-void
.end method

.method public final update(B)V
    .registers 4
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 567
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_10

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 571
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 629
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 630
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_10

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_10
    if-nez p1, :cond_1b

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_1b
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 637
    return-void
.end method

.method public final update([B)V
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 583
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_10

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_10
    if-eqz p1, :cond_19

    .line 587
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 589
    :cond_19
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 605
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_10

    .line 606
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_10
    if-eqz p1, :cond_28

    .line 610
    if-ltz p2, :cond_18

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_21

    .line 611
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_21
    if-ltz p3, :cond_18

    .line 612
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 614
    :cond_28
    return-void
.end method
