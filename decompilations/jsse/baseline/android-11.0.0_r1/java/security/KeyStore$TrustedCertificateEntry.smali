.class public final Ljava/security/KeyStore$TrustedCertificateEntry;
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
    name = "TrustedCertificateEntry"
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

.field private final greylist-max-o cert:Ljava/security/cert/Certificate;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "trustedCert"    # Ljava/security/cert/Certificate;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    if-eqz p1, :cond_e

    .line 773
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    .line 774
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    .line 775
    return-void

    .line 771
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/security/cert/Certificate;Ljava/util/Set;)V
    .registers 5
    .param p1, "trustedCert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 793
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/KeyStore$Entry$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 797
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    .line 798
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 799
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    .line 800
    return-void

    .line 795
    :cond_15
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

    .line 821
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTrustedCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .line 808
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trusted certificate entry:\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
