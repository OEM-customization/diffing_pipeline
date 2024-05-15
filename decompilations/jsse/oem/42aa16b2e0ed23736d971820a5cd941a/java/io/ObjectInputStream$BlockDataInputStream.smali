.class Ljava/io/ObjectInputStream$BlockDataInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDataInputStream"
.end annotation


# static fields
.field private static final greylist-max-o CHAR_BUF_SIZE:I = 0x100

.field private static final greylist-max-o HEADER_BLOCKED:I = -0x2

.field private static final greylist-max-o MAX_BLOCK_SIZE:I = 0x400

.field private static final greylist-max-o MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private greylist-max-o blkmode:Z

.field private final greylist-max-o buf:[B

.field private final greylist-max-o cbuf:[C

.field private final greylist-max-o din:Ljava/io/DataInputStream;

.field private greylist-max-o end:I

.field private final greylist-max-o hbuf:[B

.field private final greylist-max-o in:Ljava/io/ObjectInputStream$PeekInputStream;

.field private greylist-max-o pos:I

.field final synthetic blacklist this$0:Ljava/io/ObjectInputStream;

.field private greylist-max-o unread:I


# direct methods
.method constructor blacklist <init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V
    .registers 4
    .param p2, "in"    # Ljava/io/InputStream;

    .line 2553
    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2527
    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    .line 2529
    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    .line 2531
    const/16 p1, 0x100

    new-array p1, p1, [C

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    .line 2534
    const/4 p1, 0x0

    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2538
    iput p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2540
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2542
    iput p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2554
    new-instance p1, Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-direct {p1, p2}, Ljava/io/ObjectInputStream$PeekInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    .line 2555
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    .line 2556
    return-void
.end method

.method private greylist-max-o readBlockHeader(Z)I
    .registers 9
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2610
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    # getter for: Ljava/io/ObjectInputStream;->defaultDataEnd:Z
    invoke-static {v0}, Ljava/io/ObjectInputStream;->access$500(Ljava/io/ObjectInputStream;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 2617
    return v1

    .line 2621
    :cond_a
    :goto_a
    if-eqz p1, :cond_10

    const v0, 0x7fffffff

    goto :goto_16

    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    .line 2622
    .local v0, "avail":I
    :goto_16
    const/4 v2, -0x2

    if-nez v0, :cond_1a

    .line 2623
    return v2

    .line 2626
    :cond_1a
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v3

    .line 2627
    .local v3, "tc":I
    const/16 v4, 0x77

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v4, :cond_85

    const/16 v4, 0x79

    if-eq v3, v4, :cond_79

    const/16 v4, 0x7a

    if-eq v3, v4, :cond_4e

    .line 2660
    if-ltz v3, :cond_4d

    const/16 v2, 0x70

    if-lt v3, v2, :cond_39

    const/16 v2, 0x7e

    if-gt v3, v2, :cond_39

    goto :goto_4d

    .line 2661
    :cond_39
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "invalid type code: %02X"

    new-array v4, v5, [Ljava/lang/Object;

    .line 2663
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 2662
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "canBlock":Z
    throw v1

    .line 2665
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "canBlock":Z
    :cond_4d
    :goto_4d
    return v1

    .line 2636
    :cond_4e
    const/4 v1, 0x5

    if-ge v0, v1, :cond_52

    .line 2637
    return v2

    .line 2639
    :cond_52
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-virtual {v2, v4, v6, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2640
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-static {v1, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v1

    .line 2641
    .local v1, "len":I
    if-ltz v1, :cond_62

    .line 2646
    return v1

    .line 2642
    :cond_62
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal block data header length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "canBlock":Z
    throw v2

    .line 2655
    .end local v1    # "len":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "canBlock":Z
    :cond_79
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    .line 2656
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    # invokes: Ljava/io/ObjectInputStream;->handleReset()V
    invoke-static {v2}, Ljava/io/ObjectInputStream;->access$600(Ljava/io/ObjectInputStream;)V

    .line 2657
    nop

    .line 2667
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    goto :goto_a

    .line 2629
    .restart local v0    # "avail":I
    .restart local v3    # "tc":I
    :cond_85
    const/4 v1, 0x2

    if-ge v0, v1, :cond_89

    .line 2630
    return v2

    .line 2632
    :cond_89
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    invoke-virtual {v2, v4, v6, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2633
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    aget-byte v1, v1, v5
    :try_end_94
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_94} :catch_97

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 2668
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :catch_97
    move-exception v0

    .line 2669
    .local v0, "ex":Ljava/io/EOFException;
    new-instance v1, Ljava/io/StreamCorruptedException;

    const-string v2, "unexpected EOF while reading block data header"

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o readUTFBody(J)Ljava/lang/String;
    .registers 9
    .param p1, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3198
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 3199
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3202
    :cond_e
    :goto_e
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-lez v1, :cond_4e

    .line 3203
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v3

    .line 3204
    .local v1, "avail":I
    const/4 v4, 0x3

    if-ge v1, v4, :cond_48

    int-to-long v4, v1

    cmp-long v4, v4, p1

    if-nez v4, :cond_22

    goto :goto_48

    .line 3207
    :cond_22
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v4, :cond_2d

    .line 3209
    invoke-direct {p0, v0, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFChar(Ljava/lang/StringBuilder;J)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    goto :goto_4d

    .line 3212
    :cond_2d
    if-lez v1, :cond_34

    .line 3213
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v4, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3215
    :cond_34
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3216
    const-wide/16 v3, 0x400

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3217
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    sub-int/2addr v3, v1

    invoke-virtual {v4, v5, v1, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_4d

    .line 3205
    :cond_48
    :goto_48
    invoke-direct {p0, v0, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 3220
    .end local v1    # "avail":I
    :goto_4d
    goto :goto_e

    .line 3222
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o readUTFChar(Ljava/lang/StringBuilder;J)I
    .registers 11
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3312
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 3313
    .local v0, "b1":I
    shr-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x2

    const/16 v4, 0x80

    packed-switch v1, :pswitch_data_80

    .line 3356
    :pswitch_f
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3339
    :pswitch_15
    const-wide/16 v5, 0x3

    cmp-long v1, p2, v5

    if-gez v1, :cond_28

    .line 3340
    cmp-long v1, p2, v2

    if-nez v1, :cond_22

    .line 3341
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 3343
    :cond_22
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3345
    :cond_28
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3346
    .local v1, "b2":I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v2

    .line 3347
    .local v2, "b3":I
    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v4, :cond_4c

    and-int/lit16 v3, v2, 0xc0

    if-ne v3, v4, :cond_4c

    .line 3350
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3f

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3353
    const/4 v3, 0x3

    return v3

    .line 3348
    :cond_4c
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3327
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    :pswitch_52
    cmp-long v1, p2, v2

    if-ltz v1, :cond_73

    .line 3330
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3331
    .restart local v1    # "b2":I
    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v4, :cond_6d

    .line 3334
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3336
    const/4 v2, 0x2

    return v2

    .line 3332
    :cond_6d
    new-instance v2, Ljava/io/UTFDataFormatException;

    invoke-direct {v2}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v2

    .line 3328
    .end local v1    # "b2":I
    :cond_73
    new-instance v1, Ljava/io/UTFDataFormatException;

    invoke-direct {v1}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v1

    .line 3322
    :pswitch_79
    int-to-char v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3323
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_52
        :pswitch_52
        :pswitch_15
    .end packed-switch
.end method

.method private greylist-max-o readUTFSpan(Ljava/lang/StringBuilder;J)J
    .registers 20
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3234
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const/4 v0, 0x0

    .line 3235
    .local v0, "cpos":I
    iget v4, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3236
    .local v4, "start":I
    iget v5, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v6, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v5, v6

    const/16 v6, 0x100

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3238
    .local v5, "avail":I
    iget v6, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    int-to-long v7, v5

    cmp-long v7, v2, v7

    if-lez v7, :cond_1c

    add-int/lit8 v7, v5, -0x2

    goto :goto_1d

    :cond_1c
    long-to-int v7, v2

    :goto_1d
    add-int/2addr v6, v7

    .line 3239
    .local v6, "stop":I
    const/4 v7, 0x0

    move v8, v0

    .line 3242
    .end local v0    # "cpos":I
    .local v7, "outOfBounds":Z
    .local v8, "cpos":I
    :goto_20
    const/4 v9, 0x0

    :try_start_21
    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    if-ge v0, v6, :cond_ad

    .line 3244
    iget-object v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    .line 3245
    .local v0, "b1":I
    shr-int/lit8 v10, v0, 0x4

    const/16 v12, 0x80

    packed-switch v10, :pswitch_data_fe

    .line 3280
    :pswitch_38
    new-instance v10, Ljava/io/UTFDataFormatException;

    goto/16 :goto_a9

    .line 3268
    :pswitch_3c
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    add-int/lit8 v13, v11, 0x1

    aget-byte v10, v10, v13

    .line 3269
    .local v10, "b3":I
    iget-object v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    add-int/lit8 v14, v11, 0x0

    aget-byte v13, v13, v14

    .line 3270
    .local v13, "b2":I
    add-int/lit8 v11, v11, 0x2

    iput v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3271
    and-int/lit16 v11, v13, 0xc0

    if-ne v11, v12, :cond_6a

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v12, :cond_6a

    .line 3274
    iget-object v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_56
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_56} :catch_d9
    .catchall {:try_start_21 .. :try_end_56} :catchall_c2

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "cpos":I
    .local v12, "cpos":I
    and-int/lit8 v14, v0, 0xf

    shl-int/lit8 v14, v14, 0xc

    and-int/lit8 v15, v13, 0x3f

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v14, v15

    and-int/lit8 v15, v10, 0x3f

    shl-int/2addr v15, v9

    or-int/2addr v14, v15

    int-to-char v14, v14

    :try_start_66
    aput-char v14, v11, v8
    :try_end_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_66 .. :try_end_68} :catch_90
    .catchall {:try_start_66 .. :try_end_68} :catchall_8d

    .line 3277
    move v8, v12

    goto :goto_a1

    .line 3272
    .end local v12    # "cpos":I
    .restart local v8    # "cpos":I
    :cond_6a
    :try_start_6a
    new-instance v11, Ljava/io/UTFDataFormatException;

    invoke-direct {v11}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v11

    .line 3259
    .end local v10    # "b3":I
    .end local v13    # "b2":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :pswitch_70
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    add-int/lit8 v13, v11, 0x1

    iput v13, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v10, v10, v11

    .line 3260
    .local v10, "b2":I
    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v12, :cond_93

    .line 3263
    iget-object v11, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_7e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6a .. :try_end_7e} :catch_d9
    .catchall {:try_start_6a .. :try_end_7e} :catchall_c2

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "cpos":I
    .restart local v12    # "cpos":I
    and-int/lit8 v13, v0, 0x1f

    shl-int/lit8 v13, v13, 0x6

    and-int/lit8 v14, v10, 0x3f

    shl-int/2addr v14, v9

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_89
    aput-char v13, v11, v8
    :try_end_8b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_89 .. :try_end_8b} :catch_90
    .catchall {:try_start_89 .. :try_end_8b} :catchall_8d

    .line 3265
    move v8, v12

    goto :goto_a1

    .line 3286
    .end local v0    # "b1":I
    .end local v10    # "b2":I
    :catchall_8d
    move-exception v0

    move v8, v12

    goto :goto_c3

    .line 3283
    :catch_90
    move-exception v0

    move v8, v12

    goto :goto_da

    .line 3261
    .end local v12    # "cpos":I
    .restart local v0    # "b1":I
    .restart local v8    # "cpos":I
    .restart local v10    # "b2":I
    :cond_93
    :try_start_93
    new-instance v11, Ljava/io/UTFDataFormatException;

    invoke-direct {v11}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v11

    .line 3254
    .end local v10    # "b2":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :pswitch_99
    iget-object v10, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_9b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_93 .. :try_end_9b} :catch_d9
    .catchall {:try_start_93 .. :try_end_9b} :catchall_c2

    add-int/lit8 v11, v8, 0x1

    .end local v8    # "cpos":I
    .local v11, "cpos":I
    int-to-char v12, v0

    :try_start_9e
    aput-char v12, v10, v8
    :try_end_a0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9e .. :try_end_a0} :catch_a6
    .catchall {:try_start_9e .. :try_end_a0} :catchall_a3

    .line 3255
    move v8, v11

    .line 3282
    .end local v0    # "b1":I
    .end local v11    # "cpos":I
    .restart local v8    # "cpos":I
    :goto_a1
    goto/16 :goto_20

    .line 3286
    .end local v8    # "cpos":I
    .restart local v11    # "cpos":I
    :catchall_a3
    move-exception v0

    move v8, v11

    goto :goto_c3

    .line 3283
    :catch_a6
    move-exception v0

    move v8, v11

    goto :goto_da

    .line 3280
    .end local v11    # "cpos":I
    .restart local v0    # "b1":I
    .restart local v8    # "cpos":I
    :goto_a9
    :try_start_a9
    invoke-direct {v10}, Ljava/io/UTFDataFormatException;-><init>()V

    .end local v4    # "start":I
    .end local v5    # "avail":I
    .end local v6    # "stop":I
    .end local v7    # "outOfBounds":Z
    .end local v8    # "cpos":I
    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .end local p1    # "sbuf":Ljava/lang/StringBuilder;
    .end local p2    # "utflen":J
    throw v10
    :try_end_ad
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a9 .. :try_end_ad} :catch_d9
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_c2

    .line 3286
    .end local v0    # "b1":I
    .restart local v4    # "start":I
    .restart local v5    # "avail":I
    .restart local v6    # "stop":I
    .restart local v7    # "outOfBounds":Z
    .restart local v8    # "cpos":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    .restart local p1    # "sbuf":Ljava/lang/StringBuilder;
    .restart local p2    # "utflen":J
    :cond_ad
    if-nez v7, :cond_b8

    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v10, v0

    cmp-long v0, v10, v2

    if-gtz v0, :cond_b8

    goto :goto_e5

    .line 3292
    :cond_b8
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3293
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 3286
    :catchall_c2
    move-exception v0

    :goto_c3
    if-nez v7, :cond_cf

    iget v9, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v9, v4

    int-to-long v9, v9

    cmp-long v9, v9, v2

    if-lez v9, :cond_ce

    goto :goto_cf

    .line 3295
    :cond_ce
    throw v0

    .line 3292
    :cond_cf
    :goto_cf
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3293
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 3283
    :catch_d9
    move-exception v0

    .line 3284
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_da
    const/4 v7, 0x1

    .line 3286
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    if-nez v7, :cond_f1

    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v10, v0

    cmp-long v0, v10, v2

    if-gtz v0, :cond_f1

    .line 3297
    :goto_e5
    iget-object v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    move-object/from16 v10, p1

    invoke-virtual {v10, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3298
    iget v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v4

    int-to-long v11, v0

    return-wide v11

    .line 3286
    :cond_f1
    move-object/from16 v10, p1

    .line 3292
    long-to-int v0, v2

    add-int/2addr v0, v4

    iput v0, v1, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3293
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_99
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_70
        :pswitch_70
        :pswitch_3c
    .end packed-switch
.end method

.method private greylist-max-o refill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2684
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2685
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v2, :cond_2a

    .line 2686
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    const/16 v5, 0x400

    .line 2687
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v2

    .line 2688
    .local v2, "n":I
    if-ltz v2, :cond_22

    .line 2689
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2690
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    sub-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2695
    .end local v2    # "n":I
    goto :goto_3a

    .line 2692
    .restart local v2    # "n":I
    :cond_22
    new-instance v3, Ljava/io/StreamCorruptedException;

    const-string v4, "unexpected EOF in middle of data block"

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    throw v3

    .line 2696
    .end local v2    # "n":I
    .restart local p0    # "this":Ljava/io/ObjectInputStream$BlockDataInputStream;
    :cond_2a
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v2

    .line 2697
    .restart local v2    # "n":I
    if-ltz v2, :cond_36

    .line 2698
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2699
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_3a

    .line 2701
    :cond_36
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2702
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2705
    .end local v2    # "n":I
    :goto_3a
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3e} :catch_42

    if-eq v2, v0, :cond_0

    .line 2711
    nop

    .line 2712
    return-void

    .line 2706
    :catch_42
    move-exception v2

    .line 2707
    .local v2, "ex":Ljava/io/IOException;
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2708
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2709
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2710
    throw v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2805
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_45

    .line 2806
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_29

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-nez v0, :cond_29

    .line 2808
    :goto_f
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v0

    move v1, v0

    .local v1, "n":I
    if-nez v0, :cond_17

    goto :goto_f

    .line 2809
    :cond_17
    const/4 v0, -0x2

    if-eq v1, v0, :cond_29

    const/4 v0, -0x1

    if-eq v1, v0, :cond_24

    .line 2819
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2820
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2821
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_29

    .line 2814
    :cond_24
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2815
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2816
    nop

    .line 2826
    .end local v1    # "n":I
    :cond_29
    :goto_29
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v0, :cond_3a

    .line 2827
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3b

    :cond_3a
    move v0, v2

    .line 2828
    .local v0, "unreadAvail":I
    :goto_3b
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v1, :cond_44

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    :cond_44
    return v2

    .line 2830
    .end local v0    # "unreadAvail":I
    :cond_45
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2835
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_c

    .line 2836
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2837
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2838
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2840
    :cond_c
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->close()V

    .line 2841
    return-void
.end method

.method greylist-max-o currentBlockRemaining()I
    .registers 3

    .line 2720
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_11

    .line 2721
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_f

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    add-int/2addr v0, v1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 2723
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method greylist-max-o getBlockDataMode()Z
    .registers 2

    .line 2585
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0
.end method

.method blacklist getBytesRead()J
    .registers 3

    .line 3365
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2733
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_1c

    .line 2734
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_d

    .line 2735
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2737
    :cond_d
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1a

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1b

    :cond_1a
    const/4 v0, -0x1

    :goto_1b
    return v0

    .line 2739
    :cond_1c
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v0

    return v0
.end method

.method greylist-max-o peekByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2749
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    move-result v0

    .line 2750
    .local v0, "val":I
    if-ltz v0, :cond_8

    .line 2753
    int-to-byte v1, v0

    return v1

    .line 2751
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2766
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_20

    .line 2767
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_d

    .line 2768
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2770
    :cond_d
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1e

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    return v0

    .line 2772
    :cond_20
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2777
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    return v0
.end method

.method greylist-max-o read([BIIZ)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2851
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 2852
    return v0

    .line 2853
    :cond_4
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_2b

    .line 2854
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_11

    .line 2855
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2857
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v0, :cond_17

    .line 2858
    const/4 v0, -0x1

    return v0

    .line 2860
    :cond_17
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2861
    .local v0, "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2862
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2863
    return v0

    .line 2864
    .end local v0    # "nread":I
    :cond_2b
    if-eqz p4, :cond_43

    .line 2865
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/16 v3, 0x400

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    .line 2866
    .local v1, "nread":I
    if-lez v1, :cond_42

    .line 2867
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2869
    :cond_42
    return v1

    .line 2871
    .end local v1    # "nread":I
    :cond_43
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2909
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2910
    .local v0, "v":I
    if-ltz v0, :cond_c

    .line 2913
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 2911
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method greylist-max-o readBooleans([ZII)V
    .registers 10
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3034
    add-int v0, p2, p3

    .line 3035
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_4c

    .line 3036
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3037
    sub-int v1, v0, p2

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3038
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3039
    add-int v2, p2, v1

    .line 3040
    .local v2, "stop":I
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3041
    .end local v1    # "span":I
    goto :goto_38

    .end local v2    # "stop":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_32

    .line 3042
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    aput-boolean v2, p1, p2

    .line 3043
    move p2, v1

    goto :goto_2

    .line 3045
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_32
    add-int/2addr v1, p2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3048
    .restart local v2    # "stop":I
    :goto_38
    if-ge p2, v2, :cond_2

    .line 3049
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v3

    aput-boolean v3, p1, p2

    move p2, v1

    goto :goto_38

    .line 3052
    .end local v1    # "off":I
    .end local v2    # "stop":I
    .restart local p2    # "off":I
    :cond_4c
    return-void
.end method

.method public whitelist core-platform-api test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2917
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2918
    .local v0, "v":I
    if-ltz v0, :cond_8

    .line 2921
    int-to-byte v1, v0

    return v1

    .line 2919
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2933
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 2934
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2935
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 2936
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 2937
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0

    .line 2939
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getChar([BI)C

    move-result v0

    .line 2940
    .local v0, "v":C
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2941
    return v0
.end method

.method greylist-max-o readChars([CII)V
    .registers 11
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3055
    add-int v0, p2, p3

    .line 3056
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_51

    .line 3057
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x2

    if-nez v1, :cond_20

    .line 3058
    sub-int v1, v0, p2

    const/16 v3, 0x200

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3059
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3060
    add-int v3, p2, v1

    .line 3061
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3062
    .end local v1    # "span":I
    goto :goto_3c

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v4, v1, v3

    if-ge v4, v2, :cond_34

    .line 3063
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readChar()C

    move-result v2

    aput-char v2, p1, p2

    .line 3064
    move p2, v1

    goto :goto_2

    .line 3066
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_34
    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3069
    .restart local v3    # "stop":I
    :goto_3c
    if-ge p2, v3, :cond_2

    .line 3070
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getChar([BI)C

    move-result v4

    aput-char v4, p1, p2

    .line 3071
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3c

    .line 3074
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_51
    return-void
.end method

.method public whitelist core-platform-api test-api readDouble()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3005
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v1, 0x8

    if-nez v0, :cond_11

    .line 3006
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3007
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1f

    .line 3008
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1f

    .line 3009
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0

    .line 3011
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v2

    .line 3012
    .local v2, "v":D
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3013
    return-wide v2
.end method

.method greylist-max-o readDoubles([DII)V
    .registers 10
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3163
    add-int v0, p2, p3

    .line 3164
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_4c

    .line 3165
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3166
    sub-int v1, v0, p2

    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3167
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v4, v1, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3168
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_3c

    .line 3169
    .end local v1    # "span":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v3, v1, v2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_33

    .line 3170
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, p2

    .line 3171
    move p2, v1

    goto :goto_2

    .line 3173
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_33
    sub-int v3, v0, p2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3176
    .local v1, "span":I
    :goto_3c
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    # invokes: Ljava/io/ObjectInputStream;->bytesToDoubles([BI[DII)V
    invoke-static {v2, v3, p1, p2, v1}, Ljava/io/ObjectInputStream;->access$800([BI[DII)V

    .line 3177
    add-int/2addr p2, v1

    .line 3178
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_2

    .line 3180
    .end local v1    # "span":I
    :cond_4c
    return-void
.end method

.method public whitelist core-platform-api test-api readFloat()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2981
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x4

    if-nez v0, :cond_10

    .line 2982
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2983
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 2984
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 2985
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0

    .line 2987
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getFloat([BI)F

    move-result v0

    .line 2988
    .local v0, "v":F
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2989
    return v0
.end method

.method greylist-max-o readFloats([FII)V
    .registers 10
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3121
    add-int v0, p2, p3

    .line 3122
    .local v0, "endoff":I
    :goto_2
    if-ge p2, v0, :cond_4b

    .line 3123
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1d

    .line 3124
    sub-int v1, v0, p2

    const/16 v2, 0x100

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3125
    .local v1, "span":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3126
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_3b

    .line 3127
    .end local v1    # "span":I
    :cond_1d
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v3, v1, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_32

    .line 3128
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    aput v2, p1, p2

    .line 3129
    move p2, v1

    goto :goto_2

    .line 3131
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_32
    sub-int v3, v0, p2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3134
    .local v1, "span":I
    :goto_3b
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    # invokes: Ljava/io/ObjectInputStream;->bytesToFloats([BI[FII)V
    invoke-static {v2, v3, p1, p2, v1}, Ljava/io/ObjectInputStream;->access$700([BI[FII)V

    .line 3135
    add-int/2addr p2, v1

    .line 3136
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_2

    .line 3138
    .end local v1    # "span":I
    :cond_4b
    return-void
.end method

.method public whitelist core-platform-api test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2884
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2885
    return-void
.end method

.method public whitelist core-platform-api test-api readFully([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2889
    return-void
.end method

.method public greylist-max-o readFully([BIIZ)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2894
    :goto_0
    if-lez p3, :cond_11

    .line 2895
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    .line 2896
    .local v0, "n":I
    if-ltz v0, :cond_b

    .line 2899
    add-int/2addr p2, v0

    .line 2900
    sub-int/2addr p3, v0

    .line 2901
    .end local v0    # "n":I
    goto :goto_0

    .line 2897
    .restart local v0    # "n":I
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2902
    .end local v0    # "n":I
    :cond_11
    return-void
.end method

.method public whitelist core-platform-api test-api readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2969
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x4

    if-nez v0, :cond_10

    .line 2970
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2971
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 2972
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 2973
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0

    .line 2975
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    .line 2976
    .local v0, "v":I
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2977
    return v0
.end method

.method greylist-max-o readInts([III)V
    .registers 11
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3099
    add-int v0, p2, p3

    .line 3100
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_51

    .line 3101
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x4

    if-nez v1, :cond_20

    .line 3102
    sub-int v1, v0, p2

    const/16 v3, 0x100

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3103
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3104
    add-int v3, p2, v1

    .line 3105
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3106
    .end local v1    # "span":I
    goto :goto_3c

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v4, v1, v3

    if-ge v4, v2, :cond_34

    .line 3107
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, p1, p2

    .line 3108
    move p2, v1

    goto :goto_2

    .line 3110
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_34
    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3113
    .restart local v3    # "stop":I
    :goto_3c
    if-ge p2, v3, :cond_2

    .line 3114
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v4

    aput v4, p1, p2

    .line 3115
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3c

    .line 3118
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_51
    return-void
.end method

.method public whitelist core-platform-api test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3022
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api readLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2993
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v1, 0x8

    if-nez v0, :cond_11

    .line 2994
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2995
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1f

    .line 2996
    :cond_11
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1f

    .line 2997
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 2999
    :cond_1f
    :goto_1f
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v2

    .line 3000
    .local v2, "v":J
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3001
    return-wide v2
.end method

.method greylist-max-o readLongUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3188
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o readLongs([JII)V
    .registers 11
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3141
    add-int v0, p2, p3

    .line 3142
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_52

    .line 3143
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/16 v2, 0x8

    if-nez v1, :cond_21

    .line 3144
    sub-int v1, v0, p2

    const/16 v3, 0x80

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3145
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3146
    add-int v3, p2, v1

    .line 3147
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3148
    .end local v1    # "span":I
    goto :goto_3d

    .end local v3    # "stop":I
    :cond_21
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v4, v1, v3

    if-ge v4, v2, :cond_35

    .line 3149
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, p2

    .line 3150
    move p2, v1

    goto :goto_2

    .line 3152
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_35
    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3155
    .restart local v3    # "stop":I
    :goto_3d
    if-ge p2, v3, :cond_2

    .line 3156
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, p2

    .line 3157
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3d

    .line 3160
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_52
    return-void
.end method

.method public whitelist core-platform-api test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2945
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 2946
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2947
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 2948
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 2949
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0

    .line 2951
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    .line 2952
    .local v0, "v":S
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2953
    return v0
.end method

.method greylist-max-o readShorts([SII)V
    .registers 11
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3077
    add-int v0, p2, p3

    .line 3078
    .local v0, "endoff":I
    :cond_2
    :goto_2
    if-ge p2, v0, :cond_51

    .line 3079
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v2, 0x2

    if-nez v1, :cond_20

    .line 3080
    sub-int v1, v0, p2

    const/16 v3, 0x200

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3081
    .local v1, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3082
    add-int v3, p2, v1

    .line 3083
    .local v3, "stop":I
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3084
    .end local v1    # "span":I
    goto :goto_3c

    .end local v3    # "stop":I
    :cond_20
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v4, v1, v3

    if-ge v4, v2, :cond_34

    .line 3085
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    aput-short v2, p1, p2

    .line 3086
    move p2, v1

    goto :goto_2

    .line 3088
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_34
    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3091
    .restart local v3    # "stop":I
    :goto_3c
    if-ge p2, v3, :cond_2

    .line 3092
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getShort([BI)S

    move-result v4

    aput-short v4, p1, p2

    .line 3093
    iget p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr p2, v2

    iput p2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move p2, v1

    goto :goto_3c

    .line 3096
    .end local v1    # "off":I
    .end local v3    # "stop":I
    .restart local p2    # "off":I
    :cond_51
    return-void
.end method

.method public whitelist core-platform-api test-api readUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3017
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2925
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2926
    .local v0, "v":I
    if-ltz v0, :cond_7

    .line 2929
    return v0

    .line 2927
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2957
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    const/4 v1, 0x2

    if-nez v0, :cond_10

    .line 2958
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2959
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_1e

    .line 2960
    :cond_10
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1e

    .line 2961
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0

    .line 2963
    :cond_1e
    :goto_1e
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v0, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    .line 2964
    .local v0, "v":I
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2965
    return v0
.end method

.method greylist-max-o setBlockDataMode(Z)Z
    .registers 4
    .param p1, "newmode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2566
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-ne v0, p1, :cond_5

    .line 2567
    return v0

    .line 2569
    :cond_5
    if-eqz p1, :cond_f

    .line 2570
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2571
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2572
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_15

    .line 2573
    :cond_f
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-lt v0, v1, :cond_1a

    .line 2576
    :goto_15
    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2577
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 2574
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unread block data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 9
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2781
    move-wide v0, p1

    .line 2782
    .local v0, "remain":J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_41

    .line 2783
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v2, :cond_2a

    .line 2784
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v2, v3, :cond_14

    .line 2785
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2787
    :cond_14
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v2, :cond_19

    .line 2788
    goto :goto_41

    .line 2790
    :cond_19
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2791
    .local v2, "nread":I
    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 2792
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2793
    .end local v2    # "nread":I
    goto :goto_1

    .line 2794
    :cond_2a
    const-wide/16 v2, 0x400

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2795
    .restart local v2    # "nread":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v3

    move v2, v3

    if-gez v3, :cond_3e

    .line 2796
    goto :goto_41

    .line 2798
    :cond_3e
    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 2799
    .end local v2    # "nread":I
    goto :goto_1

    .line 2801
    :cond_41
    :goto_41
    sub-long v2, p1, v0

    return-wide v2
.end method

.method greylist-max-o skipBlockData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2594
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_d

    .line 2597
    :goto_4
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_c

    .line 2598
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    goto :goto_4

    .line 2600
    :cond_c
    return-void

    .line 2595
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in block data mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api skipBytes(I)I
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2905
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
