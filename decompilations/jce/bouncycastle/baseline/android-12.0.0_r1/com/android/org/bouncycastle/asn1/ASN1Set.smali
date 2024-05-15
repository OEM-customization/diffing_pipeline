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
.field protected final blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field protected final blacklist isSorted:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 230
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 232
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "element"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 239
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 240
    if-eqz p1, :cond_10

    .line 245
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 246
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 247
    return-void

    .line 242
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 6
    .param p1, "elementVector"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "doSort"    # Z

    .line 255
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 256
    if-eqz p1, :cond_28

    .line 262
    const/4 v0, 0x2

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lt v1, v0, :cond_16

    .line 264
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 265
    .local v1, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1a

    .line 269
    .end local v1    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_16
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 272
    .restart local v1    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_1a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 273
    if-nez p2, :cond_24

    array-length v2, v1

    if-ge v2, v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 274
    return-void

    .line 258
    .end local v1    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "isSorted"    # Z
    .param p2, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 299
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 301
    if-nez p1, :cond_e

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 302
    return-void
.end method

.method protected constructor blacklist <init>([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 6
    .param p1, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .param p2, "doSort"    # Z

    .line 282
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 283
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 288
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 289
    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v1, 0x2

    if-eqz p2, :cond_16

    array-length v2, v0

    if-lt v2, v1, :cond_16

    .line 291
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    :cond_16
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 295
    if-nez p2, :cond_20

    array-length v2, v0

    if-ge v2, v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    .line 296
    return-void

    .line 285
    .end local v0    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 4
    .param p0, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 507
    :try_start_0
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 509
    :catch_b
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot encode object added to SET"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .registers 7
    .param p0, "taggedObject"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 169
    if-eqz p1, :cond_19

    .line 171
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 176
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0

    .line 173
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_19
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 185
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 187
    instance-of v1, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v1, :cond_2d

    .line 189
    new-instance v1, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 192
    :cond_2d
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 195
    :cond_33
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_46

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 199
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    instance-of v2, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    if-eqz v2, :cond_3f

    .line 201
    return-object v1

    .line 204
    :cond_3f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    return-object v2

    .line 210
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_46
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_62

    .line 212
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 215
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 217
    .local v2, "elements":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    .line 219
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERSet;

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/BERSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 222
    :cond_5c
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DLSet;

    invoke-direct {v3, v4, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v3

    .line 225
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "elements":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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

.method private static blacklist lessThanOrEqual([B[B)Z
    .registers 10
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 534
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, -0x21

    .line 535
    .local v1, "a0":I
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, -0x21

    .line 536
    .local v2, "b0":I
    const/4 v3, 0x1

    if-eq v1, v2, :cond_10

    .line 538
    if-ge v1, v2, :cond_f

    move v0, v3

    :cond_f
    return v0

    .line 541
    :cond_10
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v3

    .line 542
    .local v4, "last":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_2f

    .line 544
    aget-byte v6, p0, v5

    aget-byte v7, p1, v5

    if-eq v6, v7, :cond_2c

    .line 546
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_2b

    move v0, v3

    :cond_2b
    return v0

    .line 542
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 549
    .end local v5    # "i":I
    :cond_2f
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    if-gt v5, v6, :cond_3a

    move v0, v3

    :cond_3a
    return v0
.end method

.method private static blacklist sort([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 13
    .param p0, "t"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 554
    array-length v0, p0

    .line 555
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 557
    return-void

    .line 560
    :cond_5
    const/4 v1, 0x0

    aget-object v1, p0, v1

    .local v1, "eh":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 561
    .local v2, "ei":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v3

    .local v3, "bh":[B
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 563
    .local v4, "bi":[B
    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 565
    move-object v5, v2

    .local v5, "et":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    move-object v2, v1

    move-object v1, v5

    .line 566
    move-object v6, v4

    .local v6, "bt":[B
    move-object v4, v3

    move-object v3, v6

    .line 569
    .end local v5    # "et":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v6    # "bt":[B
    :cond_1f
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_20
    if-ge v5, v0, :cond_61

    .line 571
    aget-object v6, p0, v5

    .line 572
    .local v6, "e2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v7

    .line 574
    .local v7, "b2":[B
    invoke-static {v4, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 576
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 577
    move-object v1, v2

    move-object v3, v4

    .line 578
    move-object v2, v6

    move-object v4, v7

    .line 579
    goto :goto_5e

    .line 582
    :cond_37
    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 584
    add-int/lit8 v8, v5, -0x2

    aput-object v1, p0, v8

    .line 585
    move-object v1, v6

    move-object v3, v7

    .line 586
    goto :goto_5e

    .line 589
    :cond_44
    add-int/lit8 v8, v5, -0x1

    .line 590
    .local v8, "j":I
    :goto_46
    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_5c

    .line 592
    add-int/lit8 v9, v8, -0x1

    aget-object v9, p0, v9

    .line 593
    .local v9, "e1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v10

    .line 595
    .local v10, "b1":[B
    invoke-static {v10, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 597
    goto :goto_5c

    .line 600
    :cond_59
    aput-object v9, p0, v8

    .line 601
    .end local v9    # "e1":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v10    # "b1":[B
    goto :goto_46

    .line 603
    :cond_5c
    :goto_5c
    aput-object v6, p0, v8

    .line 569
    .end local v6    # "e2":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v7    # "b2":[B
    .end local v8    # "j":I
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 606
    .end local v5    # "i":I
    :cond_61
    add-int/lit8 v5, v0, -0x2

    aput-object v1, p0, v5

    .line 607
    add-int/lit8 v5, v0, -0x1

    aput-object v2, p0, v5

    .line 608
    return-void
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 11
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 438
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 440
    return v1

    .line 443
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 445
    .local v0, "that":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    .line 446
    .local v2, "count":I
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v3, v2, :cond_14

    .line 448
    return v1

    .line 451
    :cond_14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    .line 452
    .local v3, "dis":Lcom/android/org/bouncycastle/asn1/DERSet;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    .line 454
    .local v4, "dat":Lcom/android/org/bouncycastle/asn1/DERSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v2, :cond_3f

    .line 456
    iget-object v6, v3, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v5

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 457
    .local v6, "p1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v7, v4, Lcom/android/org/bouncycastle/asn1/DERSet;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v7, v7, v5

    invoke-interface {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    .line 459
    .local v7, "p2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eq v6, v7, :cond_3c

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 461
    return v1

    .line 454
    .end local v6    # "p1":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v7    # "p2":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 465
    .end local v5    # "i":I
    :cond_3f
    const/4 v1, 0x1

    return v1
.end method

.method abstract blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    .line 334
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getObjects()Ljava/util/Enumeration;
    .registers 2

    .line 306
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$1;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 396
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 399
    .local v1, "hc":I
    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 401
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    .line 404
    :cond_17
    return v1
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/org/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Lcom/android/org/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;
    .registers 3

    .line 354
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 356
    .local v0, "count":I
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set$2;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public blacklist size()I
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public blacklist toArray()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 414
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    if-eqz v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .local v0, "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_12

    .line 420
    .end local v0    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 421
    .restart local v0    # "tmp":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->sort([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 424
    :goto_12
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 433
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLSet;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->isSorted:Z

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 477
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    .line 478
    .local v0, "count":I
    if-nez v0, :cond_9

    .line 480
    const-string v1, "[]"

    return-object v1

    .line 483
    :cond_9
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    const/4 v2, 0x0

    .line 487
    .local v2, "i":I
    :goto_14
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 488
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2a

    .line 490
    nop

    .line 494
    .end local v2    # "i":I
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 492
    .restart local v2    # "i":I
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method
