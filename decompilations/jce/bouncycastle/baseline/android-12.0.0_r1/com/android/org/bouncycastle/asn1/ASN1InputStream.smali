.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final blacklist lazyEvaluate:Z

.field private final blacklist limit:I

.field private final blacklist tmpBuffers:[[B


# direct methods
.method public constructor greylist-max-r <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 32
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .line 102
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 104
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 105
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .line 86
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 87
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 45
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .line 59
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 60
    return-void
.end method

.method static blacklist createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    packed-switch p0, :pswitch_data_de

    .line 508
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :pswitch_1f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    .line 496
    :pswitch_29
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    .line 478
    :pswitch_33
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    .line 502
    :pswitch_3d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    .line 504
    :pswitch_47
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object v0

    .line 476
    :pswitch_51
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    .line 498
    :pswitch_5b
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    .line 480
    :pswitch_65
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    .line 506
    :pswitch_6f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVideotexString;-><init>([B)V

    return-object v0

    .line 494
    :pswitch_79
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    .line 492
    :pswitch_83
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    .line 486
    :pswitch_8d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    .line 500
    :pswitch_97
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    .line 474
    :pswitch_a1
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 488
    :pswitch_aa
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 484
    :pswitch_b3
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 490
    :pswitch_b6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    .line 468
    :pswitch_c0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 482
    :pswitch_c9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    .line 472
    :pswitch_d4
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_c9
        :pswitch_c0
        :pswitch_b6
        :pswitch_b3
        :pswitch_aa
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a1
        :pswitch_3
        :pswitch_97
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8d
        :pswitch_83
        :pswitch_79
        :pswitch_6f
        :pswitch_65
        :pswitch_5b
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_33
        :pswitch_29
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 11
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 411
    .local v0, "remainingBytes":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_98

    .line 416
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 417
    .local v1, "string":[C
    const/4 v2, 0x0

    .line 419
    .local v2, "stringPos":I
    const/16 v3, 0x8

    new-array v4, v3, [B

    .line 420
    .local v4, "buf":[B
    :goto_11
    const-string v5, "EOF encountered in middle of BMPString"

    const/4 v6, 0x0

    if-lt v0, v3, :cond_60

    .line 422
    invoke-static {p0, v4, v6, v3}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v7

    if-ne v7, v3, :cond_5a

    .line 427
    aget-byte v5, v4, v6

    shl-int/2addr v5, v3

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    .line 428
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 429
    add-int/lit8 v5, v2, 0x2

    const/4 v6, 0x4

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 430
    add-int/lit8 v5, v2, 0x3

    const/4 v6, 0x6

    aget-byte v6, v4, v6

    shl-int/2addr v6, v3

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v5

    .line 431
    add-int/lit8 v2, v2, 0x4

    .line 432
    add-int/lit8 v0, v0, -0x8

    goto :goto_11

    .line 424
    :cond_5a
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_60
    if-lez v0, :cond_88

    .line 436
    invoke-static {p0, v4, v6, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v6

    if-ne v6, v0, :cond_82

    .line 441
    const/4 v5, 0x0

    .line 444
    .local v5, "bufPos":I
    :goto_69
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "bufPos":I
    .local v6, "bufPos":I
    aget-byte v5, v4, v5

    shl-int/2addr v5, v3

    .line 445
    .local v5, "b1":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bufPos":I
    .local v7, "bufPos":I
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    .line 446
    .local v6, "b2":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "stringPos":I
    .local v8, "stringPos":I
    or-int v9, v5, v6

    int-to-char v9, v9

    aput-char v9, v1, v2

    .line 448
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    if-lt v7, v0, :cond_7f

    move v2, v8

    goto :goto_88

    :cond_7f
    move v5, v7

    move v2, v8

    goto :goto_69

    .line 438
    .end local v7    # "bufPos":I
    .end local v8    # "stringPos":I
    .restart local v2    # "stringPos":I
    :cond_82
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_88
    :goto_88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v3

    if-nez v3, :cond_92

    array-length v3, v1

    if-ne v3, v2, :cond_92

    .line 456
    return-object v1

    .line 453
    :cond_92
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 413
    .end local v1    # "string":[C
    .end local v2    # "stringPos":I
    .end local v4    # "buf":[B
    :cond_98
    new-instance v1, Ljava/io/IOException;

    const-string v2, "malformed BMPString encoding encountered"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 5
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 391
    .local v0, "len":I
    array-length v1, p1

    if-lt v0, v1, :cond_c

    .line 393
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 396
    :cond_c
    aget-object v1, p1, v0

    .line 397
    .local v1, "buf":[B
    if-nez v1, :cond_15

    .line 399
    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    .line 402
    :cond_15
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    .line 404
    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;IZ)I
    .registers 9
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .param p2, "isParsing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 340
    .local v0, "length":I
    if-ltz v0, :cond_74

    .line 345
    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    .line 347
    const/4 v1, -0x1

    return v1

    .line 350
    :cond_c
    const/16 v1, 0x7f

    if-le v0, v1, :cond_73

    .line 352
    and-int/lit8 v1, v0, 0x7f

    .line 355
    .local v1, "size":I
    const/4 v2, 0x4

    if-gt v1, v2, :cond_5c

    .line 360
    const/4 v0, 0x0

    .line 361
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_2e

    .line 363
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 365
    .local v3, "next":I
    if-ltz v3, :cond_26

    .line 370
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    .line 361
    .end local v3    # "next":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 367
    .restart local v3    # "next":I
    :cond_26
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 373
    .end local v2    # "i":I
    .end local v3    # "next":I
    :cond_2e
    if-ltz v0, :cond_54

    .line 378
    if-lt v0, p1, :cond_73

    if-eqz p2, :cond_35

    goto :goto_73

    .line 380
    :cond_35
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corrupted stream - out of bounds length found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    :cond_54
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - negative length found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_5c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DER length more than 4 bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    .end local v1    # "size":I
    :cond_73
    :goto_73
    return v0

    .line 342
    :cond_74
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF found when length expected"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    and-int/lit8 v0, p1, 0x1f

    .line 305
    .local v0, "tagNo":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_35

    .line 307
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 313
    .local v1, "b":I
    and-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_2d

    .line 318
    :goto_f
    if-ltz v1, :cond_1f

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1f

    .line 320
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 321
    shl-int/lit8 v0, v0, 0x7

    .line 322
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_f

    .line 325
    :cond_1f
    if-ltz v1, :cond_25

    .line 330
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_35

    .line 327
    :cond_25
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v1    # "b":I
    :cond_35
    :goto_35
    return v0
.end method


# virtual methods
.method protected blacklist buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 13
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 146
    .local v0, "isConstructed":Z
    :goto_7
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, p3, v2}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 148
    .local v1, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_1c

    .line 150
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v2

    .line 153
    :cond_1c
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_2a

    .line 155
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 158
    :cond_2a
    if-eqz v0, :cond_b4

    .line 161
    sparse-switch p2, :sswitch_data_bc

    .line 198
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " encountered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :sswitch_4b
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    return-object v2

    .line 185
    :sswitch_54
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_62

    .line 187
    new-instance v2, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    .line 191
    :cond_62
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    return-object v2

    .line 196
    :sswitch_6b
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLExternal;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 167
    :sswitch_75
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 168
    .local v2, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 170
    .local v3, "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_80
    array-length v5, v3

    if-eq v4, v5, :cond_ae

    .line 172
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 173
    .local v5, "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v6, v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v6, :cond_93

    .line 175
    move-object v6, v5

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v6, v3, v4

    .line 170
    .end local v5    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 179
    .restart local v5    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_93
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown object encountered in constructed OCTET STRING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    .end local v4    # "i":I
    .end local v5    # "asn1Obj":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :cond_ae
    new-instance v4, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v4

    .line 202
    .end local v2    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_b4
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_bc
    .sparse-switch
        0x4 -> :sswitch_75
        0x8 -> :sswitch_6b
        0x10 -> :sswitch_54
        0x11 -> :sswitch_4b
    .end sparse-switch
.end method

.method blacklist getLimit()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected blacklist readFully([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_8

    .line 127
    return-void

    .line 125
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist readLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public greylist readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 227
    .local v0, "tag":I
    if-gtz v0, :cond_12

    .line 229
    if-eqz v0, :cond_a

    .line 234
    const/4 v1, 0x0

    return-object v1

    .line 231
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_12
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 242
    .local v1, "tagNo":I
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 247
    .local v2, "isConstructed":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v4

    .line 249
    .local v4, "length":I
    if-gez v4, :cond_8b

    .line 251
    if-eqz v2, :cond_83

    .line 256
    new-instance v5, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v5, p0, v6}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 257
    .local v5, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 259
    .local v6, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_42

    .line 261
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v3, v1, v6}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 264
    :cond_42
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_50

    .line 266
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v3, v1, v6}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 270
    :cond_50
    sparse-switch v1, :sswitch_data_9a

    .line 281
    new-instance v3, Ljava/io/IOException;

    const-string v7, "unknown BER object encountered"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :sswitch_5b
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 275
    :sswitch_65
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 279
    :sswitch_6f
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 273
    :sswitch_79
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 253
    .end local v5    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v6    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_83
    new-instance v3, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_8b
    :try_start_8b
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_8f} :catch_90

    return-object v3

    .line 290
    :catch_90
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v6, "corrupted stream detected"

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    nop

    :sswitch_data_9a
    .sparse-switch
        0x4 -> :sswitch_79
        0x8 -> :sswitch_6f
        0x10 -> :sswitch_65
        0x11 -> :sswitch_5b
    .end sparse-switch
.end method

.method blacklist readVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 6
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 209
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    .line 212
    :cond_e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    .local v0, "subStream":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 215
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_18
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v3, v2

    .local v3, "p":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v2, :cond_23

    .line 217
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_18

    .line 219
    :cond_23
    return-object v1
.end method
