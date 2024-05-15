.class public Lcom/android/org/bouncycastle/asn1/x500/X500Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static blacklist defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private blacklist hashCodeValue:I

.field private blacklist isHashCodeCalculated:Z

.field private blacklist rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

.field private blacklist style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 107
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 113
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 115
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "index":I
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 121
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    aput-object v4, v2, v0

    move v0, v3

    goto :goto_12

    .line 123
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_28
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 48
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iget-object v0, p2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .registers 4
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .line 149
    invoke-interface {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 151
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 152
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .registers 4
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 134
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 135
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->copy([Lcom/android/org/bouncycastle/asn1/x500/RDN;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 136
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "dirName"    # Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .registers 3
    .param p1, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 128
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 129
    return-void
.end method

.method private blacklist copy([Lcom/android/org/bouncycastle/asn1/x500/RDN;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 5
    .param p1, "rdns"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 254
    array-length v0, p1

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 256
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    return-object v0
.end method

.method public static blacklist getDefaultStyle()Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .registers 1

    .line 339
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 65
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 4
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_d

    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 91
    :cond_d
    if-eqz p1, :cond_19

    .line 93
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 96
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_8

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0

    .line 75
    :cond_8
    if-eqz p0, :cond_14

    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setDefaultStyle(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 3
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 324
    if-eqz p0, :cond_5

    .line 329
    sput-object p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 330
    return-void

    .line 326
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 285
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 287
    return v0

    .line 290
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    .line 292
    return v2

    .line 295
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 297
    .local v1, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 299
    return v0

    .line 304
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-object v4, p1

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-interface {v0, p0, v3}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_37

    return v0

    .line 306
    :catch_37
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public blacklist getAttributeTypes()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 9

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v3, v2

    if-eq v1, v3, :cond_11

    .line 179
    aget-object v2, v2, v1

    .line 181
    .local v2, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 177
    .end local v2    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 184
    .end local v1    # "i":I
    :cond_11
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 186
    .local v1, "res":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v0, 0x0

    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v4, v3

    if-eq v2, v4, :cond_4f

    .line 190
    aget-object v3, v3, v2

    .line 192
    .local v3, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 194
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 195
    .local v4, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_27
    array-length v6, v4

    if-eq v5, v6, :cond_38

    .line 197
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "count":I
    .local v6, "count":I
    aget-object v7, v4, v5

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    aput-object v7, v1, v0

    .line 195
    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_27

    .line 199
    .end local v4    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v5    # "j":I
    .end local v6    # "count":I
    .restart local v0    # "count":I
    :cond_38
    goto :goto_4c

    .line 200
    :cond_39
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 202
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "count":I
    .local v4, "count":I
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    aput-object v5, v1, v0

    move v0, v4

    .line 188
    .end local v3    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v4    # "count":I
    .restart local v0    # "count":I
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 206
    .end local v2    # "i":I
    :cond_4f
    return-object v1
.end method

.method public blacklist getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 163
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v1
.end method

.method public blacklist getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 9
    .param p1, "attributeType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 218
    .local v0, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 220
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v4, v3

    if-eq v2, v4, :cond_48

    .line 222
    aget-object v3, v3, v2

    .line 224
    .local v3, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->isMultiValued()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 226
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getTypesAndValues()[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    .line 227
    .local v4, "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_19
    array-length v6, v4

    if-eq v5, v6, :cond_31

    .line 229
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 231
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "count":I
    .local v6, "count":I
    aput-object v3, v0, v1

    .line 232
    move v1, v6

    goto :goto_31

    .line 227
    .end local v6    # "count":I
    .restart local v1    # "count":I
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 235
    .end local v4    # "attr":[Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;
    .end local v5    # "j":I
    :cond_31
    :goto_31
    goto :goto_45

    .line 238
    :cond_32
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 240
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-object v3, v0, v1

    move v1, v4

    .line 220
    .end local v3    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_45
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 245
    .end local v2    # "i":I
    :cond_48
    new-array v2, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 247
    .local v2, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v2
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 268
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    .line 270
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    .line 273
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 275
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 277
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 263
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
