.class public Lcom/android/org/bouncycastle/asn1/BERGenerator;
.super Lcom/android/org/bouncycastle/asn1/ASN1Generator;
.source "BERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 20
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;IZ)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    .line 30
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    .line 31
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    .line 32
    return-void
.end method

.method private writeHdr(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getRawOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected writeBEREnd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v0, :cond_1d

    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 87
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 89
    :cond_1d
    return-void
.end method

.method protected writeBERHeader(I)V
    .registers 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagged:Z

    if-eqz v1, :cond_23

    .line 53
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_tagNo:I

    or-int/lit16 v0, v1, 0x80

    .line 55
    .local v0, "tagNum":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/BERGenerator;->_isExplicit:Z

    if-eqz v1, :cond_15

    .line 57
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    .line 76
    .end local v0    # "tagNum":I
    :goto_14
    return-void

    .line 62
    .restart local v0    # "tagNum":I
    :cond_15
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1f

    .line 64
    or-int/lit8 v1, v0, 0x20

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_14

    .line 68
    :cond_1f
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_14

    .line 74
    .end local v0    # "tagNum":I
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/BERGenerator;->writeHdr(I)V

    goto :goto_14
.end method
