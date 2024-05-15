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

.field private blacklist rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

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

    .line 109
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 110
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 10
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 115
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 117
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 119
    const/4 v0, 0x1

    .line 121
    .local v0, "inPlace":Z
    const/4 v1, 0x0

    .line 122
    .local v1, "index":I
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 124
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "element":Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    .line 126
    .local v4, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    if-ne v4, v3, :cond_25

    const/4 v5, 0x1

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    and-int/2addr v0, v5

    .line 127
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    aput-object v4, v5, v1

    .line 128
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    move v1, v6

    goto :goto_13

    .line 130
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_2f
    if-eqz v0, :cond_38

    .line 132
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/DERSequence;->convert(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    goto :goto_41

    .line 136
    :cond_38
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 138
    :goto_41
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 4
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    .line 49
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 51
    iget-object v0, p2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 52
    iget-object v0, p2, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .registers 4
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;

    .line 165
    invoke-interface {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 167
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 168
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .registers 5
    .param p1, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 149
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 151
    invoke-virtual {p2}, [Lcom/android/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 152
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "dirName"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/x500/RDN;)V
    .registers 3
    .param p1, "rDNs"    # [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 143
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;[Lcom/android/org/bouncycastle/asn1/x500/RDN;)V

    .line 144
    return-void
.end method

.method public static blacklist getDefaultStyle()Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;
    .registers 1

    .line 312
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 67
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

    .line 89
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_d

    .line 91
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 93
    :cond_d
    if-eqz p1, :cond_19

    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 98
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_8

    .line 75
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    return-object v0

    .line 77
    :cond_8
    if-eqz p0, :cond_14

    .line 79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 82
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setDefaultStyle(Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;)V
    .registers 3
    .param p0, "style"    # Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 297
    if-eqz p0, :cond_5

    .line 302
    sput-object p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    .line 303
    return-void

    .line 299
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 258
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 260
    return v0

    .line 263
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_e

    .line 265
    return v2

    .line 268
    :cond_e
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 270
    .local v1, "derO":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 272
    return v0

    .line 277
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

    .line 279
    :catch_37
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public blacklist getAttributeTypes()[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 8

    .line 187
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 188
    .local v1, "totalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v0, :cond_13

    .line 190
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    .line 191
    .local v3, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 188
    .end local v3    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 194
    .end local v2    # "i":I
    :cond_13
    new-array v2, v1, [Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    .local v2, "oids":[Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    .line 196
    .local v3, "oidsOff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v0, :cond_25

    .line 198
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    aget-object v5, v5, v4

    .line 199
    .local v5, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5, v2, v3}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v6

    add-int/2addr v3, v6

    .line 196
    .end local v5    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 201
    .end local v4    # "i":I
    :cond_25
    return-object v2
.end method

.method public blacklist getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v0}, [Lcom/android/org/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    return-object v0
.end method

.method public blacklist getRDNs(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .registers 7
    .param p1, "attributeType"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 212
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 213
    .local v0, "res":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 215
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdns:[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    array-length v4, v3

    if-eq v2, v4, :cond_1c

    .line 217
    aget-object v3, v3, v2

    .line 218
    .local v3, "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 220
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-object v3, v0, v1

    move v1, v4

    .line 215
    .end local v3    # "rdn":Lcom/android/org/bouncycastle/asn1/x500/RDN;
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 224
    .end local v2    # "i":I
    :cond_1c
    array-length v2, v0

    if-ge v1, v2, :cond_27

    .line 226
    new-array v2, v1, [Lcom/android/org/bouncycastle/asn1/x500/RDN;

    .line 227
    .local v2, "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    move-object v0, v2

    .line 231
    .end local v2    # "tmp":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    :cond_27
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_7

    .line 243
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    .line 246
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 248
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 250
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lcom/android/org/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->style:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
