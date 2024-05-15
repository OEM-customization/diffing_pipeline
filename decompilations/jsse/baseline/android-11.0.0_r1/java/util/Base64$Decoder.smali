.class public Ljava/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final greylist-max-o RFC2045:Ljava/util/Base64$Decoder;

.field static final greylist-max-o RFC4648:Ljava/util/Base64$Decoder;

.field static final greylist-max-o RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

.field private static final greylist-max-o fromBase64:[I

.field private static final greylist-max-o fromBase64URL:[I


# instance fields
.field private final greylist-max-o isMIME:Z

.field private final greylist-max-o isURL:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 485
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 487
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 488
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    # getter for: Ljava/util/Base64$Encoder;->toBase64:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$200()[C

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1f

    .line 489
    sget-object v3, Ljava/util/Base64$Decoder;->fromBase64:[I

    # getter for: Ljava/util/Base64$Encoder;->toBase64:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$200()[C

    move-result-object v4

    aget-char v4, v4, v1

    aput v1, v3, v4

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 490
    .end local v1    # "i":I
    :cond_1f
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    const/16 v3, 0x3d

    const/4 v4, -0x2

    aput v4, v1, v3

    .line 497
    new-array v0, v0, [I

    sput-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 500
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    # getter for: Ljava/util/Base64$Encoder;->toBase64URL:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$300()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_42

    .line 502
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    # getter for: Ljava/util/Base64$Encoder;->toBase64URL:[C
    invoke-static {}, Ljava/util/Base64$Encoder;->access$300()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 503
    .end local v0    # "i":I
    :cond_42
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v0, v3

    .line 506
    new-instance v0, Ljava/util/Base64$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    .line 507
    new-instance v0, Ljava/util/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    .line 508
    new-instance v0, Ljava/util/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    return-void
.end method

.method private constructor greylist-max-o <init>(ZZ)V
    .registers 3
    .param p1, "isURL"    # Z
    .param p2, "isMIME"    # Z

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-boolean p1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    .line 474
    iput-boolean p2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    .line 475
    return-void
.end method

.method static synthetic blacklist access$000()[I
    .registers 1

    .line 467
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method private greylist-max-o decode0([BII[B)I
    .registers 14
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B

    .line 689
    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 690
    .local v0, "base64":[I
    :goto_9
    const/4 v1, 0x0

    .line 691
    .local v1, "dp":I
    const/4 v2, 0x0

    .line 692
    .local v2, "bits":I
    const/16 v3, 0x12

    .line 693
    .local v3, "shiftto":I
    :goto_d
    const/4 v4, 0x6

    if-ge p2, p3, :cond_84

    .line 694
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "sp":I
    .local v5, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 695
    .local p2, "b":I
    aget v6, v0, p2

    move p2, v6

    if-gez v6, :cond_63

    .line 696
    const/4 v6, -0x2

    if-ne p2, v6, :cond_3c

    .line 702
    if-ne v3, v4, :cond_2e

    if-eq v5, p3, :cond_34

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "sp":I
    .local v6, "sp":I
    aget-byte v5, p1, v5

    const/16 v7, 0x3d

    if-ne v5, v7, :cond_2c

    move v5, v6

    goto :goto_2e

    :cond_2c
    move v5, v6

    goto :goto_34

    .end local v6    # "sp":I
    .restart local v5    # "sp":I
    :cond_2e
    :goto_2e
    const/16 v6, 0x12

    if-eq v3, v6, :cond_34

    move p2, v5

    goto :goto_84

    .line 704
    :cond_34
    :goto_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    :cond_3c
    iget-boolean v4, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v4, :cond_42

    .line 710
    move p2, v5

    goto :goto_d

    .line 712
    :cond_42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal base64 character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, -0x1

    aget-byte v7, p1, v7

    .line 714
    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_63
    shl-int v4, p2, v3

    or-int/2addr v2, v4

    .line 717
    add-int/lit8 v3, v3, -0x6

    .line 718
    if-gez v3, :cond_82

    .line 719
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .local v4, "dp":I
    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, p4, v1

    .line 720
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "dp":I
    .restart local v1    # "dp":I
    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v4

    .line 721
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v6, v2

    aput-byte v6, p4, v1

    .line 722
    const/16 v1, 0x12

    .line 723
    .end local v3    # "shiftto":I
    .local v1, "shiftto":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v4

    .line 725
    .end local v4    # "dp":I
    .end local p2    # "b":I
    .local v1, "dp":I
    .restart local v3    # "shiftto":I
    :cond_82
    move p2, v5

    goto :goto_d

    .line 727
    .end local v5    # "sp":I
    .local p2, "sp":I
    :cond_84
    :goto_84
    if-ne v3, v4, :cond_8f

    .line 728
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    move v1, v4

    goto :goto_a4

    .line 729
    .end local v4    # "dp":I
    .restart local v1    # "dp":I
    :cond_8f
    if-nez v3, :cond_a0

    .line 730
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 731
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "dp":I
    .restart local v1    # "dp":I
    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    goto :goto_a4

    .line 732
    :cond_a0
    const/16 v4, 0xc

    if-eq v3, v4, :cond_cd

    .line 739
    :goto_a4
    if-ge p2, p3, :cond_cc

    .line 740
    iget-boolean v4, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v4, :cond_b5

    add-int/lit8 v4, p2, 0x1

    .end local p2    # "sp":I
    .local v4, "sp":I
    aget-byte p2, p1, p2

    aget p2, v0, p2

    if-gez p2, :cond_b4

    .line 741
    move p2, v4

    goto :goto_a4

    .line 740
    :cond_b4
    move p2, v4

    .line 742
    .end local v4    # "sp":I
    .restart local p2    # "sp":I
    :cond_b5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input byte array has incorrect ending byte at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 745
    :cond_cc
    return v1

    .line 734
    :cond_cd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Last unit does not have enough valid bits"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private greylist-max-o outLength([BII)I
    .registers 12
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I

    .line 651
    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 652
    .local v0, "base64":[I
    :goto_9
    const/4 v1, 0x0

    .line 653
    .local v1, "paddings":I
    sub-int v2, p3, p2

    .line 654
    .local v2, "len":I
    const/4 v3, 0x0

    if-nez v2, :cond_10

    .line 655
    return v3

    .line 656
    :cond_10
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_25

    .line 657
    iget-boolean v5, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v5, :cond_1d

    aget v5, v0, v3

    if-ne v5, v4, :cond_1d

    .line 658
    return v3

    .line 659
    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 662
    :cond_25
    iget-boolean v3, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    const/16 v5, 0x3d

    if-eqz v3, :cond_48

    .line 665
    const/4 v3, 0x0

    .line 666
    .local v3, "n":I
    :goto_2c
    if-ge p2, p3, :cond_46

    .line 667
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "sp":I
    .local v6, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 668
    .local p2, "b":I
    if-ne p2, v5, :cond_3d

    .line 669
    sub-int v4, p3, v6

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    .line 670
    move p2, v6

    goto :goto_46

    .line 672
    :cond_3d
    aget v7, v0, p2

    move p2, v7

    if-ne v7, v4, :cond_44

    .line 673
    add-int/lit8 v3, v3, 0x1

    .line 674
    .end local p2    # "b":I
    :cond_44
    move p2, v6

    goto :goto_2c

    .line 675
    .end local v6    # "sp":I
    .local p2, "sp":I
    :cond_46
    :goto_46
    sub-int/2addr v2, v3

    .line 676
    .end local v3    # "n":I
    goto :goto_58

    .line 677
    :cond_48
    add-int/lit8 v3, p3, -0x1

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    .line 678
    add-int/lit8 v1, v1, 0x1

    .line 679
    add-int/lit8 v3, p3, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_58

    .line 680
    add-int/lit8 v1, v1, 0x1

    .line 683
    :cond_58
    :goto_58
    if-nez v1, :cond_62

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_62

    .line 684
    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v1, v3, 0x4

    .line 685
    :cond_62
    add-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    return v3
.end method


# virtual methods
.method public whitelist core-platform-api test-api decode([B[B)I
    .registers 6
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 578
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    .line 579
    .local v0, "len":I
    array-length v2, p2

    if-lt v2, v0, :cond_f

    .line 582
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1

    .line 580
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 607
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 611
    .local v0, "pos0":I
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 613
    .local v1, "src":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 614
    .local v2, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    .line 615
    .local v3, "sl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_33

    .line 617
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 618
    .restart local v1    # "src":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 619
    const/4 v2, 0x0

    .line 620
    .restart local v2    # "sp":I
    array-length v3, v1

    .line 622
    .restart local v3    # "sl":I
    :goto_33
    invoke-direct {p0, v1, v2, v3}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v4

    new-array v4, v4, [B

    .line 623
    .local v4, "dst":[B
    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_42} :catch_43

    return-object v5

    .line 624
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    .end local v4    # "dst":[B
    :catch_43
    move-exception v1

    .line 625
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 626
    throw v1
.end method

.method public whitelist core-platform-api test-api decode(Ljava/lang/String;)[B
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .line 549
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api decode([B)[B
    .registers 5
    .param p1, "src"    # [B

    .line 525
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v0, v0, [B

    .line 526
    .local v0, "dst":[B
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    .line 527
    .local v1, "ret":I
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 528
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 530
    :cond_14
    return-object v0
.end method

.method public whitelist core-platform-api test-api wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v0, Ljava/util/Base64$DecInputStream;

    iget-boolean v1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_e

    :cond_c
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    :goto_e
    iget-boolean v2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Ljava/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method
