.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 17
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 73
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v2, :cond_1f

    .line 75
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v2, :cond_c

    .line 77
    return v4

    .line 80
    :cond_c
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 82
    .local v1, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_17

    .line 84
    return v4

    .line 87
    :cond_17
    iput-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 88
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 93
    .end local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, "b":I
    if-ltz v0, :cond_28

    .line 97
    return v0

    .line 100
    :cond_28
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 102
    .restart local v1    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_35

    .line 104
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 105
    return v4

    .line 108
    :cond_35
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1f
.end method

.method public read([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 22
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_1f

    .line 24
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v5, :cond_c

    .line 26
    return v4

    .line 29
    :cond_c
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 31
    .local v2, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_17

    .line 33
    return v4

    .line 36
    :cond_17
    iput-boolean v6, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 40
    .end local v2    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1f
    const/4 v3, 0x0

    .line 44
    .local v3, "totalRead":I
    :cond_20
    :goto_20
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 46
    .local v1, "numRead":I
    if-ltz v1, :cond_30

    .line 48
    add-int/2addr v3, v1

    .line 50
    if-ne v3, p3, :cond_20

    .line 52
    return v3

    .line 57
    :cond_30
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 59
    .local v0, "aos":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_41

    .line 61
    iput-object v8, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 62
    const/4 v5, 0x1

    if-ge v3, v5, :cond_40

    move v3, v4

    .end local v3    # "totalRead":I
    :cond_40
    return v3

    .line 65
    .restart local v3    # "totalRead":I
    :cond_41
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_20
.end method
