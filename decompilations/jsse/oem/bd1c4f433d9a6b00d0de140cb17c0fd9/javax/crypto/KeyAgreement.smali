.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final I_NO_PARAMS:I = 0x1

.field private static final I_PARAMS:I = 0x2

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 302
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/KeyAgreement;->warnCount:I

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 149
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 140
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 141
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 143
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 17
    .param p1, "initType"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v11, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 384
    :try_start_3
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_16

    if-nez p2, :cond_16

    .line 385
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_66

    monitor-exit v11

    .line 386
    return-void

    .line 388
    :cond_16
    const/4 v8, 0x0

    .line 390
    .local v8, "lastException":Ljava/lang/Exception;
    :try_start_17
    const-string/jumbo v0, "KeyAgreement"

    iget-object v2, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v8    # "lastException":Ljava/lang/Exception;
    .local v10, "s$iterator":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 392
    .local v9, "s":Ljava/security/Provider$Service;
    invoke-virtual {v9, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 395
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_3d
    .catchall {:try_start_17 .. :try_end_3d} :catchall_66

    move-result v0

    if-eqz v0, :cond_24

    .line 399
    const/4 v0, 0x0

    :try_start_41
    invoke-virtual {v9, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .local v1, "spi":Ljavax/crypto/KeyAgreementSpi;
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 400
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 401
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 402
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_58} :catch_5a
    .catchall {:try_start_41 .. :try_end_58} :catchall_66

    monitor-exit v11

    .line 408
    return-void

    .line 409
    .end local v1    # "spi":Ljavax/crypto/KeyAgreementSpi;
    :catch_5a
    move-exception v6

    .line 413
    .local v6, "e":Ljava/lang/Exception;
    if-nez v8, :cond_24

    .line 414
    move-object v8, v6

    .local v8, "lastException":Ljava/lang/Exception;
    goto :goto_24

    .line 419
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "lastException":Ljava/lang/Exception;
    .end local v9    # "s":Ljava/security/Provider$Service;
    :cond_5f
    :try_start_5f
    instance-of v0, v8, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_69

    .line 420
    check-cast v8, Ljava/security/InvalidKeyException;

    throw v8
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_66

    .line 381
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catchall_66
    move-exception v0

    monitor-exit v11

    throw v0

    .line 422
    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    :cond_69
    :try_start_69
    instance-of v0, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_70

    .line 423
    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    throw v8

    .line 425
    :cond_70
    instance-of v0, v8, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_77

    .line 426
    check-cast v8, Ljava/lang/RuntimeException;

    throw v8

    .line 428
    :cond_77
    if-eqz p2, :cond_9b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "kName":Ljava/lang/String;
    :goto_81
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-direct {v0, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 428
    .end local v7    # "kName":Ljava/lang/String;
    :cond_9b
    const-string/jumbo v7, "(null)"
    :try_end_9e
    .catchall {:try_start_69 .. :try_end_9e} :catchall_66

    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_81
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .registers 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 198
    const-string/jumbo v3, "KeyAgreement"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 203
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 208
    new-instance v3, Ljavax/crypto/KeyAgreement;

    invoke-direct {v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 210
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_27
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 211
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

    .line 210
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
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
    .line 256
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 255
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 257
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 258
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 257
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 296
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 295
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 297
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 298
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 297
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "spi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 372
    invoke-virtual {p1, p3, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 376
    :goto_6
    return-void

    .line 374
    :cond_7
    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_6
.end method


# virtual methods
.method chooseFirstProvider()V
    .registers 10

    .prologue
    .line 310
    iget-object v6, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v6, :cond_5

    .line 311
    return-void

    .line 313
    :cond_5
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 314
    :try_start_8
    iget-object v6, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_58

    if-eqz v6, :cond_e

    monitor-exit v7

    .line 315
    return-void

    .line 332
    :cond_e
    const/4 v2, 0x0

    .line 334
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_f
    const-string/jumbo v6, "KeyAgreement"

    iget-object v8, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 335
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_58

    move-result v6

    if-eqz v6, :cond_1c

    .line 339
    const/4 v6, 0x0

    :try_start_33
    invoke-virtual {v4, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 340
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Ljavax/crypto/KeyAgreementSpi;

    if-eqz v6, :cond_1c

    .line 343
    check-cast v3, Ljavax/crypto/KeyAgreementSpi;

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 344
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_45} :catch_47
    .catchall {:try_start_33 .. :try_end_45} :catchall_58

    monitor-exit v7

    .line 351
    return-void

    .line 352
    :catch_47
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_1c

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/security/ProviderException;

    .line 357
    const-string/jumbo v6, "Could not construct KeyAgreementSpi instance"

    .line 356
    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_57

    .line 359
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 361
    :cond_57
    throw v1
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_58

    .line 313
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_58
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 600
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret([BI)I
    .registers 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 651
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 681
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 619
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 441
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 442
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 467
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v1, :cond_10

    if-eqz p1, :cond_a

    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    if-nez v1, :cond_10

    .line 494
    :cond_a
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 511
    :goto_f
    return-void

    .line 497
    :cond_10
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_12
    invoke-direct {p0, v1, p1, v2, p2}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_f

    .line 498
    :catch_16
    move-exception v0

    .line 500
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

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
    .line 539
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 540
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_a

    .line 563
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 575
    :goto_9
    return-void

    .line 565
    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_9
.end method
