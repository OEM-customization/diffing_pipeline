.class public Lsun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "DerInputStream.java"


# instance fields
.field buffer:Lsun/security/util/DerInputBuffer;

.field public tag:B


# direct methods
.method constructor <init>(Lsun/security/util/DerInputBuffer;)V
    .registers 4
    .param p1, "buf"    # Lsun/security/util/DerInputBuffer;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 144
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 145
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v0, v2}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 81
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 96
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "allowIndefiniteLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DerInputStream;->init([BIIZ)V

    .line 116
    return-void
.end method

.method static getLength(ILjava/io/InputStream;)I
    .registers 9
    .param p0, "lenByte"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 626
    if-ne p0, v5, :cond_c

    .line 627
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Short read of DER length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_c
    const-string/jumbo v0, "DerInputStream.getLength(): "

    .line 631
    .local v0, "mdName":Ljava/lang/String;
    move v1, p0

    .line 632
    .local v1, "tmp":I
    and-int/lit16 v4, p0, 0x80

    if-nez v4, :cond_16

    .line 633
    move v3, p0

    .line 663
    .local v3, "value":I
    :cond_15
    return v3

    .line 635
    .end local v3    # "value":I
    :cond_16
    and-int/lit8 v1, p0, 0x7f

    .line 641
    if-nez v1, :cond_1b

    .line 642
    return v5

    .line 643
    :cond_1b
    if-ltz v1, :cond_20

    const/4 v4, 0x4

    if-le v1, v4, :cond_52

    .line 644
    :cond_20
    new-instance v5, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "lengthTag="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 645
    if-gez v1, :cond_4e

    const-string/jumbo v4, "incorrect DER encoding."

    .line 644
    :goto_42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 645
    :cond_4e
    const-string/jumbo v4, "too big."

    goto :goto_42

    .line 647
    :cond_52
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v3, v4, 0xff

    .line 648
    .restart local v3    # "value":I
    add-int/lit8 v1, v1, -0x1

    .line 649
    if-nez v3, :cond_bf

    .line 651
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Redundant length bytes found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    .end local v1    # "tmp":I
    .local v2, "tmp":I
    :goto_76
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "tmp":I
    .restart local v1    # "tmp":I
    if-lez v2, :cond_85

    .line 654
    shl-int/lit8 v3, v3, 0x8

    .line 655
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    move v2, v1

    .end local v1    # "tmp":I
    .restart local v2    # "tmp":I
    goto :goto_76

    .line 657
    .end local v2    # "tmp":I
    .restart local v1    # "tmp":I
    :cond_85
    if-gez v3, :cond_a1

    .line 658
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Invalid length bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 659
    :cond_a1
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_15

    .line 660
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Should use short form for length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bf
    move v2, v1

    .end local v1    # "tmp":I
    .restart local v2    # "tmp":I
    goto :goto_76
.end method

.method static getLength(Ljava/io/InputStream;)I
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method private init([BIIZ)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "allowIndefiniteLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    add-int/lit8 v2, p2, 0x2

    array-length v3, p1

    if-gt v2, v3, :cond_a

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_13

    .line 124
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Encoding bytes too short"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_13
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Lsun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 128
    if-nez p4, :cond_28

    .line 129
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Indefinite length BER encoding found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_28
    new-array v1, p3, [B

    .line 132
    .local v1, "inData":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 134
    new-instance v0, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 135
    .local v0, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, v1}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 139
    .end local v0    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v1    # "inData":[B
    :goto_3e
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputBuffer;->mark(I)V

    .line 140
    return-void

    .line 138
    :cond_47
    new-instance v2, Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, p1, p2, p3}, Lsun/security/util/DerInputBuffer;-><init>([BII)V

    iput-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    goto :goto_3e
.end method

.method private readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "stringTag"    # B
    .param p2, "stringName"    # Ljava/lang/String;
    .param p3, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v2

    if-eq v2, p1, :cond_29

    .line 559
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DER input not a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 560
    const-string/jumbo v4, " string"

    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 562
    :cond_29
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 563
    .local v0, "length":I
    new-array v1, v0, [B

    .line 564
    .local v1, "retval":[B
    if-eqz v0, :cond_5c

    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_5c

    .line 565
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Short read of DER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 566
    const-string/jumbo v4, " string"

    .line 565
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 568
    :cond_5c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public available()I
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    return v0
.end method

.method public getBMPString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    const-string/jumbo v0, "BMP"

    .line 536
    const-string/jumbo v1, "UnicodeBigUnmarked"

    .line 535
    const/16 v2, 0x1e

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 205
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_12
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBitString()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 242
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input not an bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_12
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method getByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getBytes([B)V
    .registers 4
    .param p1, "val"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    array-length v0, p1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_15

    .line 299
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Short read of DER octet string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_15
    return-void
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getEnumerated()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_13

    .line 231
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Enumerated tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_13
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    const-string/jumbo v0, "General"

    .line 544
    const-string/jumbo v1, "ASCII"

    .line 543
    const/16 v2, 0x1b

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_13

    .line 585
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, GeneralizedTime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_13
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getGeneralizedTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getIA5String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    const-string/jumbo v0, "IA5"

    const-string/jumbo v1, "ASCII"

    const/16 v2, 0x16

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 193
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_12
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v0}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public getNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 308
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "getNull, bad data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1a
    return-void
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputStream;)V

    return-object v0
.end method

.method public getOctetString()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_12

    .line 284
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "DER input not an octet string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_12
    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v0

    .line 287
    .local v0, "length":I
    new-array v1, v0, [B

    .line 288
    .local v1, "retval":[B
    if-eqz v0, :cond_2d

    iget-object v2, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v1}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    if-eq v2, v0, :cond_2d

    .line 289
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Short read of DER octet string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :cond_2d
    return-object v1
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    .line 219
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, Integer tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_12
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    const-string/jumbo v0, "Printable"

    .line 511
    const-string/jumbo v1, "ASCII"

    .line 510
    const/16 v2, 0x13

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSequence(I)[Lsun/security/util/DerValue;
    .registers 3
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSequence(IZ)[Lsun/security/util/DerValue;
    .registers 5
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 332
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_18

    .line 333
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Sequence tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_18
    invoke-virtual {p0, p1, p2}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSet(I)[Lsun/security/util/DerValue;
    .registers 4
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 366
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-eq v0, v1, :cond_18

    .line 367
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_18
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputStream;->readVector(I)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSet(IZ)[Lsun/security/util/DerValue;
    .registers 4
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, p2, v0}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSet(IZZ)[Lsun/security/util/DerValue;
    .registers 6
    .param p1, "startLen"    # I
    .param p2, "implicit"    # Z
    .param p3, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    .line 395
    if-nez p2, :cond_1a

    .line 396
    iget-byte v0, p0, Lsun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1a

    .line 397
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Set tag error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1a
    invoke-virtual {p0, p1, p3}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method public getT61String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    const-string/jumbo v0, "T61"

    const-string/jumbo v1, "ISO-8859-1"

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_13

    .line 576
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER input, UTCtime tag invalid "

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_13
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v1}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getUTCTime(I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const-string/jumbo v0, "UTF-8"

    const-string/jumbo v1, "UTF8"

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0, v1}, Lsun/security/util/DerInputStream;->readString(BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v4}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_12

    .line 253
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "DER input not a bit string"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 255
    :cond_12
    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v4}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 261
    .local v1, "length":I
    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v4}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    .line 262
    .local v0, "excessBits":I
    if-gez v0, :cond_2b

    .line 263
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unused bits of bit string invalid"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 265
    :cond_2b
    mul-int/lit8 v4, v1, 0x8

    sub-int v3, v4, v0

    .line 266
    .local v3, "validBits":I
    if-gez v3, :cond_3a

    .line 267
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Valid bits of bit string invalid"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_3a
    new-array v2, v1, [B

    .line 272
    .local v2, "repn":[B
    if-eqz v1, :cond_4f

    iget-object v4, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v4, v2}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_4f

    .line 273
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Short read of DER bit string"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    :cond_4f
    new-instance v4, Lsun/security/util/BitArray;

    invoke-direct {v4, v3, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v4
.end method

.method public mark(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->mark(I)V

    return-void
.end method

.method public peekByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->peek()I

    move-result v0

    return v0
.end method

.method protected readVector(I)[Lsun/security/util/DerValue;
    .registers 3
    .param p1, "startLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputStream;->readVector(IZ)[Lsun/security/util/DerValue;

    move-result-object v0

    return-object v0
.end method

.method protected readVector(IZ)[Lsun/security/util/DerValue;
    .registers 19
    .param p1, "startLen"    # I
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v14

    int-to-byte v6, v14

    .line 427
    .local v6, "lenByte":B
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v6, v14}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v5

    .line 429
    .local v5, "len":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_6b

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v10

    .line 432
    .local v10, "readLen":I
    const/4 v9, 0x2

    .line 433
    .local v9, "offset":I
    add-int/lit8 v14, v10, 0x2

    new-array v4, v14, [B

    .line 434
    .local v4, "indefData":[B
    move-object/from16 v0, p0

    iget-byte v14, v0, Lsun/security/util/DerInputStream;->tag:B

    const/4 v15, 0x0

    aput-byte v14, v4, v15

    .line 435
    const/4 v14, 0x1

    aput-byte v6, v4, v14

    .line 436
    new-instance v2, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 437
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 438
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 439
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 440
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v14, Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v15

    invoke-direct {v14, v15}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    .line 441
    move-object/from16 v0, p0

    iget-byte v14, v0, Lsun/security/util/DerInputStream;->tag:B

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v15}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v15

    if-eq v14, v15, :cond_63

    .line 442
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Indefinite length encoding not supported"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 444
    :cond_63
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-static {v14}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v5

    .line 447
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "indefData":[B
    .end local v9    # "offset":I
    .end local v10    # "readLen":I
    :cond_6b
    if-nez v5, :cond_71

    .line 450
    const/4 v14, 0x0

    new-array v14, v14, [Lsun/security/util/DerValue;

    return-object v14

    .line 456
    :cond_71
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v14}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v14

    if-ne v14, v5, :cond_a5

    .line 457
    move-object/from16 v8, p0

    .line 464
    .local v8, "newstr":Lsun/security/util/DerInputStream;
    :goto_7d
    new-instance v13, Ljava/util/Vector;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/Vector;-><init>(I)V

    .line 469
    .local v13, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_84
    new-instance v12, Lsun/security/util/DerValue;

    iget-object v14, v8, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    move/from16 v0, p2

    invoke-direct {v12, v14, v0}, Lsun/security/util/DerValue;-><init>(Lsun/security/util/DerInputBuffer;Z)V

    .line 470
    .local v12, "value":Lsun/security/util/DerValue;
    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-gtz v14, :cond_84

    .line 473
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-eqz v14, :cond_ad

    .line 474
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Extra data at end of vector"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 459
    .end local v8    # "newstr":Lsun/security/util/DerInputStream;
    .end local v12    # "value":Lsun/security/util/DerValue;
    .end local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_a5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lsun/security/util/DerInputStream;->subStream(IZ)Lsun/security/util/DerInputStream;

    move-result-object v8

    .restart local v8    # "newstr":Lsun/security/util/DerInputStream;
    goto :goto_7d

    .line 479
    .restart local v12    # "value":Lsun/security/util/DerValue;
    .restart local v13    # "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/DerValue;>;"
    :cond_ad
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v7

    .line 480
    .local v7, "max":I
    new-array v11, v7, [Lsun/security/util/DerValue;

    .line 482
    .local v11, "retval":[Lsun/security/util/DerValue;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b4
    if-ge v3, v7, :cond_c1

    .line 483
    invoke-virtual {v13, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lsun/security/util/DerValue;

    aput-object v14, v11, v3

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    .line 485
    :cond_c1
    return-object v11
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 678
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->reset()V

    return-void
.end method

.method public subStream(IZ)Lsun/security/util/DerInputStream;
    .registers 7
    .param p1, "len"    # I
    .param p2, "do_skip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v0

    .line 161
    .local v0, "newbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v0, p1}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 162
    if-eqz p2, :cond_11

    .line 163
    iget-object v1, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 165
    :cond_11
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v1
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lsun/security/util/DerInputStream;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
