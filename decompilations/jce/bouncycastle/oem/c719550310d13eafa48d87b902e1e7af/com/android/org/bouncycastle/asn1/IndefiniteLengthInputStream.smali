.class Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
.super Lcom/android/org/bouncycastle/asn1/LimitedInputStream;
.source "IndefiniteLengthInputStream.java"


# instance fields
.field private _b1:I

.field private _b2:I

.field private _eofOn00:Z

.field private _eofReached:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 12
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 25
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v0, :cond_1f

    .line 28
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 31
    :cond_1f
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 32
    return-void
.end method

.method private checkForEof()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 43
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-nez v0, :cond_16

    .line 45
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setParentEofDetect(Z)V

    .line 48
    :cond_16
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    return v0
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    const/4 v2, -0x1

    return v2

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 98
    .local v0, "b":I
    if-gez v0, :cond_16

    .line 101
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 104
    :cond_16
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 106
    .local v1, "v":I
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 107
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 109
    return v1
.end method

.method public read([BII)I
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
    .line 55
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    if-nez v1, :cond_7

    const/4 v1, 0x3

    if-ge p3, v1, :cond_c

    .line 57
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/asn1/LimitedInputStream;->read([BII)I

    move-result v1

    return v1

    .line 60
    :cond_c
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofReached:Z

    if-eqz v1, :cond_12

    .line 62
    const/4 v1, -0x1

    return v1

    .line 65
    :cond_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 67
    .local v0, "numRead":I
    if-gez v0, :cond_24

    .line 70
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 73
    :cond_24
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 74
    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 76
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b1:I

    .line 77
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    .line 79
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_b2:I

    if-gez v1, :cond_4a

    .line 82
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 85
    :cond_4a
    add-int/lit8 v1, v0, 0x2

    return v1
.end method

.method setEofOn00(Z)V
    .registers 2
    .param p1, "eofOn00"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->_eofOn00:Z

    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;->checkForEof()Z

    .line 39
    return-void
.end method
