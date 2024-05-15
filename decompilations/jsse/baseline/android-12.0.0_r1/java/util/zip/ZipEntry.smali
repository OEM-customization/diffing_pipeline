.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final whitelist test-api DEFLATED:I = 0x8

.field static final greylist-max-o DOSTIME_BEFORE_1980:J = 0x210000L

.field public static final whitelist test-api STORED:I = 0x0

.field public static final greylist-max-o UPPER_DOSTIME_BOUND:J = 0x3abd8960000L


# instance fields
.field greylist-max-o atime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o comment:Ljava/lang/String;

.field greylist-max-o crc:J

.field greylist-max-o csize:J

.field greylist-max-o ctime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o dataOffset:J

.field greylist-max-o extra:[B

.field greylist-max-o flag:I

.field greylist-max-r method:I

.field greylist-max-o mtime:Ljava/nio/file/attribute/FileTime;

.field greylist-max-o name:Ljava/lang/String;

.field greylist-max-o size:J

.field greylist-max-o xdostime:J


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 51
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 52
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 165
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 51
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 52
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 123
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_27

    .line 132
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 133
    return-void

    .line 129
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .registers 29
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "xdostime"    # I
    .param p11, "extra"    # [B
    .param p12, "dataOffset"    # J

    .line 100
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 51
    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 52
    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 53
    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 54
    const/4 v1, -0x1

    iput v1, v0, Ljava/util/zip/ZipEntry;->method:I

    .line 55
    const/4 v1, 0x0

    iput v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    .line 101
    move-object/from16 v2, p1

    iput-object v2, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 102
    move-object/from16 v3, p2

    iput-object v3, v0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 103
    move-wide/from16 v4, p3

    iput-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 104
    move-wide/from16 v6, p5

    iput-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 105
    move-wide/from16 v8, p7

    iput-wide v8, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 106
    move/from16 v10, p9

    iput v10, v0, Ljava/util/zip/ZipEntry;->method:I

    .line 107
    move/from16 v11, p10

    int-to-long v12, v11

    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 108
    move-wide/from16 v12, p12

    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 109
    move-object/from16 v14, p11

    invoke-virtual {p0, v14, v1}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 110
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/zip/ZipEntry;)V
    .registers 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 51
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 52
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 145
    const-string v0, "entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 147
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 148
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 149
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 150
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 151
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 152
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 153
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 154
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 155
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 156
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 157
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 159
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 160
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 629
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 630
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_12
    iput-object v1, v0, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    .line 631
    return-object v0

    .line 632
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :catch_15
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getComment()Ljava/lang/String;
    .registers 2

    .line 598
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getCompressedSize()J
    .registers 3

    .line 392
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public whitelist test-api getCrc()J
    .registers 3

    .line 431
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public whitelist test-api getCreationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 351
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public greylist-max-o test-api getDataOffset()J
    .registers 3

    .line 170
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public whitelist test-api getExtra()[B
    .registers 2

    .line 565
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public whitelist test-api getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 315
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public whitelist test-api getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 274
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_5

    .line 275
    return-object v0

    .line 276
    :cond_5
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 278
    :cond_f
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMethod()I
    .registers 2

    .line 457
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSize()J
    .registers 3

    .line 379
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public whitelist test-api getTime()J
    .registers 6

    .line 227
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_9

    .line 228
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 230
    :cond_9
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->extendedDosToJavaTime(J)J

    move-result-wide v2

    :cond_15
    return-wide v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 621
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isDirectory()Z
    .registers 3

    .line 607
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setComment(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .line 581
    if-eqz p1, :cond_30

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_f

    goto :goto_30

    .line 582
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 583
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_30
    :goto_30
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public whitelist test-api setCompressedSize(J)V
    .registers 3
    .param p1, "csize"    # J

    .line 403
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 404
    return-void
.end method

.method public whitelist test-api setCrc(J)V
    .registers 5
    .param p1, "crc"    # J

    .line 416
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 419
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 420
    return-void

    .line 417
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 335
    const-string v0, "creationTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 336
    return-object p0
.end method

.method public whitelist test-api setExtra([B)V
    .registers 3
    .param p1, "extra"    # [B

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 480
    return-void
.end method

.method greylist-max-o setExtra0([BZ)V
    .registers 11
    .param p1, "extra"    # [B
    .param p2, "doZIP64"    # Z

    .line 491
    if-eqz p1, :cond_cc

    .line 492
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_c4

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "off":I
    array-length v1, p1

    .line 498
    .local v1, "len":I
    :goto_a
    add-int/lit8 v2, v0, 0x4

    if-ge v2, v1, :cond_cc

    .line 499
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 500
    .local v2, "tag":I
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 501
    .local v3, "sz":I
    add-int/lit8 v0, v0, 0x4

    .line 502
    add-int v4, v0, v3

    if-le v4, v1, :cond_20

    .line 503
    goto/16 :goto_cc

    .line 504
    :cond_20
    sparse-switch v2, :sswitch_data_d0

    goto/16 :goto_c1

    .line 530
    :sswitch_25
    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 531
    .local v4, "flag":I
    const/4 v5, 0x1

    .line 536
    .local v5, "sz0":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_42

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_42

    .line 537
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 538
    add-int/lit8 v5, v5, 0x4

    .line 540
    :cond_42
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_58

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_58

    .line 541
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 542
    add-int/lit8 v5, v5, 0x4

    .line 544
    :cond_58
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_c1

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_c1

    .line 545
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 546
    add-int/lit8 v5, v5, 0x4

    goto :goto_c1

    .line 520
    .end local v4    # "flag":I
    .end local v5    # "sz0":I
    :sswitch_6f
    const/16 v4, 0x20

    if-ge v3, v4, :cond_74

    .line 521
    goto :goto_c1

    .line 522
    :cond_74
    add-int/lit8 v4, v0, 0x4

    .line 523
    .local v4, "pos":I
    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c1

    add-int/lit8 v5, v4, 0x2

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_88

    .line 524
    goto :goto_c1

    .line 525
    :cond_88
    add-int/lit8 v5, v4, 0x4

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    iput-object v5, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 526
    add-int/lit8 v5, v4, 0xc

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    iput-object v5, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 527
    add-int/lit8 v5, v4, 0x14

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    iput-object v5, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 528
    goto :goto_c1

    .line 506
    .end local v4    # "pos":I
    :sswitch_ad
    if-eqz p2, :cond_c1

    .line 513
    const/16 v4, 0x10

    if-lt v3, v4, :cond_c1

    .line 514
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 515
    add-int/lit8 v4, v0, 0x8

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 551
    :cond_c1
    :goto_c1
    add-int/2addr v0, v3

    .line 552
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto/16 :goto_a

    .line 493
    .end local v0    # "off":I
    .end local v1    # "len":I
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid extra field length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_cc
    :goto_cc
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 555
    return-void

    nop

    :sswitch_data_d0
    .sparse-switch
        0x1 -> :sswitch_ad
        0xa -> :sswitch_6f
        0x5455 -> :sswitch_25
    .end sparse-switch
.end method

.method public whitelist test-api setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 298
    const-string v0, "lastAccessTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 299
    return-object p0
.end method

.method public whitelist test-api setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 252
    const-string v0, "lastModifiedTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 253
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 254
    return-object p0
.end method

.method public whitelist test-api setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .line 444
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 445
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_f
    :goto_f
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 448
    return-void
.end method

.method public whitelist test-api setSize(J)V
    .registers 5
    .param p1, "size"    # J

    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 369
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 370
    return-void

    .line 367
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setTime(J)V
    .registers 7
    .param p1, "time"    # J

    .line 200
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 203
    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const-wide v0, 0x3abd8960000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1a

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_22

    .line 206
    :cond_1a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 208
    :goto_22
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 614
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
