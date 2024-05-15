.class Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;
.super Ljava/io/OutputStream;
.source "BEROctetStringGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedBEROctetStream"
.end annotation


# instance fields
.field private _buf:[B

.field private _derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

.field private _off:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;[B)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;
    .param p2, "buf"    # [B

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 81
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    if-eqz v1, :cond_15

    .line 123
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    new-array v0, v1, [B

    .line 124
    .local v0, "bytes":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    .line 129
    .end local v0    # "bytes":[B
    :cond_15
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->this$0:Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator;->writeBEREnd()V

    .line 130
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 90
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1c

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 95
    :cond_1c
    return-void
.end method

.method public write([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    :goto_1
    if-lez p3, :cond_20

    .line 101
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    .local v0, "numToCopy":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 104
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 105
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 116
    .end local v0    # "numToCopy":I
    :cond_20
    return-void

    .line 110
    .restart local v0    # "numToCopy":I
    :cond_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_derOut:Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_buf:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/org/bouncycastle/asn1/DEROutputStream;[B)V

    .line 111
    iput v3, p0, Lcom/android/org/bouncycastle/asn1/BEROctetStringGenerator$BufferedBEROctetStream;->_off:I

    .line 113
    add-int/2addr p2, v0

    .line 114
    sub-int/2addr p3, v0

    goto :goto_1
.end method
