.class public Lsun/nio/ch/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field static final blacklist IOV_MAX:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    nop

    .line 373
    invoke-static {}, Lsun/nio/ch/IOUtil;->iovMax()I

    move-result v0

    sput v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    .line 374
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist drain(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native blacklist fdLimit()I
.end method

.method public static native blacklist fdVal(Ljava/io/FileDescriptor;)I
.end method

.method static native blacklist iovMax()I
.end method

.method static native blacklist makePipe(Z)J
.end method

.method public static blacklist newFD(I)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "i"    # I

    .line 320
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 321
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p0}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    .line 322
    return-object v0
.end method

.method static native blacklist randomBytes([B)Z
.end method

.method static blacklist read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 191
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_f

    .line 192
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    return v0

    .line 195
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_17
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    .line 198
    .local v1, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    if-lez v1, :cond_23

    .line 200
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_28

    .line 201
    :cond_23
    nop

    .line 203
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 201
    return v1

    .line 203
    .end local v1    # "n":I
    :catchall_28
    move-exception v1

    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 204
    throw v1

    .line 190
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 24
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v1

    .line 242
    .local v1, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v2, 0x0

    .line 243
    .local v2, "completed":Z
    const/4 v0, 0x0

    .line 247
    .local v0, "iov_len":I
    add-int v3, p2, p3

    .line 248
    .local v3, "count":I
    move/from16 v4, p2

    move/from16 v18, v4

    move v4, v0

    move/from16 v0, v18

    .line 249
    .local v0, "i":I
    .local v4, "iov_len":I
    :goto_f
    if-ge v0, v3, :cond_63

    :try_start_11
    sget v5, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    if-ge v4, v5, :cond_63

    .line 250
    aget-object v5, p1, v0

    .line 251
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_58

    .line 253
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 254
    .local v6, "pos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 255
    .local v7, "lim":I
    nop

    .line 256
    if-gt v6, v7, :cond_2b

    sub-int v8, v7, v6

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    .line 258
    .local v8, "rem":I
    :goto_2c
    if-lez v8, :cond_54

    .line 259
    invoke-virtual {v1, v4, v5, v6, v8}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 262
    instance-of v9, v5, Lsun/nio/ch/DirectBuffer;

    if-nez v9, :cond_42

    .line 263
    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 264
    .local v9, "shadow":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v4, v9}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 265
    move-object v5, v9

    .line 266
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    move v6, v10

    .line 269
    .end local v9    # "shadow":Ljava/nio/ByteBuffer;
    :cond_42
    move-object v9, v5

    check-cast v9, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v9}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 270
    int-to-long v9, v8

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V

    .line 271
    add-int/lit8 v4, v4, 0x1

    .line 273
    :cond_54
    nop

    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "pos":I
    .end local v7    # "lim":I
    .end local v8    # "rem":I
    add-int/lit8 v0, v0, 0x1

    .line 274
    goto :goto_f

    .line 252
    .restart local v5    # "buf":Ljava/nio/ByteBuffer;
    :cond_58
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Read-only buffer"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "vec":Lsun/nio/ch/IOVecWrapper;
    .end local v2    # "completed":Z
    .end local v4    # "iov_len":I
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "bufs":[Ljava/nio/ByteBuffer;
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    throw v6
    :try_end_60
    .catchall {:try_start_11 .. :try_end_60} :catchall_60

    .line 308
    .end local v0    # "i":I
    .end local v3    # "count":I
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "vec":Lsun/nio/ch/IOVecWrapper;
    .restart local v2    # "completed":Z
    .restart local v4    # "iov_len":I
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "bufs":[Ljava/nio/ByteBuffer;
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "nd":Lsun/nio/ch/NativeDispatcher;
    :catchall_60
    move-exception v0

    goto/16 :goto_ee

    .line 275
    .restart local v0    # "i":I
    .restart local v3    # "count":I
    :cond_63
    const-wide/16 v5, 0x0

    if-nez v4, :cond_7d

    .line 276
    nop

    .line 308
    if-nez v2, :cond_7c

    .line 309
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6b
    if-ge v7, v4, :cond_7c

    .line 310
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 311
    .local v8, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_76

    .line 312
    invoke-static {v8}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_76
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v8    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    .line 276
    .end local v7    # "j":I
    :cond_7c
    return-wide v5

    .line 278
    :cond_7d
    :try_start_7d
    iget-wide v7, v1, Lsun/nio/ch/IOVecWrapper;->address:J

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    invoke-virtual {v10, v9, v7, v8, v4}, Lsun/nio/ch/NativeDispatcher;->readv(Ljava/io/FileDescriptor;JI)J

    move-result-wide v7

    .line 281
    .local v7, "bytesRead":J
    move-wide v11, v7

    .line 282
    .local v11, "left":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_89
    if-ge v13, v4, :cond_d7

    .line 283
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 284
    .local v14, "shadow":Ljava/nio/ByteBuffer;
    cmp-long v15, v11, v5

    if-lez v15, :cond_c6

    .line 285
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 286
    .local v15, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v16

    move/from16 v17, v16

    .line 287
    .local v17, "rem":I
    move/from16 v5, v17

    .end local v17    # "rem":I
    .local v5, "rem":I
    int-to-long v9, v5

    cmp-long v6, v11, v9

    if-lez v6, :cond_a7

    move/from16 v17, v5

    goto :goto_aa

    :cond_a7
    long-to-int v6, v11

    move/from16 v17, v6

    :goto_aa
    move/from16 v6, v17

    .line 288
    .local v6, "n":I
    if-nez v14, :cond_b9

    .line 289
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v9

    .line 290
    .local v9, "pos":I
    add-int v10, v9, v6

    invoke-virtual {v15, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 291
    nop

    .end local v9    # "pos":I
    goto :goto_c4

    .line 292
    :cond_b9
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 295
    :goto_c4
    int-to-long v9, v6

    sub-long/2addr v11, v9

    .line 297
    .end local v5    # "rem":I
    .end local v6    # "n":I
    .end local v15    # "buf":Ljava/nio/ByteBuffer;
    :cond_c6
    if-eqz v14, :cond_cb

    .line 298
    invoke-static {v14}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 299
    :cond_cb
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_ce
    .catchall {:try_start_7d .. :try_end_ce} :catchall_60

    .line 282
    .end local v14    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    goto :goto_89

    .line 302
    .end local v13    # "j":I
    :cond_d7
    const/4 v2, 0x1

    .line 303
    nop

    .line 308
    if-nez v2, :cond_ed

    .line 309
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_dc
    if-ge v5, v4, :cond_ed

    .line 310
    invoke-virtual {v1, v5}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 311
    .local v6, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_e7

    .line 312
    invoke-static {v6}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_e7
    invoke-virtual {v1, v5}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v6    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 303
    .end local v5    # "j":I
    :cond_ed
    return-wide v7

    .line 308
    .end local v0    # "i":I
    .end local v3    # "count":I
    .end local v7    # "bytesRead":J
    .end local v11    # "left":J
    :goto_ee
    if-nez v2, :cond_102

    .line 309
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f1
    if-ge v3, v4, :cond_102

    .line 310
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 311
    .local v5, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_fc

    .line 312
    invoke-static {v5}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_fc
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    .end local v5    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f1

    .line 316
    .end local v3    # "j":I
    :cond_102
    throw v0
.end method

.method static blacklist read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 16
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 212
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 213
    .local v1, "lim":I
    nop

    .line 214
    const/4 v2, 0x0

    if-gt v0, v1, :cond_f

    sub-int v3, v1, v0

    goto :goto_10

    :cond_f
    move v3, v2

    .line 216
    .local v3, "rem":I
    :goto_10
    if-nez v3, :cond_13

    .line 217
    return v2

    .line 218
    :cond_13
    const/4 v2, 0x0

    .line 219
    .local v2, "n":I
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2c

    .line 220
    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v6, v4

    move-object v4, p4

    move-object v5, p0

    move v8, v3

    move-wide v9, p2

    invoke-virtual/range {v4 .. v10}, Lsun/nio/ch/NativeDispatcher;->pread(Ljava/io/FileDescriptor;JIJ)I

    move-result v2

    goto :goto_39

    .line 223
    :cond_2c
    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {p4, p0, v4, v5, v3}, Lsun/nio/ch/NativeDispatcher;->read(Ljava/io/FileDescriptor;JI)I

    move-result v2

    .line 225
    :goto_39
    if-lez v2, :cond_40

    .line 226
    add-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    :cond_40
    return v2
.end method

.method static native blacklist setfdVal(Ljava/io/FileDescriptor;I)V
.end method

.method static blacklist write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 11
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v0, :cond_9

    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v0

    return v0

    .line 54
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 55
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 56
    .local v1, "lim":I
    nop

    .line 57
    if-gt v0, v1, :cond_17

    sub-int v2, v1, v0

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 58
    .local v2, "rem":I
    :goto_18
    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 60
    .local v3, "bb":Ljava/nio/ByteBuffer;
    :try_start_1c
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-static {p0, v3, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    .line 66
    .local v4, "n":I
    if-lez v4, :cond_30

    .line 68
    add-int v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_35

    .line 70
    :cond_30
    nop

    .line 72
    invoke-static {v3}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 70
    return v4

    .line 72
    .end local v4    # "n":I
    :catchall_35
    move-exception v4

    invoke-static {v3}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 73
    throw v4
.end method

.method static blacklist write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 24
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v1

    .line 112
    .local v1, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v2, 0x0

    .line 113
    .local v2, "completed":Z
    const/4 v0, 0x0

    .line 117
    .local v0, "iov_len":I
    add-int v3, p2, p3

    .line 118
    .local v3, "count":I
    move/from16 v4, p2

    move/from16 v18, v4

    move v4, v0

    move/from16 v0, v18

    .line 119
    .local v0, "i":I
    .local v4, "iov_len":I
    :goto_f
    if-ge v0, v3, :cond_5e

    :try_start_11
    sget v5, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    if-ge v4, v5, :cond_5e

    .line 120
    aget-object v5, p1, v0

    .line 121
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 122
    .local v6, "pos":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 123
    .local v7, "lim":I
    nop

    .line 124
    if-gt v6, v7, :cond_25

    sub-int v8, v7, v6

    goto :goto_26

    :cond_25
    const/4 v8, 0x0

    .line 125
    .local v8, "rem":I
    :goto_26
    if-lez v8, :cond_57

    .line 126
    invoke-virtual {v1, v4, v5, v6, v8}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 129
    instance-of v9, v5, Lsun/nio/ch/DirectBuffer;

    if-nez v9, :cond_45

    .line 130
    invoke-static {v8}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 131
    .local v9, "shadow":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    invoke-virtual {v1, v4, v9}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 134
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    move-object v5, v9

    .line 136
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    move v6, v10

    .line 139
    .end local v9    # "shadow":Ljava/nio/ByteBuffer;
    :cond_45
    move-object v9, v5

    check-cast v9, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v9}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 140
    int-to-long v9, v8

    invoke-virtual {v1, v4, v9, v10}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_5b

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 143
    :cond_57
    nop

    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "pos":I
    .end local v7    # "lim":I
    .end local v8    # "rem":I
    add-int/lit8 v0, v0, 0x1

    .line 144
    goto :goto_f

    .line 174
    .end local v0    # "i":I
    .end local v3    # "count":I
    :catchall_5b
    move-exception v0

    goto/16 :goto_da

    .line 145
    .restart local v0    # "i":I
    .restart local v3    # "count":I
    :cond_5e
    const-wide/16 v5, 0x0

    if-nez v4, :cond_78

    .line 146
    nop

    .line 174
    if-nez v2, :cond_77

    .line 175
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_66
    if-ge v7, v4, :cond_77

    .line 176
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 177
    .local v8, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v8, :cond_71

    .line 178
    invoke-static {v8}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_71
    invoke-virtual {v1, v7}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v8    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 146
    .end local v7    # "j":I
    :cond_77
    return-wide v5

    .line 148
    :cond_78
    :try_start_78
    iget-wide v7, v1, Lsun/nio/ch/IOVecWrapper;->address:J

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    invoke-virtual {v10, v9, v7, v8, v4}, Lsun/nio/ch/NativeDispatcher;->writev(Ljava/io/FileDescriptor;JI)J

    move-result-wide v7

    .line 151
    .local v7, "bytesWritten":J
    move-wide v11, v7

    .line 152
    .local v11, "left":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_84
    if-ge v13, v4, :cond_c3

    .line 153
    cmp-long v14, v11, v5

    if-lez v14, :cond_ae

    .line 154
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 155
    .local v14, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v15

    .line 156
    .local v15, "pos":I
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v16

    move/from16 v17, v16

    .line 157
    .local v17, "rem":I
    move/from16 v5, v17

    .end local v17    # "rem":I
    .local v5, "rem":I
    int-to-long v9, v5

    cmp-long v6, v11, v9

    if-lez v6, :cond_a2

    move/from16 v17, v5

    goto :goto_a5

    :cond_a2
    long-to-int v6, v11

    move/from16 v17, v6

    :goto_a5
    move/from16 v6, v17

    .line 158
    .local v6, "n":I
    add-int v9, v15, v6

    invoke-virtual {v14, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    int-to-long v9, v6

    sub-long/2addr v11, v9

    .line 162
    .end local v5    # "rem":I
    .end local v6    # "n":I
    .end local v14    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "pos":I
    :cond_ae
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 163
    .local v5, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_b7

    .line 164
    invoke-static {v5}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 165
    :cond_b7
    invoke-virtual {v1, v13}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_ba
    .catchall {:try_start_78 .. :try_end_ba} :catchall_5b

    .line 152
    .end local v5    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v5, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    goto :goto_84

    .line 168
    .end local v13    # "j":I
    :cond_c3
    const/4 v2, 0x1

    .line 169
    nop

    .line 174
    if-nez v2, :cond_d9

    .line 175
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_c8
    if-ge v5, v4, :cond_d9

    .line 176
    invoke-virtual {v1, v5}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 177
    .local v6, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_d3

    .line 178
    invoke-static {v6}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_d3
    invoke-virtual {v1, v5}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v6    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .line 169
    .end local v5    # "j":I
    :cond_d9
    return-wide v7

    .line 174
    .end local v0    # "i":I
    .end local v3    # "count":I
    .end local v7    # "bytesWritten":J
    .end local v11    # "left":J
    :goto_da
    if-nez v2, :cond_ee

    .line 175
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_dd
    if-ge v3, v4, :cond_ee

    .line 176
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 177
    .local v5, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_e8

    .line 178
    invoke-static {v5}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_e8
    invoke-virtual {v1, v3}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    .end local v5    # "shadow":Ljava/nio/ByteBuffer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_dd

    .line 182
    .end local v3    # "j":I
    :cond_ee
    throw v0
.end method

.method static blacklist write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    move-object v0, p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 81
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 82
    .local v2, "lim":I
    nop

    .line 83
    const/4 v3, 0x0

    if-gt v1, v2, :cond_10

    sub-int v4, v2, v1

    goto :goto_11

    :cond_10
    move v4, v3

    .line 85
    .local v4, "rem":I
    :goto_11
    const/4 v12, 0x0

    .line 86
    .local v12, "written":I
    if-nez v4, :cond_15

    .line 87
    return v3

    .line 88
    :cond_15
    const-wide/16 v5, -0x1

    cmp-long v3, p2, v5

    if-eqz v3, :cond_32

    .line 89
    move-object v3, v0

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    .line 90
    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v7, v5

    .line 89
    move-object/from16 v5, p4

    move-object v6, p0

    move v9, v4

    move-wide v10, p2

    invoke-virtual/range {v5 .. v11}, Lsun/nio/ch/NativeDispatcher;->pwrite(Ljava/io/FileDescriptor;JIJ)I

    move-result v3

    move-object/from16 v7, p4

    move v5, v3

    move-object v3, p0

    .end local v12    # "written":I
    .local v3, "written":I
    goto :goto_42

    .line 93
    .end local v3    # "written":I
    .restart local v12    # "written":I
    :cond_32
    move-object v3, v0

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v5, v7

    move-object v3, p0

    move-object/from16 v7, p4

    invoke-virtual {v7, p0, v5, v6, v4}, Lsun/nio/ch/NativeDispatcher;->write(Ljava/io/FileDescriptor;JI)I

    move-result v5

    .line 95
    .end local v12    # "written":I
    .local v5, "written":I
    :goto_42
    if-lez v5, :cond_49

    .line 96
    add-int v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    :cond_49
    return v5
.end method
