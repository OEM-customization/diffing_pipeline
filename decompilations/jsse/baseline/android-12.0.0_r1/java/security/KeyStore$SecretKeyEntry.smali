.class public final Ljava/security/KeyStore$SecretKeyEntry;
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
    name = "SecretKeyEntry"
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

.field private final greylist-max-o sKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/crypto/SecretKey;)V
    .registers 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    if-eqz p1, :cond_e

    .line 689
    iput-object p1, p0, Ljava/security/KeyStore$SecretKeyEntry;->sKey:Ljavax/crypto/SecretKey;

    .line 690
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->attributes:Ljava/util/Set;

    .line 691
    return-void

    .line 687
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljavax/crypto/SecretKey;Ljava/util/Set;)V
    .registers 5
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 708
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/KeyStore$Entry$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 713
    iput-object p1, p0, Ljava/security/KeyStore$SecretKeyEntry;->sKey:Ljavax/crypto/SecretKey;

    .line 714
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 715
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->attributes:Ljava/util/Set;

    .line 716
    return-void

    .line 711
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->attributes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getSecretKey()Ljavax/crypto/SecretKey;
    .registers 2

    .line 724
    iget-object v0, p0, Ljava/security/KeyStore$SecretKeyEntry;->sKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Secret key entry with algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/KeyStore$SecretKeyEntry;->sKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
