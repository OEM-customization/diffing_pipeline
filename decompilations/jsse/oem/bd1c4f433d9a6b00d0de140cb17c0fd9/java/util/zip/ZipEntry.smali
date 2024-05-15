.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field static final DOSTIME_BEFORE_1980:J = 0x210000L

.field public static final STORED:I = 0x0

.field public static final UPPER_DOSTIME_BOUND:J = 0x3abd8960000L


# instance fields
.field atime:Ljava/nio/file/attribute/FileTime;

.field comment:Ljava/lang/String;

.field crc:J

.field csize:J

.field ctime:Ljava/nio/file/attribute/FileTime;

.field dataOffset:J

.field extra:[B

.field flag:I

.field method:I

.field mtime:Ljava/nio/file/attribute/FileTime;

.field name:Ljava/lang/String;

.field size:J

.field xdostime:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 54
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 54
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 123
    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_4a

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_4a
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJII[BJ)V
    .registers 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "xdostime"    # I
    .param p11, "extra"    # [B
    .param p12, "dataOffset"    # J

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 82
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 84
    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 85
    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 86
    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 87
    iput p9, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 88
    int-to-long v0, p10

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 89
    iput-wide p12, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p11, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;

    .prologue
    const-wide/16 v0, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 53
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 54
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 142
    const-string/jumbo v0, "entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 144
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 145
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 146
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 147
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 148
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 149
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 150
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 151
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 152
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iput v0, p0, Ljava/util/zip/ZipEntry;->flag:I

    .line 153
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 154
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 155
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    .line 156
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 631
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 632
    .local v1, "e":Ljava/util/zip/ZipEntry;
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    if-nez v3, :cond_e

    :goto_b
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B

    .line 633
    return-object v1

    .line 632
    :cond_e
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_b

    .line 634
    .end local v1    # "e":Ljava/util/zip/ZipEntry;
    :catch_17
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressedSize()J
    .registers 3

    .prologue
    .line 388
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->csize:J

    return-wide v0
.end method

.method public getCrc()J
    .registers 3

    .prologue
    .line 427
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    return-wide v0
.end method

.method public getCreationTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getDataOffset()J
    .registers 3

    .prologue
    .line 165
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    return-wide v0
.end method

.method public getExtra()[B
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    return-object v0
.end method

.method public getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v0, :cond_8

    .line 271
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    return-object v0

    .line 272
    :cond_8
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 273
    return-object v4

    .line 274
    :cond_11
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 453
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 375
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 223
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v2, :cond_d

    .line 224
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 226
    :cond_d
    iget-wide v2, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_19

    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->extendedDosToJavaTime(J)J

    move-result-wide v0

    :cond_19
    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 578
    if-nez p1, :cond_6

    .line 579
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 580
    return-void

    .line 584
    :cond_6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_37

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_37
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setCompressedSize(J)V
    .registers 4
    .param p1, "csize"    # J

    .prologue
    .line 399
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->csize:J

    .line 400
    return-void
.end method

.method public setCrc(J)V
    .registers 6
    .param p1, "crc"    # J

    .prologue
    .line 412
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_18

    .line 413
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry crc-32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_18
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    .line 416
    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 331
    const-string/jumbo v0, "creationTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 332
    return-object p0
.end method

.method public setExtra([B)V
    .registers 3
    .param p1, "extra"    # [B

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 476
    return-void
.end method

.method setExtra0([BZ)V
    .registers 13
    .param p1, "extra"    # [B
    .param p2, "doZIP64"    # Z

    .prologue
    .line 487
    if-eqz p1, :cond_27

    .line 488
    array-length v7, p1

    const v8, 0xffff

    if-le v7, v8, :cond_11

    .line 489
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "invalid extra field length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 492
    :cond_11
    const/4 v2, 0x0

    .line 493
    .local v2, "off":I
    array-length v1, p1

    .line 494
    .local v1, "len":I
    :goto_13
    add-int/lit8 v7, v2, 0x4

    if-ge v7, v1, :cond_27

    .line 495
    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v6

    .line 496
    .local v6, "tag":I
    add-int/lit8 v7, v2, 0x2

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 497
    .local v4, "sz":I
    add-int/lit8 v2, v2, 0x4

    .line 498
    add-int v7, v2, v4

    if-le v7, v1, :cond_2a

    .line 550
    .end local v1    # "len":I
    .end local v2    # "off":I
    .end local v4    # "sz":I
    .end local v6    # "tag":I
    :cond_27
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    .line 551
    return-void

    .line 500
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    .restart local v4    # "sz":I
    .restart local v6    # "tag":I
    :cond_2a
    sparse-switch v6, :sswitch_data_ca

    .line 547
    :cond_2d
    :goto_2d
    add-int/2addr v2, v4

    goto :goto_13

    .line 502
    :sswitch_2f
    if-eqz p2, :cond_2d

    .line 509
    const/16 v7, 0x10

    if-lt v4, v7, :cond_2d

    .line 510
    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 511
    add-int/lit8 v7, v2, 0x8

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    iput-wide v8, p0, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_2d

    .line 516
    :sswitch_44
    const/16 v7, 0x20

    if-lt v4, v7, :cond_2d

    .line 518
    add-int/lit8 v3, v2, 0x4

    .line 519
    .local v3, "pos":I
    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2d

    add-int/lit8 v7, v3, 0x2

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_2d

    .line 521
    add-int/lit8 v7, v3, 0x4

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 522
    add-int/lit8 v7, v3, 0xc

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 523
    add-int/lit8 v7, v3, 0x14

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    goto :goto_2d

    .line 526
    .end local v3    # "pos":I
    :sswitch_80
    aget-byte v7, p1, v2

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 527
    .local v0, "flag":I
    const/4 v5, 0x1

    .line 532
    .local v5, "sz0":I
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_9b

    const/4 v7, 0x5

    if-gt v7, v4, :cond_9b

    .line 533
    add-int/lit8 v7, v2, 0x1

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 534
    const/4 v5, 0x5

    .line 536
    :cond_9b
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_b1

    add-int/lit8 v7, v5, 0x4

    if-gt v7, v4, :cond_b1

    .line 537
    add-int v7, v2, v5

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 538
    add-int/lit8 v5, v5, 0x4

    .line 540
    :cond_b1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2d

    add-int/lit8 v7, v5, 0x4

    if-gt v7, v4, :cond_2d

    .line 541
    add-int v7, v2, v5

    invoke-static {p1, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/zip/ZipUtils;->unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    iput-object v7, p0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    .line 542
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_2d

    .line 500
    nop

    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_2f
        0xa -> :sswitch_44
        0x5455 -> :sswitch_80
    .end sparse-switch
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 294
    const-string/jumbo v0, "lastAccessTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    .line 295
    return-object p0
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 248
    const-string/jumbo v0, "lastModifiedTime"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 249
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 250
    return-object p0
.end method

.method public setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .prologue
    .line 440
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_f
    iput p1, p0, Ljava/util/zip/ZipEntry;->method:I

    .line 444
    return-void
.end method

.method public setSize(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 362
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_f
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    .line 366
    return-void
.end method

.method public setTime(J)V
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 194
    invoke-static {p1, p2}, Ljava/util/zip/ZipUtils;->javaToExtendedDosTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 197
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/32 v2, 0x210000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    const-wide v0, 0x3abd8960000L

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1c

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    .line 202
    :goto_1b
    return-void

    .line 200
    :cond_1c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    goto :goto_1b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
