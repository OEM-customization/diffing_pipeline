.class public Lsun/nio/ch/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IOV_MAX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/IOUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    .line 373
    invoke-static {}, Lsun/nio/ch/IOUtil;->iovMax()I

    move-result v0

    sput v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native drain(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native fdLimit()I
.end method

.method public static native fdVal(Ljava/io/FileDescriptor;)I
.end method

.method static native iovMax()I
.end method

.method static native makePipe(Z)J
.end method

.method public static newFD(I)Ljava/io/FileDescriptor;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 320
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 321
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p0}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    .line 322
    return-object v0
.end method

.method static native randomBytes([B)Z
.end method

.method static read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 9
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Read-only buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_f
    instance-of v2, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v2, :cond_18

    .line 192
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v2

    return v2

    .line 195
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_20
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    .line 198
    .local v1, "n":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    if-lez v1, :cond_2c

    .line 200
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    .line 203
    :cond_2c
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 201
    return v1

    .line 202
    .end local v1    # "n":I
    :catchall_30
    move-exception v2

    .line 203
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 202
    throw v2
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 29
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

    .prologue
    .line 240
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v19

    .line 242
    .local v19, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v5, 0x0

    .line 243
    .local v5, "completed":Z
    const/4 v10, 0x0

    .line 247
    .local v10, "iov_len":I
    add-int v8, p2, p3

    .line 248
    .local v8, "count":I
    move/from16 v9, p2

    .line 249
    .local v9, "i":I
    :goto_a
    if-ge v9, v8, :cond_a6

    :try_start_c
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_a6

    .line 250
    aget-object v4, p1, v9

    .line 251
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v20

    if-eqz v20, :cond_3c

    .line 252
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Read-only buffer"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_23

    .line 305
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :catchall_23
    move-exception v20

    .line 308
    if-nez v5, :cond_14a

    .line 309
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_27
    if-ge v11, v10, :cond_14a

    .line 310
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 311
    .local v18, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_34

    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_34
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    .line 253
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 254
    .local v16, "pos":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    .line 255
    .local v14, "lim":I
    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v20, :cond_52

    move/from16 v0, v16

    if-le v0, v14, :cond_52

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 256
    :cond_52
    move/from16 v0, v16

    if-gt v0, v14, :cond_a3

    sub-int v17, v14, v16

    .line 258
    .local v17, "rem":I
    :goto_58
    if-lez v17, :cond_9f

    .line 259
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 262
    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    move/from16 v20, v0

    if-nez v20, :cond_7a

    .line 263
    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 264
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 265
    move-object/from16 v4, v18

    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 269
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_7a
    move-object v0, v4

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 270
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_9d
    .catchall {:try_start_3c .. :try_end_9d} :catchall_23

    .line 271
    add-int/lit8 v10, v10, 0x1

    .line 273
    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 256
    .end local v17    # "rem":I
    :cond_a3
    const/16 v17, 0x0

    .restart local v17    # "rem":I
    goto :goto_58

    .line 275
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_a6
    if-nez v10, :cond_c3

    .line 276
    const-wide/16 v20, 0x0

    .line 308
    if-nez v5, :cond_c2

    .line 309
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_ad
    if-ge v11, v10, :cond_c2

    .line 310
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 311
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_ba

    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_ba
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_ad

    .line 276
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_c2
    return-wide v20

    .line 278
    :cond_c3
    :try_start_c3
    move-object/from16 v0, v19

    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->readv(Ljava/io/FileDescriptor;JI)J

    move-result-wide v6

    .line 281
    .local v6, "bytesRead":J
    move-wide v12, v6

    .line 282
    .local v12, "left":J
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_d5
    if-ge v11, v10, :cond_130

    .line 283
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 284
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_10e

    .line 285
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 286
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v17

    .line 287
    .restart local v17    # "rem":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v12, v20

    if-lez v20, :cond_11b

    move/from16 v15, v17

    .line 288
    .local v15, "n":I
    :goto_fa
    if-nez v18, :cond_11d

    .line 289
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v16

    .line 290
    .restart local v16    # "pos":I
    add-int v20, v16, v15

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 295
    .end local v16    # "pos":I
    :goto_109
    int-to-long v0, v15

    move-wide/from16 v20, v0

    sub-long v12, v12, v20

    .line 297
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v17    # "rem":I
    :cond_10e
    if-eqz v18, :cond_113

    .line 298
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 299
    :cond_113
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 282
    add-int/lit8 v11, v11, 0x1

    goto :goto_d5

    .line 287
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v17    # "rem":I
    :cond_11b
    long-to-int v15, v12

    .restart local v15    # "n":I
    goto :goto_fa

    .line 292
    :cond_11d
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_12f
    .catchall {:try_start_c3 .. :try_end_12f} :catchall_23

    goto :goto_109

    .line 302
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v17    # "rem":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_130
    const/4 v5, 0x1

    .line 308
    if-nez v5, :cond_149

    .line 309
    const/4 v11, 0x0

    :goto_134
    if-ge v11, v10, :cond_149

    .line 310
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 311
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_141

    .line 312
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 313
    :cond_141
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_134

    .line 303
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_149
    return-wide v6

    .line 305
    .end local v6    # "bytesRead":J
    .end local v11    # "j":I
    .end local v12    # "left":J
    :cond_14a
    throw v20
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 15
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 212
    .local v9, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 213
    .local v7, "lim":I
    sget-boolean v0, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v0, :cond_15

    if-le v9, v7, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_15
    if-gt v9, v7, :cond_1c

    sub-int v4, v7, v9

    .line 216
    .local v4, "rem":I
    :goto_19
    if-nez v4, :cond_1e

    .line 217
    return v1

    .line 214
    .end local v4    # "rem":I
    :cond_1c
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_19

    .line 218
    :cond_1e
    const/4 v8, 0x0

    .line 219
    .local v8, "n":I
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3d

    move-object v0, p1

    .line 220
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v9

    add-long/2addr v2, v0

    move-object v0, p4

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pread(Ljava/io/FileDescriptor;JIJ)I

    move-result v8

    .line 225
    :goto_35
    if-lez v8, :cond_3c

    .line 226
    add-int v0, v9, v8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    :cond_3c
    return v8

    :cond_3d
    move-object v0, p1

    .line 223
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v9

    add-long/2addr v0, v2

    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->read(Ljava/io/FileDescriptor;JI)I

    move-result v8

    goto :goto_35
.end method

.method static native setfdVal(Ljava/io/FileDescriptor;I)V
.end method

.method static write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
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

    .prologue
    .line 50
    instance-of v5, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v5, :cond_9

    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    return v5

    .line 54
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 55
    .local v3, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 56
    .local v1, "lim":I
    sget-boolean v5, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v5, :cond_1d

    if-le v3, v1, :cond_1d

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 57
    :cond_1d
    if-gt v3, v1, :cond_3d

    sub-int v4, v1, v3

    .line 58
    .local v4, "rem":I
    :goto_21
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :try_start_25
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v2

    .line 66
    .local v2, "n":I
    if-lez v2, :cond_39

    .line 68
    add-int v5, v3, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_3f

    .line 72
    :cond_39
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 70
    return v2

    .line 57
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "n":I
    .end local v4    # "rem":I
    :cond_3d
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_21

    .line 71
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    :catchall_3f
    move-exception v5

    .line 72
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 71
    throw v5
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .registers 29
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

    .prologue
    .line 110
    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v19

    .line 112
    .local v19, "vec":Lsun/nio/ch/IOVecWrapper;
    const/4 v5, 0x0

    .line 113
    .local v5, "completed":Z
    const/4 v10, 0x0

    .line 117
    .local v10, "iov_len":I
    add-int v8, p2, p3

    .line 118
    .local v8, "count":I
    move/from16 v9, p2

    .line 119
    .local v9, "i":I
    :goto_a
    if-ge v9, v8, :cond_a4

    :try_start_c
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_a4

    .line 120
    aget-object v4, p1, v9

    .line 121
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 122
    .local v16, "pos":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    .line 123
    .local v14, "lim":I
    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v20, :cond_43

    move/from16 v0, v16

    if-le v0, v14, :cond_43

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2a

    .line 171
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    :catchall_2a
    move-exception v20

    .line 174
    if-nez v5, :cond_133

    .line 175
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2e
    if-ge v11, v10, :cond_133

    .line 176
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 177
    .local v18, "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_3b

    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_3b
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 124
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v14    # "lim":I
    .restart local v16    # "pos":I
    :cond_43
    move/from16 v0, v16

    if-gt v0, v14, :cond_a1

    sub-int v17, v14, v16

    .line 125
    .local v17, "rem":I
    :goto_49
    if-lez v17, :cond_9d

    .line 126
    :try_start_4b
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    .line 129
    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    move/from16 v20, v0

    if-nez v20, :cond_78

    .line 130
    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 131
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 133
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    .line 134
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    move-object/from16 v4, v18

    .line 136
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    .line 139
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_78
    move-object v0, v4

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    .line 140
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_9b
    .catchall {:try_start_4b .. :try_end_9b} :catchall_2a

    .line 141
    add-int/lit8 v10, v10, 0x1

    .line 143
    :cond_9d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 124
    .end local v17    # "rem":I
    :cond_a1
    const/16 v17, 0x0

    .restart local v17    # "rem":I
    goto :goto_49

    .line 145
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v14    # "lim":I
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_a4
    if-nez v10, :cond_c1

    .line 146
    const-wide/16 v20, 0x0

    .line 174
    if-nez v5, :cond_c0

    .line 175
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_ab
    if-ge v11, v10, :cond_c0

    .line 176
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 177
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_b8

    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_b8
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_ab

    .line 146
    .end local v11    # "j":I
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_c0
    return-wide v20

    .line 148
    :cond_c1
    :try_start_c1
    move-object/from16 v0, v19

    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->writev(Ljava/io/FileDescriptor;JI)J

    move-result-wide v6

    .line 151
    .local v6, "bytesWritten":J
    move-wide v12, v6

    .line 152
    .local v12, "left":J
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_d3
    if-ge v11, v10, :cond_119

    .line 153
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_104

    .line 154
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 155
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v16

    .line 156
    .restart local v16    # "pos":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v17

    .line 157
    .restart local v17    # "rem":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v12, v20

    if-lez v20, :cond_117

    move/from16 v15, v17

    .line 158
    .local v15, "n":I
    :goto_f8
    add-int v20, v16, v15

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    int-to-long v0, v15

    move-wide/from16 v20, v0

    sub-long v12, v12, v20

    .line 162
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_104
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 163
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_10f

    .line 164
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 165
    :cond_10f
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_114
    .catchall {:try_start_c1 .. :try_end_114} :catchall_2a

    .line 152
    add-int/lit8 v11, v11, 0x1

    goto :goto_d3

    .line 157
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v16    # "pos":I
    .restart local v17    # "rem":I
    :cond_117
    long-to-int v15, v12

    .restart local v15    # "n":I
    goto :goto_f8

    .line 168
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v15    # "n":I
    .end local v16    # "pos":I
    .end local v17    # "rem":I
    :cond_119
    const/4 v5, 0x1

    .line 174
    if-nez v5, :cond_132

    .line 175
    const/4 v11, 0x0

    :goto_11d
    if-ge v11, v10, :cond_132

    .line 176
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 177
    .restart local v18    # "shadow":Ljava/nio/ByteBuffer;
    if-eqz v18, :cond_12a

    .line 178
    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    :cond_12a
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto :goto_11d

    .line 169
    .end local v18    # "shadow":Ljava/nio/ByteBuffer;
    :cond_132
    return-wide v6

    .line 171
    .end local v6    # "bytesWritten":J
    .end local v11    # "j":I
    .end local v12    # "left":J
    :cond_133
    throw v20
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .registers 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufs"    # [Ljava/nio/ByteBuffer;
    .param p2, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .registers 15
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .param p4, "nd"    # Lsun/nio/ch/NativeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 81
    .local v8, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 82
    .local v7, "lim":I
    sget-boolean v0, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v0, :cond_15

    if-le v8, v7, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_15
    if-gt v8, v7, :cond_1d

    sub-int v4, v7, v8

    .line 85
    .local v4, "rem":I
    :goto_19
    const/4 v9, 0x0

    .line 86
    .local v9, "written":I
    if-nez v4, :cond_1f

    .line 87
    return v1

    .line 83
    .end local v4    # "rem":I
    .end local v9    # "written":I
    :cond_1d
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_19

    .line 88
    .restart local v9    # "written":I
    :cond_1f
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3d

    move-object v0, p1

    .line 90
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v8

    add-long/2addr v2, v0

    move-object v0, p4

    move-object v1, p0

    move-wide v5, p2

    .line 89
    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pwrite(Ljava/io/FileDescriptor;JIJ)I

    move-result v9

    .line 95
    :goto_35
    if-lez v9, :cond_3c

    .line 96
    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    :cond_3c
    return v9

    :cond_3d
    move-object v0, p1

    .line 93
    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v8

    add-long/2addr v0, v2

    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->write(Ljava/io/FileDescriptor;JI)I

    move-result v9

    goto :goto_35
.end method
