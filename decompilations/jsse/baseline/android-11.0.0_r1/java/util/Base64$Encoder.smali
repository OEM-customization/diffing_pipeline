.class public Ljava/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final greylist-max-o CRLF:[B

.field private static final greylist-max-o MIMELINEMAX:I = 0x4c

.field static final greylist-max-o RFC2045:Ljava/util/Base64$Encoder;

.field static final greylist-max-o RFC4648:Ljava/util/Base64$Encoder;

.field static final greylist-max-o RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

.field private static final greylist-max-o toBase64:[C

.field private static final greylist-max-o toBase64URL:[C


# instance fields
.field private final greylist-max-o doPadding:Z

.field private final greylist-max-o isURL:Z

.field private final greylist-max-o linemax:I

.field private final greylist-max-o newline:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 209
    const/16 v0, 0x40

    new-array v1, v0, [C

    fill-array-data v1, :array_36

    sput-object v1, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 222
    new-array v0, v0, [C

    fill-array-data v0, :array_7a

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_be

    sput-object v0, Ljava/util/Base64$Encoder;->CRLF:[B

    .line 233
    new-instance v0, Ljava/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    .line 234
    new-instance v0, Ljava/util/Base64$Encoder;

    invoke-direct {v0, v4, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    .line 235
    new-instance v0, Ljava/util/Base64$Encoder;

    sget-object v2, Ljava/util/Base64$Encoder;->CRLF:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-void

    :array_36
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_7a
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_be
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor greylist-max-o <init>(Z[BIZ)V
    .registers 5
    .param p1, "isURL"    # Z
    .param p2, "newline"    # [B
    .param p3, "linemax"    # I
    .param p4, "doPadding"    # Z

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-boolean p1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    .line 199
    iput-object p2, p0, Ljava/util/Base64$Encoder;->newline:[B

    .line 200
    iput p3, p0, Ljava/util/Base64$Encoder;->linemax:I

    .line 201
    iput-boolean p4, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    .line 202
    return-void
.end method

.method synthetic constructor blacklist <init>(Z[BIZLjava/util/Base64$1;)V
    .registers 6
    .param p1, "x0"    # Z
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Ljava/util/Base64$1;

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method static synthetic blacklist access$200()[C
    .registers 1

    .line 190
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static synthetic blacklist access$300()[C
    .registers 1

    .line 190
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method private greylist-max-o encode0([BII[B)I
    .registers 19
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "end"    # I
    .param p4, "dst"    # [B

    .line 392
    move-object v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v2, :cond_a

    sget-object v2, Ljava/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_c

    :cond_a
    sget-object v2, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 393
    .local v2, "base64":[C
    :goto_c
    move/from16 v3, p2

    .line 394
    .local v3, "sp":I
    sub-int v4, v1, p2

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x3

    .line 395
    .local v4, "slen":I
    add-int v5, p2, v4

    .line 396
    .local v5, "sl":I
    iget v6, v0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v6, :cond_24

    div-int/lit8 v7, v6, 0x4

    mul-int/lit8 v7, v7, 0x3

    if-le v4, v7, :cond_24

    .line 397
    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v4, v6, 0x3

    .line 398
    :cond_24
    const/4 v6, 0x0

    .line 399
    .local v6, "dp":I
    :goto_25
    if-ge v3, v5, :cond_94

    .line 400
    add-int v7, v3, v4

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 401
    .local v7, "sl0":I
    move v8, v3

    .local v8, "sp0":I
    move v9, v6

    .local v9, "dp0":I
    :goto_2f
    if-ge v8, v7, :cond_75

    .line 402
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "sp0":I
    .local v10, "sp0":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "sp0":I
    .local v11, "sp0":I
    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v8, v10

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "sp0":I
    .restart local v10    # "sp0":I
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v8, v11

    .line 405
    .local v8, "bits":I
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "dp0":I
    .local v11, "dp0":I
    ushr-int/lit8 v12, v8, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, p4, v9

    .line 406
    add-int/lit8 v9, v11, 0x1

    .end local v11    # "dp0":I
    .restart local v9    # "dp0":I
    ushr-int/lit8 v12, v8, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, p4, v11

    .line 407
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "dp0":I
    .restart local v11    # "dp0":I
    ushr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, p4, v9

    .line 408
    add-int/lit8 v9, v11, 0x1

    .end local v11    # "dp0":I
    .restart local v9    # "dp0":I
    and-int/lit8 v12, v8, 0x3f

    aget-char v12, v2, v12

    int-to-byte v12, v12

    aput-byte v12, p4, v11

    .line 409
    .end local v8    # "bits":I
    move v8, v10

    goto :goto_2f

    .line 410
    .end local v9    # "dp0":I
    .end local v10    # "sp0":I
    :cond_75
    sub-int v8, v7, v3

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v8, v8, 0x4

    .line 411
    .local v8, "dlen":I
    add-int/2addr v6, v8

    .line 412
    move v3, v7

    .line 413
    iget v9, v0, Ljava/util/Base64$Encoder;->linemax:I

    if-ne v8, v9, :cond_93

    if-ge v3, v1, :cond_93

    .line 414
    iget-object v9, v0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v10, v9

    const/4 v11, 0x0

    :goto_87
    if-ge v11, v10, :cond_93

    aget-byte v12, v9, v11

    .line 415
    .local v12, "b":B
    add-int/lit8 v13, v6, 0x1

    .end local v6    # "dp":I
    .local v13, "dp":I
    aput-byte v12, p4, v6

    .line 414
    .end local v12    # "b":B
    add-int/lit8 v11, v11, 0x1

    move v6, v13

    goto :goto_87

    .line 418
    .end local v7    # "sl0":I
    .end local v8    # "dlen":I
    .end local v13    # "dp":I
    .restart local v6    # "dp":I
    :cond_93
    goto :goto_25

    .line 419
    :cond_94
    if-ge v3, v1, :cond_f2

    .line 420
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "sp":I
    .local v7, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 421
    .local v3, "b0":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "dp":I
    .local v8, "dp":I
    shr-int/lit8 v9, v3, 0x2

    aget-char v9, v2, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v6

    .line 422
    const/16 v6, 0x3d

    if-ne v7, v1, :cond_c6

    .line 423
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .local v9, "dp":I
    shl-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v2, v10

    int-to-byte v10, v10

    aput-byte v10, p4, v8

    .line 424
    iget-boolean v8, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v8, :cond_c3

    .line 425
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    aput-byte v6, p4, v9

    .line 426
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    aput-byte v6, p4, v8

    move v3, v7

    move v6, v9

    goto :goto_f2

    .line 424
    :cond_c3
    move v3, v7

    move v6, v9

    goto :goto_f2

    .line 429
    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    :cond_c6
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "sp":I
    .local v9, "sp":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    .line 430
    .local v7, "b1":I
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "dp":I
    .local v10, "dp":I
    shl-int/lit8 v11, v3, 0x4

    and-int/lit8 v11, v11, 0x3f

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v11, v12

    aget-char v11, v2, v11

    int-to-byte v11, v11

    aput-byte v11, p4, v8

    .line 431
    add-int/lit8 v8, v10, 0x1

    .end local v10    # "dp":I
    .restart local v8    # "dp":I
    shl-int/lit8 v11, v7, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v2, v11

    int-to-byte v11, v11

    aput-byte v11, p4, v10

    .line 432
    iget-boolean v10, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v10, :cond_f0

    .line 433
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "dp":I
    .restart local v10    # "dp":I
    aput-byte v6, p4, v8

    move v3, v9

    move v6, v10

    goto :goto_f2

    .line 432
    .end local v10    # "dp":I
    .restart local v8    # "dp":I
    :cond_f0
    move v6, v8

    move v3, v9

    .line 437
    .end local v7    # "b1":I
    .end local v8    # "dp":I
    .end local v9    # "sp":I
    .local v3, "sp":I
    .restart local v6    # "dp":I
    :cond_f2
    :goto_f2
    return v6
.end method

.method private final greylist-max-o outLength(I)I
    .registers 6
    .param p1, "srclen"    # I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "len":I
    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v1, :cond_c

    .line 240
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .end local v0    # "len":I
    .local v1, "len":I
    goto :goto_1b

    .line 242
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_c
    rem-int/lit8 v1, p1, 0x3

    .line 243
    .local v1, "n":I
    div-int/lit8 v2, p1, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-nez v1, :cond_16

    const/4 v3, 0x0

    goto :goto_18

    :cond_16
    add-int/lit8 v3, v1, 0x1

    :goto_18
    add-int v0, v2, v3

    move v1, v0

    .line 245
    .end local v0    # "len":I
    .local v1, "len":I
    :goto_1b
    iget v0, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v0, :cond_27

    .line 246
    add-int/lit8 v2, v1, -0x1

    div-int/2addr v2, v0

    iget-object v0, p0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v0, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 247
    :cond_27
    return v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api encode([B[B)I
    .registers 6
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 289
    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 290
    .local v0, "len":I
    array-length v1, p2

    if-lt v1, v0, :cond_f

    .line 293
    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1

    .line 291
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 335
    .local v0, "len":I
    new-array v1, v0, [B

    .line 336
    .local v1, "dst":[B
    const/4 v2, 0x0

    .line 337
    .local v2, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 338
    invoke-direct {p0, v3, v4, v5, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 342
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_42

    .line 344
    :cond_33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 345
    .local v3, "src":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 346
    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {p0, v3, v4, v5, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 348
    .end local v3    # "src":[B
    :goto_42
    array-length v3, v1

    if-eq v2, v3, :cond_49

    .line 349
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 350
    :cond_49
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public whitelist core-platform-api test-api encode([B)[B
    .registers 6
    .param p1, "src"    # [B

    .line 261
    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 262
    .local v0, "len":I
    new-array v1, v0, [B

    .line 263
    .local v1, "dst":[B
    array-length v2, p1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 264
    .local v2, "ret":I
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 265
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 266
    :cond_15
    return-object v1
.end method

.method public whitelist core-platform-api test-api encodeToString([B)Ljava/lang/String;
    .registers 6
    .param p1, "src"    # [B

    .line 315
    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    .line 316
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api withoutPadding()Ljava/util/Base64$Encoder;
    .registers 6

    .line 386
    iget-boolean v0, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_5

    .line 387
    return-object p0

    .line 388
    :cond_5
    new-instance v0, Ljava/util/Base64$Encoder;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v3, p0, Ljava/util/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 9
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v6, Ljava/util/Base64$EncOutputStream;

    iget-boolean v0, p0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_c

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_e

    :cond_c
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    :goto_e
    move-object v2, v0

    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v4, p0, Ljava/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v6
.end method
