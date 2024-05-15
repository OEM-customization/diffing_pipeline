.class Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private blacklist _currentStream:Ljava/io/InputStream;

.field private blacklist _first:Z

.field private final blacklist _parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 18
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1e

    .line 76
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    .line 78
    return v1

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 83
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_15

    .line 85
    return v1

    .line 88
    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 89
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 94
    .end local v0    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 96
    .local v0, "b":I
    if-ltz v0, :cond_27

    .line 98
    return v0

    .line 101
    :cond_27
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 103
    .local v2, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v2, :cond_35

    .line 105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 106
    return v1

    .line 109
    :cond_35
    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 110
    .end local v0    # "b":I
    .end local v2    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    goto :goto_1e
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_1e

    .line 25
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v0, :cond_a

    .line 27
    return v1

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 32
    .local v0, "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_15

    .line 34
    return v1

    .line 37
    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 38
    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 41
    .end local v0    # "s":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1e
    const/4 v0, 0x0

    .line 45
    .local v0, "totalRead":I
    :goto_1f
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 47
    .local v2, "numRead":I
    if-ltz v2, :cond_2f

    .line 49
    add-int/2addr v0, v2

    .line 51
    if-ne v0, p3, :cond_48

    .line 53
    return v0

    .line 58
    :cond_2f
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 60
    .local v3, "aos":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v3, :cond_42

    .line 62
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 63
    const/4 v4, 0x1

    if-ge v0, v4, :cond_40

    goto :goto_41

    :cond_40
    move v1, v0

    :goto_41
    return v1

    .line 66
    :cond_42
    invoke-interface {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 68
    .end local v2    # "numRead":I
    .end local v3    # "aos":Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_48
    goto :goto_1f
.end method
