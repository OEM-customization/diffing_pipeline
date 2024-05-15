.class final Ljava/security/KeyPairGenerator$Delegate;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delegate"
.end annotation


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_SIZE:I = 0x2


# instance fields
.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

.field private final lock:Ljava/lang/Object;

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

.field private volatile spi:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V
    .registers 4
    .param p1, "spi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-direct {p0, p2}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 585
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 586
    return-void
.end method

.method constructor <init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    .registers 5
    .param p1, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/jca/GetInstance$Instance;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 590
    .local p2, "serviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 591
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 592
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 593
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 594
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 603
    return-void
.end method

.method private nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;
    .registers 13
    .param p1, "oldSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "reinit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 613
    iget-object v6, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 616
    if-eqz p1, :cond_e

    :try_start_6
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    if-eq p1, v5, :cond_e

    .line 617
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_7d

    monitor-exit v6

    return-object v5

    .line 619
    :cond_e
    :try_start_e
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_7d

    if-nez v5, :cond_14

    monitor-exit v6

    .line 620
    return-object v9

    .line 622
    :cond_14
    :goto_14
    :try_start_14
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 623
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_7d

    .line 625
    .local v3, "s":Ljava/security/Provider$Service;
    const/4 v5, 0x0

    :try_start_25
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 627
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/KeyPairGeneratorSpi;

    if-eqz v5, :cond_14

    .line 630
    instance-of v5, v2, Ljava/security/KeyPairGenerator;

    if-nez v5, :cond_14

    .line 633
    move-object v0, v2

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    move-object v4, v0

    .line 634
    .local v4, "spi":Ljava/security/KeyPairGeneratorSpi;
    if-eqz p2, :cond_43

    .line 635
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4d

    .line 636
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 644
    :cond_43
    :goto_43
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 645
    iput-object v4, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4b} :catch_5a
    .catchall {:try_start_25 .. :try_end_4b} :catchall_7d

    monitor-exit v6

    .line 646
    return-object v4

    .line 637
    :cond_4d
    :try_start_4d
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5c

    .line 638
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_43

    .line 647
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catch_5a
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_14

    .line 639
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :cond_5c
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_43

    .line 640
    new-instance v5, Ljava/lang/AssertionError;

    .line 641
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KeyPairGenerator initType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 640
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_7d} :catch_5a
    .catchall {:try_start_4d .. :try_end_7d} :catchall_7d

    .line 613
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catchall_7d
    move-exception v5

    monitor-exit v6

    throw v5

    .line 651
    :cond_80
    :try_start_80
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator$Delegate;->disableFailover()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_7d

    monitor-exit v6

    .line 652
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 657
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 659
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 660
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    .line 661
    return-void
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 5

    .prologue
    .line 722
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 723
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    return-object v3

    .line 725
    :cond_b
    const/4 v1, 0x0

    .line 726
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 729
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 730
    :catch_13
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_17

    .line 732
    move-object v1, v0

    .line 734
    :cond_17
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 736
    if-nez v2, :cond_e

    .line 737
    throw v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 7
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 665
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_a

    .line 666
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 667
    return-void

    .line 669
    :cond_a
    const/4 v1, 0x0

    .line 670
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 673
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_d
    :try_start_d
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 674
    const/4 v3, 0x2

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 675
    iput p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 676
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 677
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 678
    return-void

    .line 679
    :catch_1b
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_1f

    .line 681
    move-object v1, v0

    .line 683
    :cond_1f
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 685
    if-nez v2, :cond_d

    .line 686
    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 8
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 692
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_b

    .line 693
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 694
    return-void

    .line 696
    :cond_b
    const/4 v1, 0x0

    .line 697
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 700
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_e
    :try_start_e
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 701
    const/4 v3, 0x3

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 702
    const/4 v3, 0x0

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 703
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 704
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 705
    return-void

    .line 706
    :catch_1c
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_20

    .line 708
    move-object v1, v0

    .line 710
    :cond_20
    invoke-direct {p0, v2, v4}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 712
    if-nez v2, :cond_e

    .line 713
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2d

    .line 714
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 717
    :cond_2d
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1
.end method
