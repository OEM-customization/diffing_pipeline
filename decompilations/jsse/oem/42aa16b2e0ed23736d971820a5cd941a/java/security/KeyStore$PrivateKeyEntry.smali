.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private final greylist-max-o attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o chain:[Ljava/security/cert/Certificate;

.field private final greylist-max-o privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;

    .line 526
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)V

    .line 527
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)V
    .registers 9
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 556
    .local p3, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/KeyStore$Entry$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    if-eqz p3, :cond_7c

    .line 561
    array-length v0, p2

    if-eqz v0, :cond_74

    .line 566
    invoke-virtual {p2}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 567
    .local v0, "clonedChain":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "certType":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1a
    array-length v4, v0

    if-ge v3, v4, :cond_34

    .line 569
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 570
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "chain does not contain certificates of the same type"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    .end local v3    # "i":I
    :cond_34
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    .line 576
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 582
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    .line 584
    aget-object v3, v0, v1

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5e

    instance-of v3, v0, [Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_5e

    .line 587
    array-length v3, v0

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 588
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_60

    .line 591
    :cond_5e
    iput-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 594
    :goto_60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 595
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->attributes:Ljava/util/Set;

    .line 596
    return-void

    .line 577
    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "private key algorithm does not match algorithm of public key in end entity certificate (at index 0)"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    .end local v0    # "clonedChain":[Ljava/security/cert/Certificate;
    .end local v2    # "certType":Ljava/lang/String;
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid zero-length input chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->attributes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCertificate()Ljava/security/cert/Certificate;
    .registers 3

    .line 633
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .line 619
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .line 604
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 7

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Private key entry and certificate chain with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements:\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    .line 658
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 661
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
