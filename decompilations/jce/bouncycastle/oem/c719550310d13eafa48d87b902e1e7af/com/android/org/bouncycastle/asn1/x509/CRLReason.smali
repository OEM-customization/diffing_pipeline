.class public Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLReason.java"


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I = 0x0

.field public static final aACompromise:I = 0xa

.field public static final affiliationChanged:I = 0x3

.field public static final cACompromise:I = 0x2

.field public static final certificateHold:I = 0x6

.field public static final cessationOfOperation:I = 0x5

.field public static final keyCompromise:I = 0x1

.field public static final privilegeWithdrawn:I = 0x9

.field private static final reasonString:[Ljava/lang/String;

.field public static final removeFromCRL:I = 0x8

.field public static final superseded:I = 0x4

.field private static final table:Ljava/util/Hashtable;

.field public static final unspecified:I


# instance fields
.field private value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 85
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    const-string/jumbo v1, "unspecified"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "keyCompromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "cACompromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "affiliationChanged"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "cessationOfOperation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "certificateHold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "unknown"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "removeFromCRL"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "privilegeWithdrawn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "aACompromise"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    .line 28
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    .line 113
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    if-eqz v0, :cond_8

    .line 99
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    .line 101
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_8
    if-eqz p0, :cond_1b

    .line 103
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1b
    return-object v1
.end method

.method public static lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .registers 4
    .param p0, "value"    # I

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    .local v0, "idx":Ljava/lang/Integer;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 146
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_16
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    return-object v1
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 119
    .local v0, "reason":I
    if-ltz v0, :cond_e

    const/16 v2, 0xa

    if-le v0, v2, :cond_26

    .line 121
    :cond_e
    const-string/jumbo v1, "invalid"

    .line 127
    .local v1, "str":Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CRLReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 125
    .end local v1    # "str":Ljava/lang/String;
    :cond_26
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    aget-object v1, v2, v0

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_11
.end method
