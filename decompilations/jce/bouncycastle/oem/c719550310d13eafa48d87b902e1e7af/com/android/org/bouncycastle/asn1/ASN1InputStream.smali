.class public Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 5
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 100
    iput-boolean p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "input"    # [B

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 56
    return-void
.end method

.method static createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    packed-switch p0, :pswitch_data_e2

    .line 473
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0

    .line 435
    :pswitch_2d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0

    .line 437
    :pswitch_37
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    return-object v0

    .line 439
    :pswitch_40
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0

    return-object v0

    .line 441
    :pswitch_49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    return-object v0

    .line 443
    :pswitch_53
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object v0

    .line 445
    :pswitch_5d
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object v0

    .line 447
    :pswitch_67
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    return-object v0

    .line 449
    :pswitch_72
    sget-object v0, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    return-object v0

    .line 451
    :pswitch_75
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    return-object v0

    .line 453
    :pswitch_7f
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0

    .line 455
    :pswitch_88
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    .line 457
    :pswitch_92
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object v0

    .line 459
    :pswitch_9c
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object v0

    .line 461
    :pswitch_a6
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object v0

    .line 463
    :pswitch_b0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    return-object v0

    .line 465
    :pswitch_ba
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object v0

    .line 467
    :pswitch_c4
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object v0

    .line 469
    :pswitch_ce
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object v0

    .line 471
    :pswitch_d8
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERVideotexString;-><init>([B)V

    return-object v0

    .line 430
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_37
        :pswitch_67
        :pswitch_24
        :pswitch_88
        :pswitch_72
        :pswitch_7f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_40
        :pswitch_3
        :pswitch_ba
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_75
        :pswitch_92
        :pswitch_9c
        :pswitch_d8
        :pswitch_5d
        :pswitch_b0
        :pswitch_49
        :pswitch_ce
        :pswitch_c4
        :pswitch_53
        :pswitch_a6
        :pswitch_3
        :pswitch_2d
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .registers 9
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 404
    .local v3, "len":I
    new-array v0, v3, [C

    .line 405
    .local v0, "buf":[C
    const/4 v4, 0x0

    .local v4, "totalRead":I
    move v5, v4

    .line 406
    .end local v4    # "totalRead":I
    .local v5, "totalRead":I
    :goto_a
    if-ge v5, v3, :cond_12

    .line 408
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    .line 409
    .local v1, "ch1":I
    if-gez v1, :cond_13

    .line 421
    .end local v1    # "ch1":I
    :cond_12
    return-object v0

    .line 413
    .restart local v1    # "ch1":I
    :cond_13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v2

    .line 414
    .local v2, "ch2":I
    if-ltz v2, :cond_12

    .line 418
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "totalRead":I
    .restart local v4    # "totalRead":I
    shl-int/lit8 v6, v1, 0x8

    and-int/lit16 v7, v2, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v5

    move v5, v4

    .end local v4    # "totalRead":I
    .restart local v5    # "totalRead":I
    goto :goto_a
.end method

.method private static getBuffer(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .registers 6
    .param p0, "defIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v1

    .line 381
    .local v1, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v2

    array-length v3, p1

    if-ge v2, v3, :cond_17

    .line 383
    aget-object v0, p1, v1

    .line 385
    .local v0, "buf":[B
    if-nez v0, :cond_13

    .line 387
    new-array v0, v1, [B

    .end local v0    # "buf":[B
    aput-object v0, p1, v1

    .line 390
    .restart local v0    # "buf":[B
    :cond_13
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 392
    return-object v0

    .line 396
    .end local v0    # "buf":[B
    :cond_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .registers 9
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 330
    .local v1, "length":I
    if-gez v1, :cond_f

    .line 332
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    :cond_f
    const/16 v4, 0x80

    if-ne v1, v4, :cond_15

    .line 337
    const/4 v4, -0x1

    return v4

    .line 340
    :cond_15
    const/16 v4, 0x7f

    if-le v1, v4, :cond_68

    .line 342
    and-int/lit8 v3, v1, 0x7f

    .line 345
    .local v3, "size":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_38

    .line 347
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_38
    const/4 v1, 0x0

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    if-ge v0, v3, :cond_52

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 355
    .local v2, "next":I
    if-gez v2, :cond_4b

    .line 357
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :cond_4b
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 363
    .end local v2    # "next":I
    :cond_52
    if-gez v1, :cond_5d

    .line 365
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    :cond_5d
    if-lt v1, p1, :cond_68

    .line 370
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 374
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_68
    return v1
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    and-int/lit8 v1, p1, 0x1f

    .line 295
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_36

    .line 297
    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_18

    .line 305
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_18
    :goto_18
    if-ltz v0, :cond_28

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_28

    .line 310
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 311
    shl-int/lit8 v1, v1, 0x7

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_18

    .line 315
    :cond_28
    if-gez v0, :cond_33

    .line 317
    new-instance v2, Ljava/io/EOFException;

    const-string/jumbo v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_33
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 323
    .end local v0    # "b":I
    :cond_36
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .param p1, "dIn"    # Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    .local v1, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_f

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 204
    :cond_f
    return-object v1
.end method

.method protected buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 12
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_18

    const/4 v2, 0x1

    .line 142
    .local v2, "isConstructed":Z
    :goto_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 144
    .local v0, "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_1a

    .line 146
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v2, p2, v6}, Lcom/android/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    return-object v5

    .line 140
    .end local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v2    # "isConstructed":Z
    :cond_18
    const/4 v2, 0x0

    .restart local v2    # "isConstructed":Z
    goto :goto_5

    .line 149
    .restart local v0    # "defIn":Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :cond_1a
    and-int/lit16 v5, p1, 0x80

    if-eqz v5, :cond_28

    .line 151
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v5, v0}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v2, p2}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    return-object v5

    .line 154
    :cond_28
    if-eqz v2, :cond_97

    .line 157
    sparse-switch p2, :sswitch_data_9e

    .line 186
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :sswitch_4e
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 164
    .local v4, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    new-array v3, v5, [Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .line 166
    .local v3, "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_59
    array-length v5, v3

    if-eq v1, v5, :cond_67

    .line 168
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    aput-object v5, v3, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 171
    :cond_67
    new-instance v5, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    return-object v5

    .line 173
    .end local v1    # "i":I
    .end local v3    # "strings":[Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_6d
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v5, :cond_7b

    .line 175
    new-instance v5, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    return-object v5

    .line 179
    :cond_7b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    return-object v5

    .line 182
    :sswitch_84
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    return-object v5

    .line 184
    :sswitch_8d
    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v5

    .line 190
    :cond_97
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    return-object v5

    .line 157
    :sswitch_data_9e
    .sparse-switch
        0x4 -> :sswitch_4e
        0x8 -> :sswitch_8d
        0x10 -> :sswitch_6d
        0x11 -> :sswitch_84
    .end sparse-switch
.end method

.method getLimit()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_10

    .line 121
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_10
    return-void
.end method

.method protected readLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 217
    .local v5, "tag":I
    if-gtz v5, :cond_13

    .line 219
    if-nez v5, :cond_11

    .line 221
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 224
    :cond_11
    const/4 v7, 0x0

    return-object v7

    .line 230
    :cond_13
    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 232
    .local v6, "tagNo":I
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_2d

    const/4 v2, 0x1

    .line 237
    .local v2, "isConstructed":Z
    :goto_1c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    .line 239
    .local v3, "length":I
    if-gez v3, :cond_8e

    .line 241
    if-nez v2, :cond_2f

    .line 243
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "indefinite-length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "isConstructed":Z
    goto :goto_1c

    .line 246
    .restart local v3    # "length":I
    :cond_2f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v7}, Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 247
    .local v1, "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v7}, Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 249
    .local v4, "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_4b

    .line 251
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 254
    :cond_4b
    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_5a

    .line 256
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v6, v4}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 260
    :cond_5a
    sparse-switch v6, :sswitch_data_9e

    .line 271
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :sswitch_66
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 265
    :sswitch_70
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 267
    :sswitch_7a
    new-instance v7, Lcom/android/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 269
    :sswitch_84
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    return-object v7

    .line 278
    .end local v1    # "indIn":Lcom/android/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lcom/android/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_8e
    :try_start_8e
    invoke-virtual {p0, v5, v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_91} :catch_93

    move-result-object v7

    return-object v7

    .line 281
    :catch_93
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 260
    nop

    :sswitch_data_9e
    .sparse-switch
        0x4 -> :sswitch_66
        0x8 -> :sswitch_84
        0x10 -> :sswitch_70
        0x11 -> :sswitch_7a
    .end sparse-switch
.end method
