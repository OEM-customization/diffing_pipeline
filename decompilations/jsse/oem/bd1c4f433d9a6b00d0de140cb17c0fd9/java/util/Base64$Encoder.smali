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
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Ljava/util/Base64$Encoder;

.field static final RFC4648:Ljava/util/Base64$Encoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static synthetic -get0()[C
    .registers 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static synthetic -get1()[C
    .registers 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x40

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 209
    new-array v0, v2, [C

    fill-array-data v0, :array_36

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 222
    new-array v0, v2, [C

    fill-array-data v0, :array_7a

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_be

    sput-object v0, Ljava/util/Base64$Encoder;->CRLF:[B

    .line 233
    new-instance v0, Ljava/util/Base64$Encoder;

    invoke-direct {v0, v4, v5, v1, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    .line 234
    new-instance v0, Ljava/util/Base64$Encoder;

    invoke-direct {v0, v3, v5, v1, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    .line 235
    new-instance v0, Ljava/util/Base64$Encoder;

    sget-object v1, Ljava/util/Base64$Encoder;->CRLF:[B

    const/16 v2, 0x4c

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    .line 190
    return-void

    .line 209
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

    .line 222
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

    .line 231
    :array_be
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .registers 5
    .param p1, "isURL"    # Z
    .param p2, "newline"    # [B
    .param p3, "linemax"    # I
    .param p4, "doPadding"    # Z

    .prologue
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

.method synthetic constructor <init>(Z[BIZLjava/util/Base64$Encoder;)V
    .registers 6
    .param p1, "isURL"    # Z
    .param p2, "newline"    # [B
    .param p3, "linemax"    # I
    .param p4, "doPadding"    # Z
    .param p5, "-this4"    # Ljava/util/Base64$Encoder;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method private encode0([BII[B)I
    .registers 27
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "end"    # I
    .param p4, "dst"    # [B

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->isURL:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b1

    sget-object v5, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 393
    .local v5, "base64":[C
    :goto_a
    move/from16 v15, p2

    .line 394
    .local v15, "sp":I
    sub-int v19, p3, p2

    div-int/lit8 v19, v19, 0x3

    mul-int/lit8 v14, v19, 0x3

    .line 395
    .local v14, "slen":I
    add-int v12, p2, v14

    .line 396
    .local v12, "sl":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    if-lez v19, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    if-le v14, v0, :cond_34

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    mul-int/lit8 v14, v19, 0x3

    .line 398
    :cond_34
    const/4 v8, 0x0

    .local v8, "dp":I
    move v9, v8

    .end local v8    # "dp":I
    .local v9, "dp":I
    move/from16 v16, v15

    .line 399
    .end local v15    # "sp":I
    .local v16, "sp":I
    :goto_38
    move/from16 v0, v16

    if-ge v0, v12, :cond_f0

    .line 400
    add-int v19, v16, v14

    move/from16 v0, v19

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 401
    .local v13, "sl0":I
    move/from16 v17, v16

    .local v17, "sp0":I
    move v10, v9

    .local v10, "dp0":I
    move v11, v10

    .end local v10    # "dp0":I
    .local v11, "dp0":I
    move/from16 v18, v17

    .end local v17    # "sp0":I
    .local v18, "sp0":I
    :goto_4a
    move/from16 v0, v18

    if-ge v0, v13, :cond_b5

    .line 402
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "sp0":I
    .restart local v17    # "sp0":I
    aget-byte v19, p1, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    .line 403
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "sp0":I
    .restart local v18    # "sp0":I
    aget-byte v20, p1, v17

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    .line 402
    or-int v19, v19, v20

    .line 404
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "sp0":I
    .restart local v17    # "sp0":I
    aget-byte v20, p1, v18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 402
    or-int v6, v19, v20

    .line 405
    .local v6, "bits":I
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "dp0":I
    .restart local v10    # "dp0":I
    ushr-int/lit8 v19, v6, 0x12

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v11

    .line 406
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "dp0":I
    .restart local v11    # "dp0":I
    ushr-int/lit8 v19, v6, 0xc

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v10

    .line 407
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "dp0":I
    .restart local v10    # "dp0":I
    ushr-int/lit8 v19, v6, 0x6

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v11

    .line 408
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "dp0":I
    .restart local v11    # "dp0":I
    and-int/lit8 v19, v6, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v10

    move/from16 v18, v17

    .end local v17    # "sp0":I
    .restart local v18    # "sp0":I
    goto :goto_4a

    .line 392
    .end local v5    # "base64":[C
    .end local v6    # "bits":I
    .end local v9    # "dp":I
    .end local v11    # "dp0":I
    .end local v12    # "sl":I
    .end local v13    # "sl0":I
    .end local v14    # "slen":I
    .end local v16    # "sp":I
    .end local v18    # "sp0":I
    :cond_b1
    sget-object v5, Ljava/util/Base64$Encoder;->toBase64:[C

    .restart local v5    # "base64":[C
    goto/16 :goto_a

    .line 410
    .restart local v9    # "dp":I
    .restart local v11    # "dp0":I
    .restart local v12    # "sl":I
    .restart local v13    # "sl0":I
    .restart local v14    # "slen":I
    .restart local v16    # "sp":I
    .restart local v18    # "sp0":I
    :cond_b5
    sub-int v19, v13, v16

    div-int/lit8 v19, v19, 0x3

    mul-int/lit8 v7, v19, 0x4

    .line 411
    .local v7, "dlen":I
    add-int v8, v9, v7

    .line 412
    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    move v15, v13

    .line 413
    .end local v16    # "sp":I
    .restart local v15    # "sp":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Base64$Encoder;->linemax:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_eb

    move/from16 v0, p3

    if-ge v13, v0, :cond_eb

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Base64$Encoder;->newline:[B

    move-object/from16 v20, v0

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move v9, v8

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    :goto_da
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_ea

    aget-byte v2, v20, v19

    .line 415
    .local v2, "b":B
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    aput-byte v2, p4, v9

    .line 414
    add-int/lit8 v19, v19, 0x1

    move v9, v8

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    goto :goto_da

    .end local v2    # "b":B
    :cond_ea
    move v8, v9

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    :cond_eb
    move v9, v8

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    move/from16 v16, v15

    .end local v15    # "sp":I
    .restart local v16    # "sp":I
    goto/16 :goto_38

    .line 419
    .end local v7    # "dlen":I
    .end local v11    # "dp0":I
    .end local v13    # "sl0":I
    .end local v18    # "sp0":I
    :cond_f0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_175

    .line 420
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "sp":I
    .restart local v15    # "sp":I
    aget-byte v19, p1, v16

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .line 421
    .local v3, "b0":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    shr-int/lit8 v19, v3, 0x2

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v9

    .line 422
    move/from16 v0, p3

    if-ne v15, v0, :cond_134

    .line 423
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    shl-int/lit8 v19, v3, 0x4

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v8

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_173

    .line 425
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    const/16 v19, 0x3d

    aput-byte v19, p4, v9

    .line 426
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    const/16 v19, 0x3d

    aput-byte v19, p4, v8

    move v8, v9

    .line 437
    .end local v3    # "b0":I
    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    :goto_133
    return v8

    .line 429
    .restart local v3    # "b0":I
    :cond_134
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "sp":I
    .restart local v16    # "sp":I
    aget-byte v19, p1, v15

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 430
    .local v4, "b1":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    shl-int/lit8 v19, v3, 0x4

    and-int/lit8 v19, v19, 0x3f

    shr-int/lit8 v20, v4, 0x4

    or-int v19, v19, v20

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v8

    .line 431
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    shl-int/lit8 v19, v4, 0x2

    and-int/lit8 v19, v19, 0x3f

    aget-char v19, v5, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, p4, v9

    .line 432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/Base64$Encoder;->doPadding:Z

    move/from16 v19, v0

    if-eqz v19, :cond_170

    .line 433
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    const/16 v19, 0x3d

    aput-byte v19, p4, v8

    move v8, v9

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    move/from16 v15, v16

    .end local v16    # "sp":I
    .restart local v15    # "sp":I
    goto :goto_133

    .end local v15    # "sp":I
    .restart local v16    # "sp":I
    :cond_170
    move/from16 v15, v16

    .end local v16    # "sp":I
    .restart local v15    # "sp":I
    goto :goto_133

    .end local v4    # "b1":I
    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    :cond_173
    move v8, v9

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    goto :goto_133

    .end local v3    # "b0":I
    .end local v8    # "dp":I
    .end local v15    # "sp":I
    .restart local v9    # "dp":I
    .restart local v16    # "sp":I
    :cond_175
    move v8, v9

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    move/from16 v15, v16

    .end local v16    # "sp":I
    .restart local v15    # "sp":I
    goto :goto_133
.end method

.method private final outLength(I)I
    .registers 6
    .param p1, "srclen"    # I

    .prologue
    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "len":I
    iget-boolean v3, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v3, :cond_1b

    .line 240
    add-int/lit8 v2, p1, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v0, v2, 0x4

    .line 245
    :goto_c
    iget v2, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v2, :cond_1a

    .line 246
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Ljava/util/Base64$Encoder;->linemax:I

    div-int/2addr v2, v3

    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 247
    :cond_1a
    return v0

    .line 242
    :cond_1b
    rem-int/lit8 v1, p1, 0x3

    .line 243
    .local v1, "n":I
    div-int/lit8 v3, p1, 0x3

    mul-int/lit8 v3, v3, 0x4

    if-nez v1, :cond_26

    :goto_23
    add-int v0, v3, v2

    goto :goto_c

    :cond_26
    add-int/lit8 v2, v1, 0x1

    goto :goto_23
.end method


# virtual methods
.method public encode([B[B)I
    .registers 6
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .prologue
    .line 289
    array-length v1, p1

    invoke-direct {p0, v1}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 290
    .local v0, "len":I
    array-length v1, p2

    if-ge v1, v0, :cond_11

    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 292
    const-string/jumbo v2, "Output byte array is too small for encoding all input bytes"

    .line 291
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_11
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v1

    .line 335
    .local v1, "len":I
    new-array v0, v1, [B

    .line 336
    .local v0, "dst":[B
    const/4 v2, 0x0

    .line 337
    .local v2, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int/2addr v6, v7

    .line 338
    invoke-direct {p0, v4, v5, v6, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 342
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    :goto_32
    array-length v4, v0

    if-eq v2, v4, :cond_39

    .line 349
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 350
    :cond_39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    return-object v4

    .line 344
    :cond_3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v3, v4, [B

    .line 345
    .local v3, "src":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 346
    array-length v4, v3

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    goto :goto_32
.end method

.method public encode([B)[B
    .registers 7
    .param p1, "src"    # [B

    .prologue
    .line 261
    array-length v3, p1

    invoke-direct {p0, v3}, Ljava/util/Base64$Encoder;->outLength(I)I

    move-result v1

    .line 262
    .local v1, "len":I
    new-array v0, v1, [B

    .line 263
    .local v0, "dst":[B
    array-length v3, p1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v3, v0}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 264
    .local v2, "ret":I
    array-length v3, v0

    if-eq v2, v3, :cond_15

    .line 265
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 266
    :cond_15
    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 6
    .param p1, "src"    # [B

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    .line 316
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-direct {v1, v0, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public withoutPadding()Ljava/util/Base64$Encoder;
    .registers 6

    .prologue
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

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 8
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Ljava/util/Base64$EncOutputStream;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_16

    sget-object v2, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 370
    :goto_b
    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v4, p0, Ljava/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    move-object v1, p1

    .line 369
    invoke-direct/range {v0 .. v5}, Ljava/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v0

    :cond_16
    sget-object v2, Ljava/util/Base64$Encoder;->toBase64:[C

    goto :goto_b
.end method
