.class public Ljava/io/DataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DataOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field private bytearr:[B

.field private writeBuffer:[B

.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/DataOutputStream;->bytearr:[B

    .line 204
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    .line 61
    return-void
.end method

.method private incCount(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 68
    iget v1, p0, Ljava/io/DataOutputStream;->written:I

    add-int v0, v1, p1

    .line 69
    .local v0, "temp":I
    if-gez v0, :cond_9

    .line 70
    const v0, 0x7fffffff

    .line 72
    :cond_9
    iput v0, p0, Ljava/io/DataOutputStream;->written:I

    .line 73
    return-void
.end method

.method static writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I
    .registers 16
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x7ff

    const/4 v12, 0x0

    const/16 v11, 0x7f

    const/4 v10, 0x1

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 348
    .local v6, "strlen":I
    const/4 v7, 0x0

    .line 349
    .local v7, "utflen":I
    const/4 v2, 0x0

    .line 352
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d
    if-ge v5, v6, :cond_24

    .line 353
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 354
    .local v1, "c":I
    if-lt v1, v10, :cond_1c

    if-gt v1, v11, :cond_1c

    .line 355
    add-int/lit8 v7, v7, 0x1

    .line 352
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 356
    :cond_1c
    if-le v1, v13, :cond_21

    .line 357
    add-int/lit8 v7, v7, 0x3

    goto :goto_19

    .line 359
    :cond_21
    add-int/lit8 v7, v7, 0x2

    goto :goto_19

    .line 363
    .end local v1    # "c":I
    :cond_24
    const v8, 0xffff

    if-le v7, v8, :cond_4a

    .line 364
    new-instance v8, Ljava/io/UTFDataFormatException;

    .line 365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "encoded string too long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-direct {v8, v9}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 367
    :cond_4a
    const/4 v0, 0x0

    .line 368
    .local v0, "bytearr":[B
    instance-of v8, p1, Ljava/io/DataOutputStream;

    if-eqz v8, :cond_97

    move-object v4, p1

    .line 369
    check-cast v4, Ljava/io/DataOutputStream;

    .line 370
    .local v4, "dos":Ljava/io/DataOutputStream;
    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    if-eqz v8, :cond_5d

    iget-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    array-length v8, v8

    add-int/lit8 v9, v7, 0x2

    if-ge v8, v9, :cond_65

    .line 371
    :cond_5d
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    iput-object v8, v4, Ljava/io/DataOutputStream;->bytearr:[B

    .line 372
    :cond_65
    iget-object v0, v4, Ljava/io/DataOutputStream;->bytearr:[B

    .line 377
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v0, "bytearr":[B
    :goto_67
    const/4 v2, 0x1

    ushr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v12

    .line 378
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .local v3, "count":I
    ushr-int/lit8 v8, v7, 0x0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 380
    const/4 v5, 0x0

    .line 381
    const/4 v5, 0x0

    :goto_7a
    if-ge v5, v6, :cond_84

    .line 382
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 383
    .restart local v1    # "c":I
    if-lt v1, v10, :cond_84

    if-le v1, v11, :cond_9c

    .line 387
    .end local v1    # "c":I
    :cond_84
    :goto_84
    if-ge v5, v6, :cond_e1

    .line 388
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 389
    .restart local v1    # "c":I
    if-lt v1, v10, :cond_a5

    if-gt v1, v11, :cond_a5

    .line 390
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    int-to-byte v8, v1

    aput-byte v8, v0, v3

    .line 387
    :goto_93
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_84

    .line 374
    .end local v1    # "c":I
    .end local v3    # "count":I
    .local v0, "bytearr":[B
    .restart local v2    # "count":I
    :cond_97
    add-int/lit8 v8, v7, 0x2

    new-array v0, v8, [B

    .local v0, "bytearr":[B
    goto :goto_67

    .line 384
    .end local v2    # "count":I
    .restart local v1    # "c":I
    .restart local v3    # "count":I
    :cond_9c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    int-to-byte v8, v1

    aput-byte v8, v0, v3

    .line 381
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_7a

    .line 392
    :cond_a5
    if-le v1, v13, :cond_c9

    .line 393
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 394
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 395
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    goto :goto_93

    .line 397
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_c9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    shr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x1f

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 398
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "count":I
    .restart local v3    # "count":I
    shr-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_93

    .line 401
    .end local v1    # "c":I
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_e1
    add-int/lit8 v8, v7, 0x2

    invoke-interface {p1, v0, v12, v8}, Ljava/io/DataOutput;->write([BII)V

    .line 402
    add-int/lit8 v8, v7, 0x2

    return v8
.end method


# virtual methods
.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 124
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Ljava/io/DataOutputStream;->written:I

    return v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 90
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 107
    :try_start_1
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    invoke-direct {p0, p3}, Ljava/io/DataOutputStream;->incCount(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 109
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeBoolean(Z)V
    .registers 5
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_d

    move v0, v1

    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 140
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 141
    return-void

    .line 139
    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final writeByte(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 155
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 275
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_14

    .line 276
    iget-object v2, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 278
    :cond_14
    invoke-direct {p0, v1}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 279
    return-void
.end method

.method public final writeChar(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 185
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 297
    .local v2, "v":I
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 298
    iget-object v3, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 300
    .end local v2    # "v":I
    :cond_20
    mul-int/lit8 v3, v1, 0x2

    invoke-direct {p0, v3}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 301
    return-void
.end method

.method public final writeDouble(D)V
    .registers 6
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 260
    return-void
.end method

.method public final writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    return-void
.end method

.method public final writeInt(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 198
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 199
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 200
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 201
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 202
    return-void
.end method

.method public final writeLong(J)V
    .registers 10
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 217
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 218
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 219
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 220
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 221
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 222
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    ushr-long v2, p1, v5

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 223
    iget-object v0, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 224
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/DataOutputStream;->writeBuffer:[B

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 225
    invoke-direct {p0, v5}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 226
    return-void
.end method

.method public final writeShort(I)V
    .registers 4
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget-object v0, p0, Ljava/io/DataOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 169
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/io/DataOutputStream;->incCount(I)V

    .line 170
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    .line 324
    return-void
.end method
