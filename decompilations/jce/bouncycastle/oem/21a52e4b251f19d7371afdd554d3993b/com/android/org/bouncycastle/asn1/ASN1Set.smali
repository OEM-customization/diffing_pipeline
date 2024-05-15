.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1Set;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Set.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/org/bouncycastle/asn1/ASN1Primitive;",
        "Lcom/android/org/bouncycastle/util/Iterable<",
        "Lcom/android/org/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist isSorted:Z

.field private blacklist set:Ljava/util/Vector;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 230
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 238
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 239
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 6
    .param p1, "v"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .line 250
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_20

    .line 253
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 256
    .end local v0    # "i":I
    :cond_20
    if-eqz p2, :cond_25

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    .line 260
    :cond_25
    return-void
.end method

.method protected constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 6
    .param p1, "array"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .line 270
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v1, p1

    if-eq v0, v1, :cond_1b

    .line 273
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 276
    .end local v0    # "i":I
    :cond_1b
    if-eqz p2, :cond_20

    .line 278
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    .line 280
    :cond_20
    return-void
.end method

.method private blacklist getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 5
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 498
    :try_start_0
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 500
    :catch_b
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot encode object added to SET"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 6
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 169
    if-eqz p1, :cond_17

    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 176
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0

    .line 173
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 187
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 189
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_2b

    .line 191
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 195
    :cond_2b
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 200
    :cond_31
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_39

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v1

    .line 209
    :cond_39
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_58

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 213
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v2, :cond_4e

    .line 215
    new-instance v2, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 219
    :cond_4e
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 225
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 116
    if-eqz p0, :cond_75

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_7

    goto :goto_75

    .line 120
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    if-eqz v0, :cond_17

    .line 122
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 124
    :cond_17
    instance-of v0, p0, [B

    if-eqz v0, :cond_43

    .line 128
    :try_start_1b
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_27

    return-object v0

    .line 130
    :catch_27
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct set from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :cond_43
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_56

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 139
    .local v0, "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_56

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v1

    .line 145
    .end local v0    # "primitive":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_75
    :goto_75
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private blacklist getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p1, "e"    # Ljava/util/Enumeration;

    .line 464
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 467
    .local v0, "encObj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_b

    .line 469
    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    return-object v1

    .line 472
    :cond_b
    return-object v0
.end method

.method private blacklist lessThanOrEqual([B[B)Z
    .registers 9
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 482
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 483
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_20

    .line 485
    aget-byte v4, p1, v1

    aget-byte v5, p2, v1

    if-eq v4, v5, :cond_1d

    .line 487
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    if-ge v4, v5, :cond_1c

    move v2, v3

    :cond_1c
    return v2

    .line 483
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 490
    .end local v1    # "i":I
    :cond_20
    array-length v1, p1

    if-ne v0, v1, :cond_24

    move v2, v3

    :cond_24
    return v2
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 11
    .param p1, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 428
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 430
    return v1

    .line 433
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 435
    .local v0, "other":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 437
    return v1

    .line 440
    :cond_14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 441
    .local v2, "s1":Ljava/util/Enumeration;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 443
    .local v3, "s2":Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 445
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 446
    .local v4, "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 448
    .local v5, "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-interface {v4}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 449
    .local v6, "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 451
    .local v7, "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v6, v7, :cond_1c

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 453
    goto :goto_1c

    .line 456
    :cond_3b
    return v1

    .line 459
    .end local v4    # "obj1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v5    # "obj2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "o1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "o2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3c
    const/4 v1, 0x1

    return v1
.end method

.method abstract blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    .line 296
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 365
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 366
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 368
    .local v1, "hashCode":I
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 370
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 371
    .local v2, "o":Ljava/lang/Object;
    mul-int/lit8 v1, v1, 0x11

    .line 373
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 374
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_8

    .line 376
    :cond_1a
    return v1
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 554
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 567
    new-instance v0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
    .registers 3

    .line 323
    move-object v0, p0

    .line 325
    .local v0, "outer":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected blacklist sort()V
    .registers 10

    .line 508
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-nez v0, :cond_61

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 511
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_61

    .line 513
    const/4 v1, 0x1

    .line 514
    .local v1, "swapped":Z
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 516
    .local v2, "lastSwap":I
    :goto_17
    if-eqz v1, :cond_61

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "index":I
    const/4 v3, 0x0

    .line 520
    .local v3, "swapIndex":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 522
    .local v4, "a":[B
    const/4 v1, 0x0

    .line 524
    :goto_29
    if-eq v0, v2, :cond_5f

    .line 526
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v5

    .line 528
    .local v5, "b":[B
    invoke-direct {p0, v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 530
    move-object v4, v5

    goto :goto_5b

    .line 534
    :cond_41
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 536
    .local v6, "o":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 537
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v6, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 539
    const/4 v1, 0x1

    .line 540
    move v3, v0

    .line 543
    .end local v6    # "o":Ljava/lang/Object;
    :goto_5b
    nop

    .end local v5    # "b":[B
    add-int/lit8 v0, v0, 0x1

    .line 544
    goto :goto_29

    .line 546
    :cond_5f
    move v2, v3

    .line 547
    .end local v0    # "index":I
    .end local v3    # "swapIndex":I
    .end local v4    # "a":[B
    goto :goto_17

    .line 550
    .end local v1    # "swapped":Z
    .end local v2    # "lastSwap":I
    :cond_61
    return-void
.end method

.method public blacklist toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4

    .line 311
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 313
    .local v0, "values":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 318
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 385
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v0, :cond_e

    .line 387
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 389
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 391
    return-object v0

    .line 395
    .end local v0    # "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_e
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 397
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_28

    .line 399
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 402
    .end local v1    # "i":I
    :cond_28
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 404
    .local v1, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 406
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort()V

    .line 408
    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 418
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>()V

    .line 420
    .local v0, "derSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iput-object v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 422
    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
