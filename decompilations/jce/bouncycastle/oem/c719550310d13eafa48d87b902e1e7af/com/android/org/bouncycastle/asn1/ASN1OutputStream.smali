.class public Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
.super Ljava/lang/Object;
.source "ASN1OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
    }
.end annotation


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    .line 17
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 153
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 159
    return-void
.end method

.method getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .prologue
    .line 168
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 50
    return-void
.end method

.method write([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-void
.end method

.method write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    return-void
.end method

.method writeEncoded(II[B)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 111
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 113
    return-void
.end method

.method writeEncoded(I[B)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 70
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 72
    return-void
.end method

.method writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_d

    .line 141
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 147
    return-void

    .line 145
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeLength(I)V
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/16 v3, 0x7f

    if-le p1, v3, :cond_22

    .line 25
    const/4 v1, 0x1

    .line 26
    .local v1, "size":I
    move v2, p1

    .line 28
    .local v2, "val":I
    :goto_6
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 33
    :cond_d
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 35
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v0, v3, 0x8

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_26

    .line 37
    shr-int v3, p1, v0

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 35
    add-int/lit8 v0, v0, -0x8

    goto :goto_17

    .line 42
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "val":I
    :cond_22
    int-to-byte v3, p1

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 44
    :cond_26
    return-void
.end method

.method protected writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    return-void
.end method

.method public writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_a

    .line 128
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 134
    return-void

    .line 132
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeTag(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v2, 0x1f

    if-ge p2, v2, :cond_a

    .line 79
    or-int v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 105
    :goto_9
    return-void

    .line 83
    :cond_a
    or-int/lit8 v2, p1, 0x1f

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 84
    const/16 v2, 0x80

    if-ge p2, v2, :cond_17

    .line 86
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_9

    .line 90
    :cond_17
    const/4 v2, 0x5

    new-array v1, v2, [B

    .line 91
    .local v1, "stack":[B
    array-length v0, v1

    .line 93
    .local v0, "pos":I
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 97
    :cond_22
    shr-int/lit8 p2, p2, 0x7

    .line 98
    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 100
    const/16 v2, 0x7f

    if-gt p2, v2, :cond_22

    .line 102
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    goto :goto_9
.end method
