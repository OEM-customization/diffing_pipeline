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
.field private static final greylist-max-o I_NONE:I = 0x1

.field private static final greylist-max-o I_PARAMS:I = 0x3

.field private static final greylist-max-o I_SIZE:I = 0x2


# instance fields
.field private greylist-max-o initKeySize:I

.field private greylist-max-o initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private greylist-max-o initRandom:Ljava/security/SecureRandom;

.field private greylist-max-o initType:I

.field private final greylist-max-o lock:Ljava/lang/Object;

.field private greylist-max-o serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o spi:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method constructor greylist-max-o <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V
    .registers 4
    .param p1, "spi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 588
    invoke-direct {p0, p2}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 589
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 590
    return-void
.end method

.method constructor greylist-max-o <init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    .registers 5
    .param p1, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/jca/GetInstance$Instance;",
            "Ljava/util/Iterator<",
            "Ljava/security/Provider$Service;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 594
    .local p2, "serviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 595
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 596
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 597
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 598
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 607
    return-void
.end method

.method private greylist-max-o nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;
    .registers 11
    .param p1, "oldSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "reinit"    # Z

    .line 617
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    if-eq p1, v1, :cond_d

    .line 621
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    monitor-exit v0

    return-object v1

    .line 623
    :cond_d
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 624
    monitor-exit v0

    return-object v2

    .line 626
    :cond_14
    :goto_14
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 627
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_81

    .line 629
    .local v1, "s":Ljava/security/Provider$Service;
    :try_start_24
    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 631
    .local v3, "inst":Ljava/lang/Object;
    instance-of v4, v3, Ljava/security/KeyPairGeneratorSpi;

    if-nez v4, :cond_2d

    .line 632
    goto :goto_14

    .line 634
    :cond_2d
    instance-of v4, v3, Ljava/security/KeyPairGenerator;

    if-eqz v4, :cond_32

    .line 635
    goto :goto_14

    .line 637
    :cond_32
    move-object v4, v3

    check-cast v4, Ljava/security/KeyPairGeneratorSpi;

    .line 638
    .local v4, "spi":Ljava/security/KeyPairGeneratorSpi;
    if-eqz p2, :cond_70

    .line 639
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    .line 640
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    iget-object v6, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    goto :goto_70

    .line 641
    :cond_44
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_51

    .line 642
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v6}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_70

    .line 643
    :cond_51
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_57

    goto :goto_70

    .line 644
    :cond_57
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyPairGenerator initType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "s":Ljava/security/Provider$Service;
    .end local p0    # "this":Ljava/security/KeyPairGenerator$Delegate;
    .end local p1    # "oldSpi":Ljava/security/KeyPairGeneratorSpi;
    .end local p2    # "reinit":Z
    throw v5

    .line 648
    .restart local v1    # "s":Ljava/security/Provider$Service;
    .restart local p0    # "this":Ljava/security/KeyPairGenerator$Delegate;
    .restart local p1    # "oldSpi":Ljava/security/KeyPairGeneratorSpi;
    .restart local p2    # "reinit":Z
    :cond_70
    :goto_70
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 649
    iput-object v4, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_78} :catch_7a
    .catchall {:try_start_24 .. :try_end_78} :catchall_81

    .line 650
    :try_start_78
    monitor-exit v0

    return-object v4

    .line 651
    .end local v3    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catch_7a
    move-exception v3

    .line 654
    .end local v1    # "s":Ljava/security/Provider$Service;
    goto :goto_14

    .line 655
    :cond_7c
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator$Delegate;->disableFailover()V

    .line 656
    monitor-exit v0

    return-object v2

    .line 657
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_81

    throw v1
.end method


# virtual methods
.method greylist-max-o disableFailover()V
    .registers 3

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 662
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 663
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 664
    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    .line 665
    return-void
.end method

.method public whitelist core-platform-api test-api generateKeyPair()Ljava/security/KeyPair;
    .registers 5

    .line 726
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_b

    .line 727
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0

    .line 729
    :cond_b
    const/4 v0, 0x0

    .line 730
    .local v0, "failure":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 733
    .local v1, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_12} :catch_13

    return-object v2

    .line 734
    :catch_13
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_17

    .line 736
    move-object v0, v2

    .line 738
    :cond_17
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v1

    .line 740
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_1f

    goto :goto_e

    .line 741
    :cond_1f
    throw v0
.end method

.method public whitelist core-platform-api test-api initialize(ILjava/security/SecureRandom;)V
    .registers 7
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 669
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 670
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 671
    return-void

    .line 673
    :cond_a
    const/4 v0, 0x0

    .line 674
    .local v0, "failure":Ljava/lang/RuntimeException;
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 677
    .local v1, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :goto_d
    :try_start_d
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 678
    const/4 v2, 0x2

    iput v2, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 679
    iput p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 680
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 681
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 682
    return-void

    .line 683
    :catch_1b
    move-exception v2

    .line 684
    .local v2, "e":Ljava/lang/RuntimeException;
    if-nez v0, :cond_1f

    .line 685
    move-object v0, v2

    .line 687
    :cond_1f
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v1

    .line 689
    .end local v2    # "e":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_27

    goto :goto_d

    .line 690
    :cond_27
    throw v0
.end method

.method public whitelist core-platform-api test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v0, :cond_a

    .line 697
    iget-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 698
    return-void

    .line 700
    :cond_a
    const/4 v0, 0x0

    .line 701
    .local v0, "failure":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 704
    .local v1, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :goto_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {v1, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 705
    const/4 v3, 0x3

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 706
    iput v2, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 707
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 708
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    .line 709
    return-void

    .line 710
    :catch_1b
    move-exception v3

    .line 711
    .local v3, "e":Ljava/lang/Exception;
    if-nez v0, :cond_1f

    .line 712
    move-object v0, v3

    .line 714
    :cond_1f
    invoke-direct {p0, v1, v2}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v1

    .line 716
    .end local v3    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_31

    .line 717
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2d

    .line 718
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 721
    :cond_2d
    move-object v2, v0

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    .line 716
    :cond_31
    goto :goto_d
.end method
