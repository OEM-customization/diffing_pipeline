.class public Lcom/android/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private blacklist _isExplicit:Z

.field private blacklist _tagNo:I

.field private blacklist _tagged:Z


# direct methods
.method protected constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 22
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/OutputStream;IZ)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    .line 29
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 32
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 33
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 34
    return-void
.end method

.method private blacklist writeHdr(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist getRawOutputStream()Ljava/io/OutputStream;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected blacklist writeBEREnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 86
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_1d

    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 91
    :cond_1d
    return-void
.end method

.method protected blacklist writeBERHeader(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_23

    .line 55
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v0, 0x80

    .line 57
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_15

    .line 59
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    .line 64
    :cond_15
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1f

    .line 66
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_22

    .line 70
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 73
    .end local v0    # "tagNum":I
    :goto_22
    goto :goto_26

    .line 76
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 78
    :goto_26
    return-void
.end method
