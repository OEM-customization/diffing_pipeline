.class public interface abstract Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NTTObjectIdentifiers.java"


# static fields
.field public static final id_camellia128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_camellia128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_camellia192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_camellia192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_camellia256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_camellia256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.1.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.1.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.1.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.3.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.3.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string/jumbo v1, "1.2.392.200011.61.1.1.3.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    return-void
.end method
