.class public Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "IssuingDistributionPoint.java"


# instance fields
.field private blacklist distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

.field private blacklist indirectCRL:Z

.field private blacklist onlyContainsAttributeCerts:Z

.field private blacklist onlyContainsCACerts:Z

.field private blacklist onlyContainsUserCerts:Z

.field private blacklist onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

.field private blacklist seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 147
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_74

    .line 152
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 154
    .local v1, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6a

    const/4 v4, 0x0

    if-eq v2, v3, :cond_5f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_54

    const/4 v3, 0x3

    if-eq v2, v3, :cond_48

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3d

    const/4 v3, 0x5

    if-ne v2, v3, :cond_35

    .line 173
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 174
    goto :goto_71

    .line 176
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_3d
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 171
    goto :goto_71

    .line 167
    :cond_48
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lcom/android/org/bouncycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 168
    goto :goto_71

    .line 164
    :cond_54
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 165
    goto :goto_71

    .line 161
    :cond_5f
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 162
    goto :goto_71

    .line 158
    :cond_6a
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 159
    nop

    .line 150
    .end local v1    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 180
    .end local v0    # "i":I
    :cond_74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZ)V
    .registers 11
    .param p1, "distributionPoint"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "indirectCRL"    # Z
    .param p3, "onlyContainsAttributeCerts"    # Z

    .line 139
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;ZZLcom/android/org/bouncycastle/asn1/x509/ReasonFlags;ZZ)V
    .registers 13
    .param p1, "distributionPoint"    # Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .param p2, "onlyContainsUserCerts"    # Z
    .param p3, "onlyContainsCACerts"    # Z
    .param p4, "onlySomeReasons"    # Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
    .param p5, "indirectCRL"    # Z
    .param p6, "onlyContainsAttributeCerts"    # Z

    .line 87
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    .line 89
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 90
    iput-boolean p6, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 91
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 92
    iput-boolean p2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 93
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    .local v0, "vec":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_20

    .line 98
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v1, p1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    :cond_20
    if-eqz p2, :cond_2e

    .line 102
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    :cond_2e
    if-eqz p3, :cond_3d

    .line 106
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_3d
    if-eqz p4, :cond_48

    .line 110
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v4, p4}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 112
    :cond_48
    if-eqz p5, :cond_57

    .line 114
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x4

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_57
    if-eqz p6, :cond_66

    .line 118
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x5

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    invoke-direct {v3, v1, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    :cond_66
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 122
    return-void
.end method

.method private blacklist appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "buf"    # Ljava/lang/StringBuffer;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 261
    const-string v0, "    "

    .line 263
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    return-void
.end method

.method private blacklist booleanToString(Z)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Z

    .line 275
    if-eqz p1, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 47
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_8

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    return-object v0

    .line 57
    :cond_8
    if-eqz p0, :cond_14

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 62
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getDistributionPoint()Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public blacklist getOnlySomeReasons()Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public blacklist isIndirectCRL()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public blacklist onlyContainsAttributeCerts()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public blacklist onlyContainsCACerts()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public blacklist onlyContainsUserCerts()Z
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 225
    invoke-static {}, Lcom/android/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->distributionPoint:Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v2, :cond_1e

    .line 232
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/DistributionPointName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "distributionPoint"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1e
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    if-eqz v2, :cond_2b

    .line 236
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsUserCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_2b
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    if-eqz v2, :cond_38

    .line 240
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsCACerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_38
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlySomeReasons:Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v2, :cond_45

    .line 244
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/ReasonFlags;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlySomeReasons"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_45
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    if-eqz v2, :cond_52

    .line 248
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onlyContainsAttributeCerts"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_52
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    if-eqz v2, :cond_5f

    .line 252
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->booleanToString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indirectCRL"

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->appendObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_5f
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
