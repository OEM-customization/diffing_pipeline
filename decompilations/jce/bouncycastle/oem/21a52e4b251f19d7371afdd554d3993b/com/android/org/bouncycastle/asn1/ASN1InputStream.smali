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
.method public constructor greylist core-platform-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 34
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 107
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 108
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .line 89
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 90
    return-void
.end method

.method public constructor greylist core-platform-api <init>([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 48
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>([BZ)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 63
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

    .line 439
    const/16 v0, 0xa

    if-eq p0, v0, :cond_e3

    const/16 v0, 0xc

    if-eq p0, v0, :cond_d9

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_cf

    packed-switch p0, :pswitch_data_ec

    packed-switch p0, :pswitch_data_fc

    .line 482
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
    :pswitch_2e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    .line 452
    :pswitch_38
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    .line 476
    :pswitch_42
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    .line 478
    :pswitch_4c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object v0

    .line 450
    :pswitch_56
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    .line 472
    :pswitch_60
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    .line 454
    :pswitch_6a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    .line 480
    :pswitch_74
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVideotexString;-><init>([B)V

    return-object v0

    .line 468
    :pswitch_7e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    .line 466
    :pswitch_88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    .line 460
    :pswitch_92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    .line 462
    :pswitch_9c
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 458
    :pswitch_a5
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 464
    :pswitch_a8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    .line 442
    :pswitch_b2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 456
    :pswitch_bb
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    .line 446
    :pswitch_c6
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 444
    :cond_cf
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    .line 474
    :cond_d9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    .line 448
    :cond_e3
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_c6
        :pswitch_bb
        :pswitch_b2
        :pswitch_a8
        :pswitch_a5
        :pswitch_9c
    .end packed-switch

    :pswitch_data_fc
    .packed-switch 0x12
        :pswitch_92
        :pswitch_88
        :pswitch_7e
        :pswitch_74
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4c
        :pswitch_42
        :pswitch_38
        :pswitch_2e
    .end packed-switch
.end method

.method private static blacklist getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 9
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 413
    .local v0, "len":I
    new-array v1, v0, [C

    .line 414
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 415
    .local v2, "totalRead":I
    :goto_9
    if-ge v2, v0, :cond_25

    .line 417
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v3

    .line 418
    .local v3, "ch1":I
    if-gez v3, :cond_12

    .line 420
    goto :goto_25

    .line 422
    :cond_12
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v4

    .line 423
    .local v4, "ch2":I
    if-gez v4, :cond_19

    .line 425
    goto :goto_25

    .line 427
    :cond_19
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "totalRead":I
    .local v5, "totalRead":I
    shl-int/lit8 v6, v3, 0x8

    and-int/lit16 v7, v4, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v2

    .line 428
    .end local v3    # "ch1":I
    .end local v4    # "ch2":I
    move v2, v5

    goto :goto_9

    .line 430
    .end local v5    # "totalRead":I
    .restart local v2    # "totalRead":I
    :cond_25
    :goto_25
    return-object v1
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

    .line 389
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    .line 390
    .local v0, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_18

    .line 392
    aget-object v1, p1, v0

    .line 394
    .local v1, "buf":[B
    if-nez v1, :cond_14

    .line 396
    new-array v2, v0, [B

    aput-object v2, p1, v0

    move-object v1, v2

    .line 399
    :cond_14
    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 401
    return-object v1

    .line 405
    .end local v1    # "buf":[B
    :cond_18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static blacklist readLength(Ljava/io/InputStream;I)I
    .registers 8
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 339
    .local v0, "length":I
    if-ltz v0, :cond_5b

    .line 344
    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    .line 346
    const/4 v1, -0x1

    return v1

    .line 349
    :cond_c
    const/16 v1, 0x7f

    if-le v0, v1, :cond_5a

    .line 351
    and-int/lit8 v1, v0, 0x7f

    .line 354
    .local v1, "size":I
    const/4 v2, 0x4

    if-gt v1, v2, :cond_43

    .line 359
    const/4 v0, 0x0

    .line 360
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_2e

    .line 362
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 364
    .local v3, "next":I
    if-ltz v3, :cond_26

    .line 369
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v3

    .line 360
    .end local v3    # "next":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 366
    .restart local v3    # "next":I
    :cond_26
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    .end local v2    # "i":I
    .end local v3    # "next":I
    :cond_2e
    if-ltz v0, :cond_3b

    .line 377
    if-ge v0, p1, :cond_33

    goto :goto_5a

    .line 379
    :cond_33
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - out of bounds length found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    :cond_3b
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - negative length found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_43
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

    .line 383
    .end local v1    # "size":I
    :cond_5a
    :goto_5a
    return v0

    .line 341
    :cond_5b
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

    .line 299
    and-int/lit8 v0, p1, 0x1f

    .line 304
    .local v0, "tagNo":I
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_35

    .line 306
    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 312
    .local v1, "b":I
    and-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_2d

    .line 317
    :goto_f
    if-ltz v1, :cond_1f

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1f

    .line 319
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 320
    shl-int/lit8 v0, v0, 0x7

    .line 321
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_f

    .line 324
    :cond_1f
    if-ltz v1, :cond_25

    .line 329
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_35

    .line 326
    :cond_25
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    .end local v1    # "b":I
    :cond_35
    :goto_35
    return v0
.end method


# virtual methods
.method blacklist buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method blacklist buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 206
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move-object v2, v1

    .local v2, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v1, :cond_10

    .line 208
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 211
    :cond_10
    return-object v0
.end method

.method protected blacklist buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 10
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 149
    .local v0, "isConstructed":Z
    :goto_7
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 151
    .local v1, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_1a

    .line 153
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v2

    .line 156
    :cond_1a
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_28

    .line 158
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 161
    :cond_28
    if-eqz v0, :cond_9e

    .line 164
    const/4 v2, 0x4

    if-eq p2, v2, :cond_7f

    const/16 v2, 0x8

    if-eq p2, v2, :cond_75

    const/16 v2, 0x10

    if-eq p2, v2, :cond_5e

    const/16 v2, 0x11

    if-ne p2, v2, :cond_42

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    return-object v2

    .line 193
    :cond_42
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

    .line 180
    :cond_5e
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_6c

    .line 182
    new-instance v2, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v2

    .line 186
    :cond_6c
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    return-object v2

    .line 191
    :cond_75
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DLExternal;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 170
    :cond_7f
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    .line 171
    .local v2, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 173
    .local v3, "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8a
    array-length v5, v3

    if-eq v4, v5, :cond_98

    .line 175
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v5, v3, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 178
    .end local v4    # "i":I
    :cond_98
    new-instance v4, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v4

    .line 197
    .end local v2    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v3    # "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_9e
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2
.end method

.method blacklist getLimit()I
    .registers 2

    .line 113
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

    .line 126
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_8

    .line 130
    return-void

    .line 128
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist readLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public greylist core-platform-api readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 226
    .local v0, "tag":I
    if-gtz v0, :cond_12

    .line 228
    if-eqz v0, :cond_a

    .line 233
    const/4 v1, 0x0

    return-object v1

    .line 230
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end-of-contents marker"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_12
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    .line 241
    .local v1, "tagNo":I
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 246
    .local v2, "isConstructed":Z
    :goto_1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v4

    .line 248
    .local v4, "length":I
    if-gez v4, :cond_97

    .line 250
    if-eqz v2, :cond_8f

    .line 255
    new-instance v5, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v6, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v5, p0, v6}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 256
    .local v5, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 258
    .local v6, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_42

    .line 260
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v3, v1, v6}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 263
    :cond_42
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_50

    .line 265
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v3, v1, v6}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 269
    :cond_50
    const/4 v3, 0x4

    if-eq v1, v3, :cond_85

    const/16 v3, 0x8

    if-eq v1, v3, :cond_7b

    const/16 v3, 0x10

    if-eq v1, v3, :cond_71

    const/16 v3, 0x11

    if-ne v1, v3, :cond_69

    .line 276
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 280
    :cond_69
    new-instance v3, Ljava/io/IOException;

    const-string v7, "unknown BER object encountered"

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_71
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 278
    :cond_7b
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 272
    :cond_85
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v3, v6}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    return-object v3

    .line 252
    .end local v5    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v6    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_8f
    new-instance v3, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 287
    :cond_97
    :try_start_97
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_97 .. :try_end_9b} :catch_9c

    return-object v3

    .line 289
    :catch_9c
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string v6, "corrupted stream detected"

    invoke-direct {v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
