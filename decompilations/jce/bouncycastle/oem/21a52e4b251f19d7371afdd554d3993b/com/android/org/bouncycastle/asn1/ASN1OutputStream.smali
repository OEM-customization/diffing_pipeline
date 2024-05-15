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
.field private blacklist os:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 155
    return-void
.end method

.method public blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 161
    return-void
.end method

.method blacklist getDERSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .line 165
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method blacklist getDLSubStream()Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;
    .registers 3

    .line 170
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLOutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DLOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method blacklist write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 52
    return-void
.end method

.method blacklist write([B)V
    .registers 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 58
    return-void
.end method

.method blacklist write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method blacklist writeEncoded(II[B)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 113
    array-length v0, p3

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 114
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 115
    return-void
.end method

.method blacklist writeEncoded(I[B)V
    .registers 4
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 72
    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([B)V

    .line 74
    return-void
.end method

.method blacklist writeImplicitObject(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    if-eqz p1, :cond_d

    .line 143
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream$ImplicitOutputStream;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 149
    return-void

    .line 147
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist writeLength(I)V
    .registers 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    const/16 v0, 0x7f

    if-le p1, v0, :cond_24

    .line 27
    const/4 v0, 0x1

    .line 28
    .local v0, "size":I
    move v1, p1

    .line 30
    .local v1, "val":I
    :goto_6
    ushr-int/lit8 v2, v1, 0x8

    move v1, v2

    if-eqz v2, :cond_e

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 35
    :cond_e
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 37
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_23

    .line 39
    shr-int v3, p1, v2

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 37
    add-int/lit8 v2, v2, -0x8

    goto :goto_18

    .line 41
    .end local v0    # "size":I
    .end local v1    # "val":I
    .end local v2    # "i":I
    :cond_23
    goto :goto_28

    .line 44
    :cond_24
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 46
    :goto_28
    return-void
.end method

.method protected blacklist writeNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->os:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 122
    return-void
.end method

.method public blacklist writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 4
    .param p1, "obj"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-eqz p1, :cond_a

    .line 130
    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;)V

    .line 136
    return-void

    .line 134
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "null object detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist writeTag(II)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_a

    .line 81
    or-int v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_35

    .line 85
    :cond_a
    or-int/lit8 v0, p1, 0x1f

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 86
    const/16 v0, 0x80

    if-ge p2, v0, :cond_17

    .line 88
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_35

    .line 92
    :cond_17
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 93
    .local v1, "stack":[B
    array-length v2, v1

    .line 95
    .local v2, "pos":I
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p2, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 99
    :goto_22
    shr-int/lit8 p2, p2, 0x7

    .line 100
    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v3, p2, 0x7f

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 102
    const/16 v3, 0x7f

    if-gt p2, v3, :cond_36

    .line 104
    array-length v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    .line 107
    .end local v1    # "stack":[B
    .end local v2    # "pos":I
    :goto_35
    return-void

    .line 102
    .restart local v1    # "stack":[B
    .restart local v2    # "pos":I
    :cond_36
    goto :goto_22
.end method
