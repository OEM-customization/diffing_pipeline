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
.field private final attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final chain:[Ljava/security/cert/Certificate;

.field private final privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 526
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)V

    .line 527
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/util/Set;)V
    .registers 10
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/KeyStore$Entry$Attribute;>;"
    const/4 v5, 0x0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    if-eqz p1, :cond_8

    if-nez p2, :cond_11

    .line 559
    :cond_8
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "invalid null input"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_11
    if-eqz p3, :cond_8

    .line 561
    array-length v3, p2

    if-nez v3, :cond_1f

    .line 562
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 563
    const-string/jumbo v4, "invalid zero-length input chain"

    .line 562
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    :cond_1f
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 567
    .local v1, "clonedChain":[Ljava/security/cert/Certificate;
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "certType":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2c
    array-length v3, v1

    if-ge v2, v3, :cond_47

    .line 569
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 570
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 571
    const-string/jumbo v4, "chain does not contain certificates of the same type"

    .line 570
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 575
    :cond_47
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 576
    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 577
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 578
    const-string/jumbo v4, "private key algorithm does not match algorithm of public key in end entity certificate (at index 0)"

    .line 577
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    :cond_64
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    .line 584
    aget-object v3, v1, v5

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_89

    .line 585
    instance-of v3, v1, [Ljava/security/cert/X509Certificate;

    xor-int/lit8 v3, v3, 0x1

    .line 584
    if-eqz v3, :cond_89

    .line 587
    array-length v3, v1

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 589
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v4, v1

    .line 588
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :goto_7d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 594
    iput-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->attributes:Ljava/util/Set;

    .line 596
    return-void

    .line 591
    :cond_89
    iput-object v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    goto :goto_7d
.end method


# virtual methods
.method public getAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->attributes:Ljava/util/Set;

    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    .line 633
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Private key entry and certificate chain with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v3, v3

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    const-string/jumbo v3, " elements:\r\n"

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1d
    if-ge v2, v4, :cond_2d

    aget-object v0, v3, v2

    .line 658
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 661
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
