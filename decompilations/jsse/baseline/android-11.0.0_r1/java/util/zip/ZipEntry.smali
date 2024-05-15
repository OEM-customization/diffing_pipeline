.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final whitelist core-platform-api test-api DEFLATED:I = 0x8

.field static final greylist-max-o DOSTIME_BEFORE_1980:J = 0x210000L

.field public static final whitelist core-platform-api test-api STORED:I = 0x0

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

.field greylist method:I

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

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
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

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
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

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/zip/ZipEntry;)V
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
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 628
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 629
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_14

    :cond_c
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_14
    iput-object v1, v0, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_16} :catch_17

    .line 630
    return-object v0

    .line 631
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :catch_17
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getComment()Ljava/lang/String;
    .registers 2

    .line 597
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCompressedSize()J
    .registers 3

    .line 391
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getCrc()J
    .registers 3

    .line 430
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getCreationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 350
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public greylist-max-o core-platform-api getDataOffset()J
    .registers 3

    .line 170
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getExtra()[B
    .registers 2

    .line 564
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .line 314
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .line 273
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_5

    .line 274
    return-object v0

    .line 275
    :cond_5
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 277
    :cond_f
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMethod()I
    .registers 2

    .line 456
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSize()J
    .registers 3

    .line 378
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getTime()J
    .registers 6

    .line 226
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_9

    .line 227
    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 229
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

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 620
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isDirectory()Z
    .registers 3

    .line 606
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api setComment(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .line 580
    if-eqz p1, :cond_30

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_f

    goto :goto_30

    .line 581
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 582
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_30
    :goto_30
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public whitelist core-platform-api test-api setCompressedSize(J)V
    .registers 3
    .param p1, "csize"    # J

    .line 402
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 403
    return-void
.end method

.method public whitelist core-platform-api test-api setCrc(J)V
    .registers 5
    .param p1, "crc"    # J

    .line 415
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_12

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    .line 418
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 419
    return-void

    .line 416
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 334
    const-string v0, "creationTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 335
    return-object p0
.end method

.method public whitelist core-platform-api test-api setExtra([B)V
    .registers 3
    .param p1, "extra"    # [B

    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 479
    return-void
.end method

.method greylist-max-o setExtra0([BZ)V
    .registers 11
    .param p1, "extra"    # [B
    .param p2, "doZIP64"    # Z

    .line 490
    if-eqz p1, :cond_d3

    .line 491
    array-length v0, p1

    const v1, 0xffff

    if-gt v0, v1, :cond_cb

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "off":I
    array-length v1, p1

    .line 497
    .local v1, "len":I
    :goto_a
    add-int/lit8 v2, v0, 0x4

    if-ge v2, v1, :cond_d3

    .line 498
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 499
    .local v2, "tag":I
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 500
    .local v3, "sz":I
    add-int/lit8 v0, v0, 0x4

    .line 501
    add-int v4, v0, v3

    if-le v4, v1, :cond_20

    .line 502
    goto/16 :goto_d3

    .line 503
    :cond_20
    const/4 v4, 0x1

    if-eq v2, v4, :cond_b4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_77

    const/16 v4, 0x5455

    if-eq v2, v4, :cond_2d

    goto/16 :goto_c8

    .line 529
    :cond_2d
    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v4

    .line 530
    .local v4, "flag":I
    const/4 v5, 0x1

    .line 535
    .local v5, "sz0":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_4a

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_4a

    .line 536
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 537
    add-int/lit8 v5, v5, 0x4

    .line 539
    :cond_4a
    and-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_60

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_60

    .line 540
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 541
    add-int/lit8 v5, v5, 0x4

    .line 543
    :cond_60
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_c8

    add-int/lit8 v6, v5, 0x4

    if-gt v6, v3, :cond_c8

    .line 544
    add-int v6, v0, v5

    invoke-static {p1, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    iput-object v6, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 545
    add-int/lit8 v5, v5, 0x4

    goto :goto_c8

    .line 519
    .end local v4    # "flag":I
    .end local v5    # "sz0":I
    :cond_77
    const/16 v5, 0x20

    if-ge v3, v5, :cond_7c

    .line 520
    goto :goto_c8

    .line 521
    :cond_7c
    add-int/lit8 v5, v0, 0x4

    .line 522
    .local v5, "pos":I
    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v6

    if-ne v6, v4, :cond_c8

    add-int/lit8 v4, v5, 0x2

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    const/16 v6, 0x18

    if-eq v4, v6, :cond_8f

    .line 523
    goto :goto_c8

    .line 524
    :cond_8f
    add-int/lit8 v4, v5, 0x4

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    iput-object v4, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 525
    add-int/lit8 v4, v5, 0xc

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    iput-object v4, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 526
    add-int/lit8 v4, v5, 0x14

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    iput-object v4, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 527
    goto :goto_c8

    .line 505
    .end local v5    # "pos":I
    :cond_b4
    if-eqz p2, :cond_c8

    .line 512
    const/16 v4, 0x10

    if-lt v3, v4, :cond_c8

    .line 513
    invoke-static {p1, v0}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 514
    add-int/lit8 v4, v0, 0x8

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 550
    :cond_c8
    :goto_c8
    add-int/2addr v0, v3

    .line 551
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto/16 :goto_a

    .line 492
    .end local v0    # "off":I
    .end local v1    # "len":I
    :cond_cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid extra field length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_d3
    :goto_d3
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 554
    return-void
.end method

.method public whitelist core-platform-api test-api setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 297
    const-string v0, "lastAccessTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 298
    return-object p0
.end method

.method public whitelist core-platform-api test-api setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 251
    const-string v0, "lastModifiedTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 252
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 253
    return-object p0
.end method

.method public whitelist core-platform-api test-api setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .line 443
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 444
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_f
    :goto_f
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 447
    return-void
.end method

.method public whitelist core-platform-api test-api setSize(J)V
    .registers 5
    .param p1, "size"    # J

    .line 365
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 368
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 369
    return-void

    .line 366
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setTime(J)V
    .registers 7
    .param p1, "time"    # J

    .line 199
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 202
    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const-wide v0, 0x3abd8960000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1a

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_22

    .line 205
    :cond_1a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 207
    :goto_22
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 613
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
