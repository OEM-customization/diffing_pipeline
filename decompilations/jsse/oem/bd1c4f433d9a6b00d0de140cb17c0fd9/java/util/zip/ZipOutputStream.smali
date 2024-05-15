.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipOutputStream$XEntry;
    }
.end annotation


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I

.field private static final inhibitZip64:Z


# instance fields
.field private closed:Z

.field private comment:[B

.field private crc:Ljava/util/zip/CRC32;

.field private current:Ljava/util/zip/ZipOutputStream$XEntry;

.field private finished:Z

.field private locoff:J

.field private method:I

.field private names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private written:J

.field private xentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipOutputStream$XEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 121
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 135
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    .line 75
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 76
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 77
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 136
    if-nez p2, :cond_37

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_37
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 139
    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    .line 140
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-eqz v0, :cond_d

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_d
    return-void
.end method

.method private getExtraLen([B)I
    .registers 8
    .param p1, "extra"    # [B

    .prologue
    const/4 v5, 0x0

    .line 655
    if-nez p1, :cond_4

    .line 656
    return v5

    .line 657
    :cond_4
    const/4 v2, 0x0

    .line 658
    .local v2, "skipped":I
    array-length v0, p1

    .line 659
    .local v0, "len":I
    const/4 v1, 0x0

    .line 660
    .local v1, "off":I
    :goto_7
    add-int/lit8 v5, v1, 0x4

    if-gt v5, v0, :cond_1c

    .line 661
    invoke-static {p1, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 662
    .local v4, "tag":I
    add-int/lit8 v5, v1, 0x2

    invoke-static {p1, v5}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 663
    .local v3, "sz":I
    if-ltz v3, :cond_1c

    add-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    if-le v5, v0, :cond_1f

    .line 671
    .end local v3    # "sz":I
    .end local v4    # "tag":I
    :cond_1c
    sub-int v5, v0, v2

    return v5

    .line 666
    .restart local v3    # "sz":I
    .restart local v4    # "tag":I
    :cond_1f
    const/16 v5, 0x5455

    if-eq v4, v5, :cond_26

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 667
    :cond_26
    add-int/lit8 v5, v3, 0x4

    add-int/2addr v2, v5

    .line 669
    :cond_29
    add-int/lit8 v5, v3, 0x4

    add-int/2addr v1, v5

    goto :goto_7
.end method

.method private static version(Ljava/util/zip/ZipEntry;)I
    .registers 3
    .param p0, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_14

    .line 90
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :sswitch_e
    const/16 v0, 0x14

    return v0

    .line 89
    :sswitch_11
    const/16 v0, 0xa

    return v0

    .line 87
    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method private writeByte(I)V
    .registers 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 707
    .local v0, "out":Ljava/io/OutputStream;
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 708
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 709
    return-void
.end method

.method private writeBytes([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 754
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 755
    return-void
.end method

.method private writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 26
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    move-object/from16 v0, p1

    iget-object v5, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 491
    .local v5, "e":Ljava/util/zip/ZipEntry;
    iget v10, v5, Ljava/util/zip/ZipEntry;->flag:I

    .line 492
    .local v10, "flag":I
    invoke-static {v5}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v18

    .line 493
    .local v18, "version":I
    iget-wide v6, v5, Ljava/util/zip/ZipEntry;->csize:J

    .line 494
    .local v6, "csize":J
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v16, v0

    .line 495
    .local v16, "size":J
    move-object/from16 v0, p1

    iget-wide v14, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 496
    .local v14, "offset":J
    const/4 v9, 0x0

    .line 497
    .local v9, "elenZIP64":I
    const/4 v12, 0x0

    .line 499
    .local v12, "hasZip64":Z
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    cmp-long v19, v20, v22

    if-ltz v19, :cond_2b

    .line 500
    const-wide v6, 0xffffffffL

    .line 501
    const/16 v9, 0x8

    .line 502
    const/4 v12, 0x1

    .line 504
    :cond_2b
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    cmp-long v19, v20, v22

    if-ltz v19, :cond_40

    .line 505
    const-wide v16, 0xffffffffL

    .line 506
    add-int/lit8 v9, v9, 0x8

    .line 507
    const/4 v12, 0x1

    .line 509
    :cond_40
    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    cmp-long v19, v20, v22

    if-ltz v19, :cond_57

    .line 510
    const-wide v14, 0xffffffffL

    .line 511
    add-int/lit8 v9, v9, 0x8

    .line 512
    const/4 v12, 0x1

    .line 514
    :cond_57
    const-wide/32 v20, 0x2014b50    # 1.6619997E-316

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 515
    if-eqz v12, :cond_1e6

    .line 516
    const/16 v19, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 517
    const/16 v19, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 522
    :goto_75
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 523
    iget v0, v5, Ljava/util/zip/ZipEntry;->method:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 524
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->xdostime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 525
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->crc:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 526
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 527
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v19, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 529
    .local v13, "nameBytes":[B
    array-length v0, v13

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 531
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v8

    .line 532
    .local v8, "elen":I
    if-eqz v12, :cond_d1

    .line 533
    add-int/lit8 v19, v9, 0x4

    add-int v8, v8, v19

    .line 537
    :cond_d1
    const/4 v11, 0x0

    .line 538
    .local v11, "flagEXTT":I
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    move-object/from16 v19, v0

    if-eqz v19, :cond_db

    .line 539
    add-int/lit8 v8, v8, 0x4

    .line 540
    const/4 v11, 0x1

    .line 542
    :cond_db
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e3

    .line 543
    or-int/lit8 v11, v11, 0x2

    .line 545
    :cond_e3
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    move-object/from16 v19, v0

    if-eqz v19, :cond_eb

    .line 546
    or-int/lit8 v11, v11, 0x4

    .line 548
    :cond_eb
    if-eqz v11, :cond_ef

    .line 549
    add-int/lit8 v8, v8, 0x5

    .line 551
    :cond_ef
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 553
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1f6

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v19, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 555
    .local v4, "commentBytes":[B
    array-length v0, v4

    move/from16 v19, v0

    const v20, 0xffff

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 560
    .end local v4    # "commentBytes":[B
    :goto_119
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 561
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 562
    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 563
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 564
    array-length v0, v13

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 567
    if-eqz v12, :cond_195

    .line 568
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 569
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 570
    const-wide v20, 0xffffffffL

    cmp-long v19, v16, v20

    if-nez v19, :cond_16b

    .line 571
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 572
    :cond_16b
    const-wide v20, 0xffffffffL

    cmp-long v19, v6, v20

    if-nez v19, :cond_17f

    .line 573
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 574
    :cond_17f
    const-wide v20, 0xffffffffL

    cmp-long v19, v14, v20

    if-nez v19, :cond_195

    .line 575
    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 577
    :cond_195
    if-eqz v11, :cond_1c3

    .line 578
    const/16 v19, 0x5455

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 579
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    move-object/from16 v19, v0

    if-eqz v19, :cond_202

    .line 580
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 581
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 582
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 588
    :cond_1c3
    :goto_1c3
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 589
    if-eqz v4, :cond_1e5

    .line 590
    array-length v0, v4

    move/from16 v19, v0

    const v20, 0xffff

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 592
    :cond_1e5
    return-void

    .line 519
    .end local v8    # "elen":I
    .end local v11    # "flagEXTT":I
    .end local v13    # "nameBytes":[B
    :cond_1e6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 520
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_75

    .line 557
    .restart local v8    # "elen":I
    .restart local v11    # "flagEXTT":I
    .restart local v13    # "nameBytes":[B
    :cond_1f6
    const/4 v4, 0x0

    .line 558
    .local v4, "commentBytes":[B
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_119

    .line 584
    .end local v4    # "commentBytes":[B
    :cond_202
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 585
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    goto :goto_1c3
.end method

.method private writeEND(JJ)V
    .registers 16
    .param p1, "off"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "hasZip64":Z
    move-wide v4, p3

    .line 600
    .local v4, "xlen":J
    move-wide v6, p1

    .line 601
    .local v6, "xoff":J
    const-wide v8, 0xffffffffL

    cmp-long v8, p3, v8

    if-ltz v8, :cond_12

    .line 602
    const-wide v4, 0xffffffffL

    .line 603
    const/4 v1, 0x1

    .line 605
    :cond_12
    const-wide v8, 0xffffffffL

    cmp-long v8, p1, v8

    if-ltz v8, :cond_21

    .line 606
    const-wide v6, 0xffffffffL

    .line 607
    const/4 v1, 0x1

    .line 609
    :cond_21
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    .line 610
    .local v0, "count":I
    const v8, 0xffff

    if-lt v0, v8, :cond_33

    .line 611
    const/4 v8, 0x1

    or-int/2addr v1, v8

    .line 612
    .local v1, "hasZip64":Z
    if-eqz v1, :cond_33

    .line 613
    const v0, 0xffff

    .line 616
    .end local v1    # "hasZip64":Z
    :cond_33
    if-eqz v1, :cond_83

    .line 617
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 619
    .local v2, "off64":J
    const-wide/32 v8, 0x6064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 620
    const-wide/16 v8, 0x2c

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 621
    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 622
    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 623
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 624
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 625
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 626
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 627
    invoke-direct {p0, p3, p4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 628
    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 631
    const-wide/32 v8, 0x7064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 632
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 633
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 634
    const-wide/16 v8, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 636
    .end local v2    # "off64":J
    :cond_83
    const-wide/32 v8, 0x6054b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 637
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 638
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 639
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 640
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 641
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 642
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 643
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    if-eqz v8, :cond_b1

    .line 644
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v8, v8

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 645
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    iget-object v9, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10, v9}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 649
    :goto_b0
    return-void

    .line 647
    :cond_b1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_b0
.end method

.method private writeEXT(Ljava/util/zip/ZipEntry;)V
    .registers 6
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v2, 0xffffffffL

    .line 474
    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 475
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 476
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_27

    .line 477
    :cond_1c
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 478
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 483
    :goto_26
    return-void

    .line 480
    :cond_27
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 481
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_26
.end method

.method private writeExtra([B)V
    .registers 7
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    if-eqz p1, :cond_36

    .line 682
    array-length v0, p1

    .line 683
    .local v0, "len":I
    const/4 v1, 0x0

    .line 684
    .local v1, "off":I
    :goto_4
    add-int/lit8 v4, v1, 0x4

    if-gt v4, v0, :cond_2f

    .line 685
    invoke-static {p1, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 686
    .local v3, "tag":I
    add-int/lit8 v4, v1, 0x2

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 687
    .local v2, "sz":I
    if-ltz v2, :cond_19

    add-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    if-le v4, v0, :cond_1f

    .line 688
    :cond_19
    sub-int v4, v0, v1

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 689
    return-void

    .line 691
    :cond_1f
    const/16 v4, 0x5455

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    .line 692
    add-int/lit8 v4, v2, 0x4

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 694
    :cond_2b
    add-int/lit8 v4, v2, 0x4

    add-int/2addr v1, v4

    goto :goto_4

    .line 696
    .end local v2    # "sz":I
    .end local v3    # "tag":I
    :cond_2f
    if-ge v1, v0, :cond_36

    .line 697
    sub-int v4, v0, v1

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 700
    .end local v0    # "len":I
    .end local v1    # "off":I
    :cond_36
    return-void
.end method

.method private writeInt(J)V
    .registers 10
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    .line 725
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 726
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 727
    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 728
    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 729
    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 730
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 731
    return-void
.end method

.method private writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 14
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 393
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v3, v0, Ljava/util/zip/ZipEntry;->flag:I

    .line 394
    .local v3, "flag":I
    const/4 v5, 0x0

    .line 395
    .local v5, "hasZip64":Z
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v1

    .line 397
    .local v1, "elen":I
    const-wide/32 v8, 0x4034b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 398
    and-int/lit8 v7, v3, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_c0

    .line 399
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v7

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 400
    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 401
    iget v7, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 402
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 405
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 406
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 407
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 428
    :goto_3a
    iget-object v7, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v8, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 429
    .local v6, "nameBytes":[B
    array-length v7, v6

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, "elenEXTT":I
    const/4 v4, 0x0

    .line 433
    .local v4, "flagEXTT":I
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_4e

    .line 434
    const/4 v2, 0x4

    .line 435
    const/4 v4, 0x1

    .line 437
    :cond_4e
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_56

    .line 438
    add-int/lit8 v2, v2, 0x4

    .line 439
    or-int/lit8 v4, v4, 0x2

    .line 441
    :cond_56
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_5e

    .line 442
    add-int/lit8 v2, v2, 0x4

    .line 443
    or-int/lit8 v4, v4, 0x4

    .line 445
    :cond_5e
    if-eqz v4, :cond_63

    .line 446
    add-int/lit8 v7, v2, 0x5

    add-int/2addr v1, v7

    .line 447
    :cond_63
    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 448
    array-length v7, v6

    const/4 v8, 0x0

    invoke-direct {p0, v6, v8, v7}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 449
    if-eqz v5, :cond_80

    .line 450
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 451
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 452
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 453
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 455
    :cond_80
    if-eqz v4, :cond_b6

    .line 456
    const/16 v7, 0x5455

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 457
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 458
    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 459
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_9c

    .line 460
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 461
    :cond_9c
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_a9

    .line 462
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 463
    :cond_a9
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_b6

    .line 464
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 466
    :cond_b6
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 467
    iget-wide v8, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v8, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 468
    return-void

    .line 409
    .end local v2    # "elenEXTT":I
    .end local v4    # "flagEXTT":I
    .end local v6    # "nameBytes":[B
    :cond_c0
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v10, 0xffffffffL

    cmp-long v7, v8, v10

    if-gez v7, :cond_d6

    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->size:J

    const-wide v10, 0xffffffffL

    cmp-long v7, v8, v10

    if-ltz v7, :cond_104

    .line 410
    :cond_d6
    const/4 v5, 0x1

    .line 411
    const/16 v7, 0x2d

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 415
    :goto_dc
    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 416
    iget v7, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 417
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 418
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 419
    if-eqz v5, :cond_10c

    .line 420
    const-wide v8, 0xffffffffL

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 421
    const-wide v8, 0xffffffffL

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 422
    add-int/lit8 v1, v1, 0x14

    goto/16 :goto_3a

    .line 413
    :cond_104
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v7

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_dc

    .line 424
    :cond_10c
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 425
    iget-wide v8, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto/16 :goto_3a
.end method

.method private writeLong(J)V
    .registers 10
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    .line 737
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 738
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 739
    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 740
    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 741
    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 742
    const/16 v1, 0x20

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 743
    const/16 v1, 0x28

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 744
    const/16 v1, 0x30

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 745
    const/16 v1, 0x38

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 746
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 747
    return-void
.end method

.method private writeShort(I)V
    .registers 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 716
    .local v0, "out":Ljava/io/OutputStream;
    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 717
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 718
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 719
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 383
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 386
    :cond_a
    return-void
.end method

.method public closeEntry()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 250
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 251
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v1, :cond_127

    .line 252
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 253
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_1ae

    .line 301
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :sswitch_1a
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 256
    :goto_1f
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 257
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    goto :goto_1f

    .line 259
    :cond_2b
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_f9

    .line 261
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_71

    .line 262
    new-instance v1, Ljava/util/zip/ZipException;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    const-string/jumbo v3, " but got "

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    .line 263
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 264
    const-string/jumbo v3, " bytes)"

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_71
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b1

    .line 267
    new-instance v1, Ljava/util/zip/ZipException;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 268
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    const-string/jumbo v3, " but got "

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    .line 268
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    const-string/jumbo v3, " bytes)"

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_b1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_114

    .line 272
    new-instance v1, Ljava/util/zip/ZipException;

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string/jumbo v3, " but got 0x"

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 275
    const-string/jumbo v3, ")"

    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_f9
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 279
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 280
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 281
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    .line 283
    :cond_114
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 284
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 303
    :cond_120
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 304
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 306
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_127
    return-void

    .line 288
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    :sswitch_128
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_166

    .line 289
    new-instance v1, Ljava/util/zip/ZipException;

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    const-string/jumbo v3, " but got "

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    .line 290
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    const-string/jumbo v3, " bytes)"

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_166
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_120

    .line 294
    new-instance v1, Ljava/util/zip/ZipException;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    const-string/jumbo v3, " but got 0x"

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    const-string/jumbo v3, ")"

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :sswitch_data_1ae
    .sparse-switch
        0x0 -> :sswitch_128
        0x8 -> :sswitch_1a
    .end sparse-switch
.end method

.method public finish()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 358
    iget-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    if-eqz v4, :cond_8

    .line 359
    return-void

    .line 362
    :cond_8
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 363
    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "No entries"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    :cond_19
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v4, :cond_20

    .line 366
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 369
    :cond_20
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 370
    .local v0, "off":J
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "xentry$iterator":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipOutputStream$XEntry;

    .line 371
    .local v2, "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    goto :goto_28

    .line 372
    .end local v2    # "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    :cond_38
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    sub-long/2addr v4, v0

    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    .line 373
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    .line 374
    return-void
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 8
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 192
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 193
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_c

    .line 194
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 196
    :cond_c
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_19

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 201
    :cond_19
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 202
    iget v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    iput v0, p1, Ljava/util/zip/ZipEntry;->method:I

    .line 205
    :cond_22
    const/4 v0, 0x0

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 206
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_d0

    .line 231
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :sswitch_33
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3f

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_69

    .line 211
    :cond_3f
    :goto_3f
    const/16 v0, 0x8

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 233
    :cond_43
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 234
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_69
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_43

    goto :goto_3f

    .line 217
    :sswitch_70
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8f

    .line 218
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 225
    :cond_7a
    :goto_7a
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_86

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_43

    .line 226
    :cond_86
    new-instance v0, Ljava/util/zip/ZipException;

    .line 227
    const-string/jumbo v1, "STORED entry missing size, compressed size, or crc-32"

    .line 226
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_8f
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9a

    .line 220
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_7a

    .line 221
    :cond_9a
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7a

    .line 222
    new-instance v0, Ljava/util/zip/ZipException;

    .line 223
    const-string/jumbo v1, "STORED entry where compressed != uncompressed size"

    .line 222
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_ab
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 237
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 238
    :cond_b9
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    invoke-direct {v0, p1, v2, v3}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 239
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .line 241
    return-void

    .line 206
    nop

    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_70
        0x8 -> :sswitch_33
    .end sparse-switch
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 4
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_1b

    .line 150
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    .line 151
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_1b

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZIP file comment too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1b
    return-void
.end method

.method public setLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 178
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 179
    return-void
.end method

.method public setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .prologue
    .line 165
    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    if-eqz p1, :cond_f

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_f
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 169
    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 10
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

    .line 320
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 321
    if-ltz p2, :cond_8

    if-gez p3, :cond_11

    .line 322
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 321
    :cond_11
    :try_start_11
    array-length v1, p1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_e

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_8

    .line 323
    if-nez p3, :cond_19

    monitor-exit p0

    .line 324
    return-void

    .line 327
    :cond_19
    :try_start_19
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-nez v1, :cond_26

    .line 328
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "no current ZIP entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_26
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 331
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_62

    .line 344
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :sswitch_38
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 346
    :goto_3b
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_e

    monitor-exit p0

    .line 347
    return-void

    .line 336
    :sswitch_42
    :try_start_42
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 337
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_5c

    .line 338
    new-instance v1, Ljava/util/zip/ZipException;

    .line 339
    const-string/jumbo v2, "attempt to write past end of STORED entry"

    .line 338
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_5c
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_e

    goto :goto_3b

    .line 331
    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_42
        0x8 -> :sswitch_38
    .end sparse-switch
.end method
