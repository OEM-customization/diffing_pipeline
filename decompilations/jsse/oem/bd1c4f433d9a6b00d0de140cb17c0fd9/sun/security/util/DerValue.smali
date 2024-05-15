.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final TAG_APPLICATION:B = 0x40t

.field public static final TAG_CONTEXT:B = -0x80t

.field public static final TAG_PRIVATE:B = -0x40t

.field public static final TAG_UNIVERSAL:B = 0x0t

.field public static final tag_BMPString:B = 0x1et

.field public static final tag_BitString:B = 0x3t

.field public static final tag_Boolean:B = 0x1t

.field public static final tag_Enumerated:B = 0xat

.field public static final tag_GeneralString:B = 0x1bt

.field public static final tag_GeneralizedTime:B = 0x18t

.field public static final tag_IA5String:B = 0x16t

.field public static final tag_Integer:B = 0x2t

.field public static final tag_Null:B = 0x5t

.field public static final tag_ObjectId:B = 0x6t

.field public static final tag_OctetString:B = 0x4t

.field public static final tag_PrintableString:B = 0x13t

.field public static final tag_Sequence:B = 0x30t

.field public static final tag_SequenceOf:B = 0x30t

.field public static final tag_Set:B = 0x31t

.field public static final tag_SetOf:B = 0x31t

.field public static final tag_T61String:B = 0x14t

.field public static final tag_UTF8String:B = 0xct

.field public static final tag_UniversalString:B = 0x1ct

.field public static final tag_UtcTime:B = 0x17t


# instance fields
.field protected buffer:Lsun/security/util/DerInputBuffer;

.field public final data:Lsun/security/util/DerInputStream;

.field private length:I

.field private originalEncodedForm:[B

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .registers 4
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 235
    return-void
.end method

.method public constructor <init>(B[B)V
    .registers 5
    .param p1, "tag"    # B
    .param p2, "data"    # [B

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 245
    new-instance v1, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 246
    array-length v0, p2

    iput v0, p0, Lsun/security/util/DerValue;->length:I

    .line 247
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 248
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v1, 0x1

    .line 218
    .local v1, "isPrintableString":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-nez v2, :cond_21

    .line 220
    const/4 v1, 0x0

    .line 225
    :cond_16
    if-eqz v1, :cond_24

    const/16 v2, 0x13

    :goto_1a
    invoke-direct {p0, v2, p1}, Lsun/security/util/DerValue;->init(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object v2

    iput-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 226
    return-void

    .line 218
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 225
    :cond_24
    const/16 v2, 0xc

    goto :goto_1a
.end method

.method constructor <init>(Lsun/security/util/DerInputBuffer;Z)V
    .registers 15
    .param p1, "in"    # Lsun/security/util/DerInputBuffer;
    .param p2, "originalEncodedFormRetained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v8

    .line 261
    .local v8, "startPosInInput":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v9

    int-to-byte v9, v9

    iput-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    .line 262
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v9

    int-to-byte v5, v9

    .line 263
    .local v5, "lenByte":B
    invoke-static {v5, p1}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lsun/security/util/DerValue;->length:I

    .line 264
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_90

    .line 265
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v3

    .line 266
    .local v3, "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v7

    .line 267
    .local v7, "readLen":I
    const/4 v6, 0x2

    .line 268
    .local v6, "offset":I
    add-int/lit8 v9, v7, 0x2

    new-array v4, v9, [B

    .line 269
    .local v4, "indefData":[B
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v10, 0x0

    aput-byte v9, v4, v10

    .line 270
    const/4 v9, 0x1

    aput-byte v5, v4, v9

    .line 271
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v4, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 273
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 274
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 275
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance v3, Lsun/security/util/DerInputBuffer;

    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    invoke-virtual {v1, v4}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v9

    invoke-direct {v3, v9}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    .line 276
    .restart local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    iget-byte v9, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v10

    if-eq v9, v10, :cond_5d

    .line 277
    new-instance v9, Ljava/io/IOException;

    .line 278
    const-string/jumbo v10, "Indefinite length encoding not supported"

    .line 277
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 279
    :cond_5d
    invoke-static {v3}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v9

    iput v9, p0, Lsun/security/util/DerValue;->length:I

    .line 280
    invoke-virtual {v3}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 281
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v10, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 282
    new-instance v9, Lsun/security/util/DerInputStream;

    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 286
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    add-int/lit8 v9, v9, 0x2

    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 296
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "inbuf":Lsun/security/util/DerInputBuffer;
    .end local v4    # "indefData":[B
    .end local v6    # "offset":I
    .end local v7    # "readLen":I
    :goto_81
    if-eqz p2, :cond_8f

    .line 297
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->getPos()I

    move-result v9

    sub-int v0, v9, v8

    .line 298
    .local v0, "consumed":I
    invoke-virtual {p1, v8, v0}, Lsun/security/util/DerInputBuffer;->getSlice(II)[B

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    .line 301
    .end local v0    # "consumed":I
    :cond_8f
    return-void

    .line 289
    :cond_90
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->dup()Lsun/security/util/DerInputBuffer;

    move-result-object v9

    iput-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 290
    iget-object v9, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget v10, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {v9, v10}, Lsun/security/util/DerInputBuffer;->truncate(I)V

    .line 291
    new-instance v9, Lsun/security/util/DerInputStream;

    iget-object v10, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    iput-object v9, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 293
    iget v9, p0, Lsun/security/util/DerValue;->length:I

    int-to-long v10, v9

    invoke-virtual {p1, v10, v11}, Lsun/security/util/DerInputBuffer;->skip(J)J

    goto :goto_81
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 312
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/util/DerValue;->init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 325
    return-void
.end method

.method private append([B[B)[B
    .registers 7
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 469
    if-nez p1, :cond_4

    .line 470
    return-object p2

    .line 472
    :cond_4
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 473
    .local v0, "ret":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 474
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 476
    return-object v0
.end method

.method public static createTag(BZB)B
    .registers 5
    .param p0, "tagClass"    # B
    .param p1, "form"    # Z
    .param p2, "val"    # B

    .prologue
    .line 937
    or-int v1, p0, p2

    int-to-byte v0, v1

    .line 938
    .local v0, "tag":B
    if-eqz p1, :cond_8

    .line 939
    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    .line 941
    :cond_8
    return v0
.end method

.method private static doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .registers 6
    .param p0, "d1"    # Lsun/security/util/DerValue;
    .param p1, "d2"    # Lsun/security/util/DerValue;

    .prologue
    .line 807
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 808
    :try_start_3
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 809
    :try_start_6
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 810
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->reset()V

    .line 811
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v3, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    move-result v0

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1e

    monitor-exit v1

    return v0

    .line 808
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v2

    throw v0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1e

    .line 807
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .registers 8
    .param p1, "stringTag"    # B
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "enc":Ljava/lang/String;
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 345
    sparse-switch p1, :sswitch_data_3a

    .line 363
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unsupported DER string type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :sswitch_f
    const-string/jumbo v1, "ASCII"

    .line 366
    .local v1, "enc":Ljava/lang/String;
    :goto_12
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    .local v0, "buf":[B
    array-length v3, v0

    iput v3, p0, Lsun/security/util/DerValue;->length:I

    .line 368
    new-instance v3, Lsun/security/util/DerInputBuffer;

    invoke-direct {v3, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 369
    new-instance v2, Lsun/security/util/DerInputStream;

    iget-object v3, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v2, v3}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    .line 370
    .local v2, "result":Lsun/security/util/DerInputStream;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 371
    return-object v2

    .line 352
    .end local v0    # "buf":[B
    .end local v2    # "result":Lsun/security/util/DerInputStream;
    .local v1, "enc":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v1, "ISO-8859-1"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_12

    .line 355
    .local v1, "enc":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v1, "UnicodeBigUnmarked"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_12

    .line 358
    .local v1, "enc":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v1, "UTF8"

    .local v1, "enc":Ljava/lang/String;
    goto :goto_12

    .line 345
    :sswitch_data_3a
    .sparse-switch
        0xc -> :sswitch_36
        0x13 -> :sswitch_f
        0x14 -> :sswitch_2e
        0x16 -> :sswitch_f
        0x1b -> :sswitch_f
        0x1e -> :sswitch_32
    .end sparse-switch
.end method

.method private init(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .registers 13
    .param p1, "fullyBuffered"    # Z
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 380
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    iput-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    .line 381
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v4, v7

    .line 382
    .local v4, "lenByte":B
    invoke-static {v4, p2}, Lsun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 383
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_58

    .line 384
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 385
    .local v6, "readLen":I
    const/4 v5, 0x2

    .line 386
    .local v5, "offset":I
    add-int/lit8 v7, v6, 0x2

    new-array v3, v7, [B

    .line 387
    .local v3, "indefData":[B
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v8, 0x0

    aput-byte v7, v3, v8

    .line 388
    aput-byte v4, v3, v9

    .line 389
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 390
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v2, v3, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 391
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 392
    new-instance v1, Lsun/security/util/DerIndefLenConverter;

    invoke-direct {v1}, Lsun/security/util/DerIndefLenConverter;-><init>()V

    .line 393
    .local v1, "derIn":Lsun/security/util/DerIndefLenConverter;
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .end local p2    # "in":Ljava/io/InputStream;
    invoke-virtual {v1, v3}, Lsun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 394
    .restart local p2    # "in":Ljava/io/InputStream;
    iget-byte v7, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_52

    .line 395
    new-instance v7, Ljava/io/IOException;

    .line 396
    const-string/jumbo v8, "Indefinite length encoding not supported"

    .line 395
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 397
    :cond_52
    invoke-static {p2}, Lsun/security/util/DerInputStream;->getLength(Ljava/io/InputStream;)I

    move-result v7

    iput v7, p0, Lsun/security/util/DerValue;->length:I

    .line 400
    .end local v1    # "derIn":Lsun/security/util/DerIndefLenConverter;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "indefData":[B
    .end local v5    # "offset":I
    .end local v6    # "readLen":I
    :cond_58
    if-eqz p1, :cond_6b

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v7

    iget v8, p0, Lsun/security/util/DerValue;->length:I

    if-eq v7, v8, :cond_6b

    .line 401
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "extra data given to DerValue constructor"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :cond_6b
    iget v7, p0, Lsun/security/util/DerValue;->length:I

    invoke-static {p2, v7, v9}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B

    move-result-object v0

    .line 405
    .local v0, "bytes":[B
    new-instance v7, Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v0}, Lsun/security/util/DerInputBuffer;-><init>([B)V

    iput-object v7, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    .line 406
    new-instance v7, Lsun/security/util/DerInputStream;

    iget-object v8, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v7, v8}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v7
.end method

.method public static isPrintableStringChar(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    const/4 v1, 0x1

    .line 903
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    .line 905
    :cond_9
    return v1

    .line 903
    :cond_a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-le p0, v0, :cond_9

    .line 904
    :cond_12
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x39

    if-le p0, v0, :cond_9

    .line 907
    :cond_1a
    sparse-switch p0, :sswitch_data_20

    .line 922
    const/4 v0, 0x0

    return v0

    .line 920
    :sswitch_1f
    return v1

    .line 907
    :sswitch_data_20
    .sparse-switch
        0x20 -> :sswitch_1f
        0x27 -> :sswitch_1f
        0x28 -> :sswitch_1f
        0x29 -> :sswitch_1f
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_1f
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_1f
        0x2f -> :sswitch_1f
        0x3a -> :sswitch_1f
        0x3d -> :sswitch_1f
        0x3f -> :sswitch_1f
    .end sparse-switch
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .registers 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->write(I)V

    .line 415
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    invoke-virtual {p1, v1}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 417
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    if-lez v1, :cond_34

    .line 418
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 420
    .local v0, "value":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 421
    :try_start_15
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Lsun/security/util/DerInputBuffer;->reset()V

    .line 422
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v1

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v1, v3, :cond_30

    .line 423
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "short DER value read (encode)"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2d

    .line 420
    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 425
    :cond_30
    :try_start_30
    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->write([B)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2d

    monitor-exit v2

    .line 428
    .end local v0    # "value":[B
    :cond_34
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 772
    instance-of v0, p1, Lsun/security/util/DerValue;

    if-eqz v0, :cond_b

    .line 773
    check-cast p1, Lsun/security/util/DerValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    return v0

    .line 775
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lsun/security/util/DerValue;)Z
    .registers 5
    .param p1, "other"    # Lsun/security/util/DerValue;

    .prologue
    const/4 v2, 0x1

    .line 786
    if-ne p0, p1, :cond_4

    .line 787
    return v2

    .line 789
    :cond_4
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_c

    .line 790
    const/4 v0, 0x0

    return v0

    .line 792
    :cond_c
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-ne v0, v1, :cond_13

    .line 793
    return v2

    .line 797
    :cond_13
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 798
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 797
    if-le v0, v1, :cond_26

    .line 799
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    .line 797
    :goto_25
    return v0

    .line 800
    :cond_26
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->doEquals(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result v0

    goto :goto_25
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 591
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 592
    :cond_b
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_16

    .line 593
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 594
    :cond_16
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_21

    .line 595
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 596
    :cond_21
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_2c

    .line 597
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :cond_2c
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_37

    .line 603
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 604
    :cond_37
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_42

    .line 605
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 607
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBMPString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_22

    .line 704
    new-instance v0, Ljava/io/IOException;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBMPString, not BMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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
    .line 527
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 528
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_21
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getBitString()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 565
    new-instance v0, Ljava/io/IOException;

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_21
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(Z)[B
    .registers 5
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    if-nez p1, :cond_23

    .line 619
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    .line 620
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_23
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getBitString()[B

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 444
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v0, v1, :cond_22

    .line 445
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, not a BOOLEAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_22
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    if-eq v0, v1, :cond_42

    .line 448
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBoolean, invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_42
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->read()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 452
    return v1

    .line 454
    :cond_4b
    return v2
.end method

.method public final getData()Lsun/security/util/DerInputStream;
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-object v0
.end method

.method public getDataBytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget v1, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v1, [B

    .line 649
    .local v0, "retVal":[B
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v2

    .line 650
    :try_start_7
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 651
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    monitor-exit v2

    .line 653
    return-object v0

    .line 649
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getEnumerated()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-eq v0, v1, :cond_22

    .line 552
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getEnumerated, incorrect tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 553
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_22
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 733
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_22

    .line 734
    new-instance v0, Ljava/io/IOException;

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralString, not GeneralString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 734
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 758
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x18

    if-eq v0, v1, :cond_22

    .line 759
    new-instance v0, Ljava/io/IOException;

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_22
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 689
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-eq v0, v1, :cond_22

    .line 690
    new-instance v0, Ljava/io/IOException;

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getIA5String, not IA5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getInteger()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 516
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_21
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_21

    .line 464
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getOID, not an OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_21
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public getOctetString()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 487
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v3, :cond_29

    invoke-virtual {p0, v3}, Lsun/security/util/DerValue;->isConstructed(B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_29

    .line 488
    new-instance v2, Ljava/io/IOException;

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DerValue.getOctetString, not an Octet String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_29
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    new-array v0, v2, [B

    .line 494
    .local v0, "bytes":[B
    iget v2, p0, Lsun/security/util/DerValue;->length:I

    if-nez v2, :cond_32

    .line 495
    return-object v0

    .line 497
    :cond_32
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputBuffer;->read([B)I

    move-result v2

    iget v3, p0, Lsun/security/util/DerValue;->length:I

    if-eq v2, v3, :cond_45

    .line 498
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read on DerValue buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 499
    :cond_45
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 500
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 501
    .local v1, "in":Lsun/security/util/DerInputStream;
    const/4 v0, 0x0

    .line 502
    .end local v0    # "bytes":[B
    :goto_51
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_60

    .line 503
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->append([B[B)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_51

    .line 506
    .end local v0    # "bytes":[B
    .end local v1    # "in":Lsun/security/util/DerInputStream;
    :cond_60
    return-object v0
.end method

.method public getOriginalEncodedForm()[B
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 847
    iget-object v1, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    if-eqz v1, :cond_d

    .line 848
    iget-object v0, p0, Lsun/security/util/DerValue;->originalEncodedForm:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 847
    :cond_d
    return-object v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 541
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_21
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 663
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_22

    .line 664
    new-instance v0, Ljava/io/IOException;

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getPrintableString, not a string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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
    .line 676
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_22

    .line 677
    new-instance v0, Ljava/io/IOException;

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getT61String, not T61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final getTag()B
    .registers 2

    .prologue
    .line 435
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    return v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_22

    .line 747
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTCTime, not a UtcTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_22
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

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
    .line 719
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-eq v0, v1, :cond_22

    .line 720
    new-instance v0, Ljava/io/IOException;

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string/jumbo v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    .line 578
    new-instance v0, Ljava/io/IOException;

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_21
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .registers 5
    .param p1, "tagImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    if-nez p1, :cond_23

    .line 636
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    .line 637
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_23
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Lsun/security/util/DerInputBuffer;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 960
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isApplication()Z
    .registers 3

    .prologue
    .line 180
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isConstructed()Z
    .registers 3

    .prologue
    .line 201
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isConstructed(B)Z
    .registers 4
    .param p1, "constructedTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 208
    return v0

    .line 210
    :cond_8
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isContextSpecific()Z
    .registers 3

    .prologue
    .line 186
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isContextSpecific(B)Z
    .registers 4
    .param p1, "cntxtTag"    # B

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-nez v1, :cond_8

    .line 193
    return v0

    .line 195
    :cond_8
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    if-ne v1, p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method isPrivate()Z
    .registers 3

    .prologue
    .line 198
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUniversal()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v1, v1, 0xc0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 882
    iget v0, p0, Lsun/security/util/DerValue;->length:I

    return v0
.end method

.method public resetTag(B)V
    .registers 2
    .param p1, "tag"    # B

    .prologue
    .line 951
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 952
    return-void
.end method

.method public toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 861
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 862
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 863
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public toDerInputStream()Lsun/security/util/DerInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_14

    .line 874
    :cond_c
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/DerInputBuffer;)V

    return-object v0

    .line 875
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toDerInputStream rejects tag type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 824
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 827
    :cond_22
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2b

    .line 828
    const-string/jumbo v2, "[DerValue, null]"

    return-object v2

    .line 829
    :cond_2b
    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x6

    if-ne v2, v3, :cond_49

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 834
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DerValue, tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    const-string/jumbo v3, ", length = "

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    iget v3, p0, Lsun/security/util/DerValue;->length:I

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 835
    const-string/jumbo v3, "]"

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_72} :catch_74

    move-result-object v2

    return-object v2

    .line 836
    .end local v1    # "str":Ljava/lang/String;
    :catch_74
    move-exception v0

    .line 837
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "misformatted DER value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
