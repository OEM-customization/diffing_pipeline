.class Ljavax/crypto/Cipher$SpiAndProviderUpdater;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpiAndProviderUpdater"
.end annotation


# instance fields
.field private final greylist-max-o initSpiLock:Ljava/lang/Object;

.field private final greylist-max-o specifiedProvider:Ljava/security/Provider;

.field private final greylist-max-o specifiedSpi:Ljavax/crypto/CipherSpi;

.field final synthetic blacklist this$0:Ljavax/crypto/Cipher;


# direct methods
.method constructor blacklist <init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V
    .registers 5
    .param p1, "this$0"    # Ljavax/crypto/Cipher;
    .param p2, "specifiedProvider"    # Ljava/security/Provider;
    .param p3, "specifiedSpi"    # Ljavax/crypto/CipherSpi;

    .line 2762
    iput-object p1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2750
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    .line 2763
    iput-object p2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    .line 2764
    iput-object p3, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    .line 2765
    return-void
.end method


# virtual methods
.method greylist-max-o getCurrentSpi(Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .registers 4
    .param p1, "spiImpl"    # Ljavax/crypto/CipherSpi;

    .line 2819
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    if-eqz v0, :cond_5

    .line 2820
    return-object v0

    .line 2823
    :cond_5
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2824
    :try_start_8
    monitor-exit v0

    return-object p1

    .line 2825
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v1
.end method

.method greylist-max-o setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    .registers 4
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 2768
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    # setter for: Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->access$002(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;

    .line 2769
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    # setter for: Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;
    invoke-static {v0, p2}, Ljavax/crypto/Cipher;->access$102(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;

    .line 2770
    return-void
.end method

.method greylist-max-o updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 9
    .param p1, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p2, "spiImpl"    # Ljavax/crypto/CipherSpi;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2786
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedSpi:Ljavax/crypto/CipherSpi;

    if-eqz v0, :cond_a

    .line 2787
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    invoke-direct {v1, v0, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    return-object v1

    .line 2789
    :cond_a
    iget-object v0, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->initSpiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2793
    if-eqz p2, :cond_18

    if-nez p1, :cond_18

    .line 2794
    :try_start_11
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    invoke-direct {v1, p2, p3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    monitor-exit v0

    return-object v1

    .line 2796
    :cond_18
    iget-object v1, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->specifiedProvider:Ljava/security/Provider;

    iget-object v2, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    .line 2797
    # getter for: Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;
    invoke-static {v2}, Ljavax/crypto/Cipher;->access$200(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    move-result-object v2

    .line 2796
    invoke-static {p1, v1, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v1

    .line 2798
    .local v1, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v1, :cond_38

    .line 2802
    iget-object v2, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    iget-object v3, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-virtual {p0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->setCipherSpiImplAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    .line 2803
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v3, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v3, v4}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    monitor-exit v0

    return-object v2

    .line 2799
    :cond_38
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->this$0:Ljavax/crypto/Cipher;

    .line 2800
    # getter for: Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;
    invoke-static {v4}, Ljavax/crypto/Cipher;->access$200(Ljavax/crypto/Cipher;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljavax/crypto/Cipher$SpiAndProviderUpdater;
    .end local p1    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .end local p2    # "spiImpl":Ljavax/crypto/CipherSpi;
    .end local p3    # "provider":Ljava/security/Provider;
    throw v2

    .line 2804
    .end local v1    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local p0    # "this":Ljavax/crypto/Cipher$SpiAndProviderUpdater;
    .restart local p1    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .restart local p2    # "spiImpl":Ljavax/crypto/CipherSpi;
    .restart local p3    # "provider":Ljava/security/Provider;
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method greylist-max-o updateAndGetSpiAndProvider(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 6
    .param p1, "spiImpl"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .line 2812
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_5} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 2813
    :catch_6
    move-exception v0

    .line 2814
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Exception thrown when params == null"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
