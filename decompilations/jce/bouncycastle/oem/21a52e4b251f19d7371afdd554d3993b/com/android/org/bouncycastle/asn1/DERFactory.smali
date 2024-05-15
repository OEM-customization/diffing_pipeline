.class Lcom/android/org/bouncycastle/asn1/DERFactory;
.super Ljava/lang/Object;
.source "DERFactory.java"


# static fields
.field static final blacklist EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field static final blacklist EMPTY_SET:Lcom/android/org/bouncycastle/asn1/ASN1Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 7
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .param p0, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERFactory;->EMPTY_SEQUENCE:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSequence;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_f
    return-object v0
.end method

.method static blacklist createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 3
    .param p0, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERFactory;->EMPTY_SET:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_f
    return-object v0
.end method
