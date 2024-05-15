.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B

.field protected blacklist padding:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 30
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 53
    return-void

    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    if-ne p4, v0, :cond_28

    .line 319
    if-ne p5, v0, :cond_22

    .line 324
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 325
    .local v2, "b1":B
    aget-byte v0, v0, p3

    .line 327
    .local v0, "b2":B
    or-int v3, v2, v0

    if-ltz v3, :cond_1c

    .line 332
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v3, v0, 0x4

    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 334
    const/4 v1, 0x1

    return v1

    .line 329
    :cond_1c
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    .end local v0    # "b2":B
    .end local v2    # "b1":B
    :cond_22
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_28
    if-ne p5, v0, :cond_4f

    .line 338
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 339
    .restart local v2    # "b1":B
    aget-byte v3, v0, p3

    .line 340
    .local v3, "b2":B
    aget-byte v0, v0, p4

    .line 342
    .local v0, "b3":B
    or-int v4, v2, v3

    or-int/2addr v4, v0

    if-ltz v4, :cond_49

    .line 347
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 348
    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 350
    const/4 v1, 0x2

    return v1

    .line 344
    :cond_49
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 354
    .end local v0    # "b3":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :cond_4f
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v0, p2

    .line 355
    .restart local v2    # "b1":B
    aget-byte v3, v0, p3

    .line 356
    .restart local v3    # "b2":B
    aget-byte v4, v0, p4

    .line 357
    .local v4, "b3":B
    aget-byte v0, v0, p5

    .line 359
    .local v0, "b4":B
    or-int v5, v2, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v0

    if-ltz v5, :cond_77

    .line 364
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 365
    shl-int/lit8 v1, v3, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 366
    shl-int/lit8 v1, v4, 0x6

    or-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 368
    const/4 v1, 0x3

    return v1

    .line 361
    :cond_77
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist ignore(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 124
    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist nextI(Ljava/lang/String;II)I
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 374
    :goto_0
    if-ge p2, p3, :cond_f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 376
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 378
    :cond_f
    return p2
.end method

.method private blacklist nextI([BII)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 218
    :goto_0
    if-ge p2, p3, :cond_e

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 222
    :cond_e
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 21
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 239
    .local v0, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    move v9, v1

    .line 241
    .local v9, "end":I
    :goto_c
    if-lez v9, :cond_1e

    .line 243
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 245
    goto :goto_1e

    .line 248
    :cond_1b
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    .line 252
    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    if-nez v9, :cond_22

    .line 254
    return v1

    .line 257
    :cond_22
    const/4 v2, 0x0

    .line 258
    .local v2, "i":I
    move v3, v9

    move v10, v3

    .line 260
    .local v10, "finish":I
    :goto_25
    if-lez v10, :cond_3b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3b

    .line 262
    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v3

    if-nez v3, :cond_38

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 267
    :cond_38
    add-int/lit8 v10, v10, -0x1

    goto :goto_25

    .line 270
    :cond_3b
    invoke-direct {v6, v7, v1, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    move v11, v0

    move v12, v1

    .line 272
    .end local v0    # "length":I
    .end local v2    # "i":I
    .local v11, "length":I
    .local v12, "i":I
    :goto_41
    if-ge v12, v10, :cond_a2

    .line 274
    iget-object v0, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v12, 0x1

    .end local v12    # "i":I
    .local v1, "i":I
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v0, v0, v2

    .line 276
    .local v0, "b1":B
    invoke-direct {v6, v7, v1, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    .line 278
    iget-object v2, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v2, v1

    .line 280
    .local v1, "b2":B
    invoke-direct {v6, v7, v3, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v2

    .line 282
    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v3, v2

    .line 284
    .local v2, "b3":B
    invoke-direct {v6, v7, v4, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    .line 286
    .end local v4    # "i":I
    .restart local v3    # "i":I
    iget-object v4, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 288
    .local v3, "b4":B
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_9a

    .line 293
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v4, v12

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write(I)V

    .line 294
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v12, v2, 0x2

    or-int/2addr v4, v12

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write(I)V

    .line 295
    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write(I)V

    .line 297
    add-int/lit8 v11, v11, 0x3

    .line 299
    invoke-direct {v6, v7, v5, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v12

    .end local v5    # "i":I
    .restart local v12    # "i":I
    goto :goto_41

    .line 290
    .end local v12    # "i":I
    .restart local v5    # "i":I
    :cond_9a
    new-instance v4, Ljava/io/IOException;

    const-string v12, "invalid characters encountered in base64 data"

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 302
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v5    # "i":I
    .restart local v12    # "i":I
    :cond_a2
    invoke-direct {v6, v7, v12, v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v13

    .line 303
    .local v13, "e0":I
    add-int/lit8 v0, v13, 0x1

    invoke-direct {v6, v7, v0, v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .line 304
    .local v14, "e1":I
    add-int/lit8 v0, v14, 0x1

    invoke-direct {v6, v7, v0, v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v15

    .line 305
    .local v15, "e2":I
    add-int/lit8 v0, v15, 0x1

    invoke-direct {v6, v7, v0, v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    .line 307
    .local v5, "e3":I
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v17, v5

    .end local v5    # "e3":I
    .local v17, "e3":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v11, v0

    .line 309
    return v11
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 23
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p4

    const/4 v0, 0x0

    .line 143
    .local v0, "outLen":I
    add-int v1, v8, p3

    move v10, v1

    .line 145
    .local v10, "end":I
    :goto_c
    if-le v10, v8, :cond_1d

    .line 147
    add-int/lit8 v1, v10, -0x1

    aget-byte v1, v7, v1

    int-to-char v1, v1

    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 149
    goto :goto_1d

    .line 152
    :cond_1a
    add-int/lit8 v10, v10, -0x1

    goto :goto_c

    .line 156
    :cond_1d
    :goto_1d
    if-nez v10, :cond_21

    .line 158
    const/4 v1, 0x0

    return v1

    .line 161
    :cond_21
    const/4 v1, 0x0

    .line 162
    .local v1, "i":I
    move v2, v10

    move v11, v2

    .line 164
    .local v11, "finish":I
    :goto_24
    if-le v11, v8, :cond_39

    const/4 v2, 0x4

    if-eq v1, v2, :cond_39

    .line 166
    add-int/lit8 v2, v11, -0x1

    aget-byte v2, v7, v2

    int-to-char v2, v2

    invoke-direct {v6, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_36

    .line 168
    add-int/lit8 v1, v1, 0x1

    .line 171
    :cond_36
    add-int/lit8 v11, v11, -0x1

    goto :goto_24

    .line 174
    :cond_39
    invoke-direct {v6, v7, v8, v11}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    move v12, v0

    move v13, v1

    .line 176
    .end local v0    # "outLen":I
    .end local v1    # "i":I
    .local v12, "outLen":I
    .local v13, "i":I
    :goto_3f
    if-ge v13, v11, :cond_98

    .line 178
    iget-object v0, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .restart local v1    # "i":I
    aget-byte v2, v7, v13

    aget-byte v0, v0, v2

    .line 180
    .local v0, "b1":B
    invoke-direct {v6, v7, v1, v11}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    .line 182
    iget-object v2, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-byte v1, v7, v1

    aget-byte v1, v2, v1

    .line 184
    .local v1, "b2":B
    invoke-direct {v6, v7, v3, v11}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    .line 186
    .end local v3    # "i":I
    .local v2, "i":I
    iget-object v3, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-byte v2, v7, v2

    aget-byte v2, v3, v2

    .line 188
    .local v2, "b3":B
    invoke-direct {v6, v7, v4, v11}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    .line 190
    .end local v4    # "i":I
    .restart local v3    # "i":I
    iget-object v4, v6, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    aget-byte v3, v7, v3

    aget-byte v3, v4, v3

    .line 192
    .local v3, "b4":B
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_90

    .line 197
    shl-int/lit8 v4, v0, 0x2

    shr-int/lit8 v13, v1, 0x4

    or-int/2addr v4, v13

    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write(I)V

    .line 198
    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v13, v2, 0x2

    or-int/2addr v4, v13

    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write(I)V

    .line 199
    shl-int/lit8 v4, v2, 0x6

    or-int/2addr v4, v3

    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write(I)V

    .line 201
    add-int/lit8 v12, v12, 0x3

    .line 203
    invoke-direct {v6, v7, v5, v11}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v13

    .end local v5    # "i":I
    .restart local v13    # "i":I
    goto :goto_3f

    .line 194
    .end local v13    # "i":I
    .restart local v5    # "i":I
    :cond_90
    new-instance v4, Ljava/io/IOException;

    const-string v13, "invalid characters encountered in base64 data"

    invoke-direct {v4, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v5    # "i":I
    .restart local v13    # "i":I
    :cond_98
    invoke-direct {v6, v7, v13, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .line 207
    .local v14, "e0":I
    add-int/lit8 v0, v14, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v15

    .line 208
    .local v15, "e1":I
    add-int/lit8 v0, v15, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 209
    .local v16, "e2":I
    add-int/lit8 v0, v16, 0x1

    invoke-direct {v6, v7, v0, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v17

    .line 211
    .local v17, "e3":I
    aget-byte v0, v7, v14

    int-to-char v2, v0

    aget-byte v0, v7, v15

    int-to-char v3, v0

    aget-byte v0, v7, v16

    int-to-char v4, v0

    aget-byte v0, v7, v17

    int-to-char v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v12, v0

    .line 213
    return v12
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 14
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    rem-int/lit8 v0, p3, 0x3

    .line 68
    .local v0, "modulus":I
    sub-int v1, p3, v0

    .line 71
    .local v1, "dataLength":I
    move v2, p2

    .local v2, "i":I
    :goto_5
    add-int v3, p2, v1

    if-ge v2, v3, :cond_4c

    .line 73
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 74
    .local v3, "a1":I
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 75
    .local v4, "a2":I
    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 77
    .local v5, "a3":I
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 78
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v7, v3, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 79
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v7, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 80
    iget-object v6, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v7, v5, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 71
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 89
    .end local v2    # "i":I
    .end local v3    # "a1":I
    .end local v4    # "a2":I
    .end local v5    # "a3":I
    :cond_4c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_8a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_53

    goto :goto_b1

    .line 104
    :cond_53
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 105
    .local v3, "d1":I
    add-int v4, p2, v1

    add-int/2addr v4, v2

    aget-byte v2, p1, v4

    and-int/lit16 v2, v2, 0xff

    .line 107
    .local v2, "d2":I
    ushr-int/lit8 v4, v3, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 108
    .local v4, "b1":I
    shl-int/lit8 v5, v3, 0x4

    ushr-int/lit8 v6, v2, 0x4

    or-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x3f

    .line 109
    .local v5, "b2":I
    shl-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0x3f

    .line 111
    .local v6, "b3":I
    iget-object v7, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v7, v7, v4

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget-object v7, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v7, v7, v5

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    .line 113
    iget-object v7, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v7, v7, v6

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    .line 114
    iget-byte v7, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v7}, Ljava/io/OutputStream;->write(I)V

    goto :goto_b1

    .line 94
    .end local v2    # "d2":I
    .end local v3    # "d1":I
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    :cond_8a
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 95
    .local v2, "d1":I
    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 96
    .local v3, "b1":I
    shl-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3f

    .line 98
    .local v4, "b2":I
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v5, v5, v3

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 99
    iget-object v5, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v5, v5, v4

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 100
    iget-byte v5, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 101
    iget-byte v5, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 102
    nop

    .line 118
    .end local v2    # "d1":I
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :goto_b1
    div-int/lit8 v2, v1, 0x3

    const/4 v3, 0x4

    mul-int/2addr v2, v3

    if-nez v0, :cond_b8

    const/4 v3, 0x0

    :cond_b8
    add-int/2addr v2, v3

    return v2
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_c

    .line 41
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 46
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 48
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method
