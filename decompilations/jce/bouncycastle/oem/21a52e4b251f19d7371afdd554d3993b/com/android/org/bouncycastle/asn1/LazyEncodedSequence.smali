.class Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
.super Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.source "LazyEncodedSequence.java"


# instance fields
.field private blacklist encoded:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 2
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    .line 20
    return-void
.end method

.method private blacklist parse()V
    .registers 4

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    .line 26
    .local v0, "en":Ljava/util/Enumeration;
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 28
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->seq:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 31
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    .line 32
    return-void
.end method


# virtual methods
.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_a

    .line 103
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    goto :goto_11

    .line 107
    :cond_a
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 109
    :goto_11
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_10

    .line 89
    array-length v0, v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0

    .line 93
    :cond_10
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    return v0
.end method

.method public declared-synchronized blacklist core-platform-api getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_8

    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    .line 41
    .end local p0    # "this":Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_8
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 35
    .end local p1    # "index":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getObjects()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-nez v0, :cond_b

    .line 48
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    monitor-exit p0

    return-object v0

    .line 51
    .end local p0    # "this":Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist core-platform-api size()I
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_8

    .line 58
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    .line 61
    .end local p0    # "this":Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;
    :cond_8
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 55
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_7

    .line 68
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    .line 71
    :cond_7
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_7

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;->parse()V

    .line 81
    :cond_7
    invoke-super {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
