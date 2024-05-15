.class public Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;
.source "ASN1EncodableVector.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0xa

.field static final blacklist EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private blacklist copyOnWrite:Z

.field private blacklist elementCount:I

.field private blacklist elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 21
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "initialCapacity"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-ltz p1, :cond_14

    .line 31
    if-nez p1, :cond_a

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_c

    :cond_a
    new-array v0, p1, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    :goto_c
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 33
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 34
    return-void

    .line 28
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist cloneElements([Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p0, "elements"    # [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 161
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    goto :goto_d

    :cond_7
    invoke-virtual {p0}, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    :goto_d
    return-object v0
.end method

.method private blacklist reallocate(I)V
    .registers 8
    .param p1, "minCapacity"    # I

    .line 149
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 150
    .local v0, "oldCapacity":I
    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    .local v1, "newCapacity":I
    new-array v2, v1, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 153
    .local v2, "copy":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 156
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 157
    return-void
.end method


# virtual methods
.method public greylist add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "element"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 39
    if-eqz p1, :cond_1e

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 45
    .local v0, "capacity":I
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 46
    .local v1, "minCapacity":I
    if-le v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-boolean v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 48
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 51
    :cond_15
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v2, v3

    .line 52
    iput v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 53
    return-void

    .line 41
    .end local v0    # "capacity":I
    .end local v1    # "minCapacity":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAll(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 9
    .param p1, "other"    # Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 57
    if-eqz p1, :cond_39

    .line 62
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    .line 63
    .local v0, "otherElementCount":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 65
    return-void

    .line 68
    :cond_a
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v2

    .line 69
    .local v2, "capacity":I
    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v3, v0

    .line 70
    .local v3, "minCapacity":I
    if-le v3, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1c

    .line 72
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    .line 75
    :cond_1c
    const/4 v1, 0x0

    .line 78
    .local v1, "i":I
    :cond_1d
    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 79
    .local v4, "otherElement":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v4, :cond_31

    .line 84
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v6, v1

    aput-object v4, v5, v6

    .line 86
    .end local v4    # "otherElement":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_1d

    .line 88
    iput v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    .line 89
    return-void

    .line 81
    .restart local v4    # "otherElement":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_31
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "\'other\' elements cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    .end local v0    # "otherElementCount":I
    .end local v1    # "i":I
    .end local v2    # "capacity":I
    .end local v3    # "minCapacity":I
    .end local v4    # "otherElement":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist copyElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .line 119
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 121
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 124
    :cond_7
    new-array v1, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 125
    .local v1, "copy":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v1
.end method

.method public blacklist get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "i"    # I

    .line 99
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ge p1, v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0

    .line 101
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist size()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method blacklist takeElements()[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .line 131
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_7

    .line 133
    sget-object v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    .line 136
    :cond_7
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    array-length v2, v1

    if-ne v2, v0, :cond_10

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    .line 139
    return-object v1

    .line 142
    :cond_10
    new-array v2, v0, [Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 143
    .local v2, "copy":[Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    return-object v2
.end method
