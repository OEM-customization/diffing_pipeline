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
.field public static final whitelist core-platform-api test-api DEFLATED:I = 0x8

.field public static final whitelist core-platform-api test-api STORED:I = 0x0

.field private static final greylist-max-o inhibitZip64:Z = false


# instance fields
.field private greylist-max-o closed:Z

.field private greylist-max-o comment:[B

.field private greylist-max-o crc:Ljava/util/zip/CRC32;

.field private greylist-max-o current:Ljava/util/zip/ZipOutputStream$XEntry;

.field private greylist-max-o finished:Z

.field private greylist-max-o locoff:J

.field private greylist method:I

.field private greylist names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist written:J

.field private greylist-max-o xentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/util/zip/ZipOutputStream$XEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 121
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 122
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 135
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

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
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 77
    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 136
    if-eqz p2, :cond_37

    .line 138
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 139
    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    .line 140
    return-void

    .line 137
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_5

    .line 101
    return-void

    .line 99
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getExtraLen([B)I
    .registers 8
    .param p1, "extra"    # [B

    .line 651
    if-nez p1, :cond_4

    .line 652
    const/4 v0, 0x0

    return v0

    .line 653
    :cond_4
    const/4 v0, 0x0

    .line 654
    .local v0, "skipped":I
    array-length v1, p1

    .line 655
    .local v1, "len":I
    const/4 v2, 0x0

    .line 656
    .local v2, "off":I
    :goto_7
    add-int/lit8 v3, v2, 0x4

    if-gt v3, v1, :cond_2b

    .line 657
    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 658
    .local v3, "tag":I
    add-int/lit8 v4, v2, 0x2

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 659
    .local v4, "sz":I
    if-ltz v4, :cond_2b

    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    if-le v5, v1, :cond_1d

    .line 660
    goto :goto_2b

    .line 662
    :cond_1d
    const/16 v5, 0x5455

    if-eq v3, v5, :cond_24

    const/4 v5, 0x1

    if-ne v3, v5, :cond_27

    .line 663
    :cond_24
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v0, v5

    .line 665
    :cond_27
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v2, v5

    .line 666
    .end local v3    # "tag":I
    .end local v4    # "sz":I
    goto :goto_7

    .line 667
    :cond_2b
    :goto_2b
    sub-int v3, v1, v0

    return v3
.end method

.method private static greylist-max-o version(Ljava/util/zip/ZipEntry;)I
    .registers 3
    .param p0, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 87
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 88
    const/16 v0, 0x14

    return v0

    .line 90
    :cond_b
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_13
    const/16 v0, 0xa

    return v0
.end method

.method private greylist-max-o writeByte(I)V
    .registers 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 703
    .local v0, "out":Ljava/io/OutputStream;
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 704
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 705
    return-void
.end method

.method private greylist-max-o writeBytes([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 750
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 751
    return-void
.end method

.method private greylist-max-o writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 23
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 487
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    .line 488
    .local v3, "flag":I
    invoke-static {v2}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v4

    .line 489
    .local v4, "version":I
    iget-wide v5, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 490
    .local v5, "csize":J
    iget-wide v7, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 491
    .local v7, "size":J
    iget-wide v9, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 492
    .local v9, "offset":J
    const/4 v11, 0x0

    .line 493
    .local v11, "elenZIP64":I
    const/4 v12, 0x0

    .line 495
    .local v12, "hasZip64":Z
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v15, 0xffffffffL

    cmp-long v13, v13, v15

    if-ltz v13, :cond_27

    .line 496
    const-wide v5, 0xffffffffL

    .line 497
    add-int/lit8 v11, v11, 0x8

    .line 498
    const/4 v12, 0x1

    .line 500
    :cond_27
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v13, v13, v15

    if-ltz v13, :cond_35

    .line 501
    const-wide v7, 0xffffffffL

    .line 502
    add-int/lit8 v11, v11, 0x8

    .line 503
    const/4 v12, 0x1

    .line 505
    :cond_35
    iget-wide v13, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    cmp-long v13, v13, v15

    if-ltz v13, :cond_43

    .line 506
    const-wide v9, 0xffffffffL

    .line 507
    add-int/lit8 v11, v11, 0x8

    .line 508
    const/4 v12, 0x1

    .line 510
    :cond_43
    const-wide/32 v13, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 511
    if-eqz v12, :cond_54

    .line 512
    const/16 v13, 0x2d

    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 513
    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_5a

    .line 515
    :cond_54
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 516
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 518
    :goto_5a
    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 519
    iget v13, v2, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 520
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 521
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 522
    invoke-direct {v0, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 523
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 524
    iget-object v13, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v14, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 525
    .local v13, "nameBytes":[B
    array-length v14, v13

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 527
    iget-object v14, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v14

    .line 528
    .local v14, "elen":I
    if-eqz v12, :cond_8a

    .line 529
    add-int/lit8 v17, v11, 0x4

    add-int v14, v14, v17

    .line 533
    :cond_8a
    const/16 v17, 0x0

    .line 534
    .local v17, "flagEXTT":I
    iget-object v15, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v15, :cond_94

    .line 535
    add-int/lit8 v14, v14, 0x4

    .line 536
    or-int/lit8 v17, v17, 0x1

    .line 538
    :cond_94
    iget-object v15, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v15, :cond_9a

    .line 539
    or-int/lit8 v17, v17, 0x2

    .line 541
    :cond_9a
    iget-object v15, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v15, :cond_a3

    .line 542
    or-int/lit8 v17, v17, 0x4

    move/from16 v15, v17

    goto :goto_a5

    .line 541
    :cond_a3
    move/from16 v15, v17

    .line 544
    .end local v17    # "flagEXTT":I
    .local v15, "flagEXTT":I
    :goto_a5
    if-eqz v15, :cond_a9

    .line 545
    add-int/lit8 v14, v14, 0x5

    .line 547
    :cond_a9
    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 549
    move/from16 v16, v3

    .end local v3    # "flag":I
    .local v16, "flag":I
    iget-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move/from16 v17, v4

    .end local v4    # "version":I
    .local v17, "version":I
    if-eqz v3, :cond_cd

    .line 550
    iget-object v3, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v4, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 551
    .local v3, "commentBytes":[B
    array-length v4, v3

    move-object/from16 v19, v3

    const v3, 0xffff

    .end local v3    # "commentBytes":[B
    .local v19, "commentBytes":[B
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    move-object/from16 v3, v19

    const/4 v4, 0x0

    goto :goto_d2

    .line 553
    .end local v19    # "commentBytes":[B
    :cond_cd
    const/4 v3, 0x0

    .line 554
    .restart local v3    # "commentBytes":[B
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 556
    :goto_d2
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 557
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 558
    move-wide/from16 v19, v5

    .end local v5    # "csize":J
    .local v19, "csize":J
    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 559
    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 560
    array-length v4, v13

    const/4 v5, 0x0

    invoke-direct {v0, v13, v5, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 563
    const/4 v4, 0x1

    if-eqz v12, :cond_11a

    .line 564
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 565
    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 566
    const-wide v5, 0xffffffffL

    cmp-long v18, v7, v5

    if-nez v18, :cond_fe

    .line 567
    iget-wide v4, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {v0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 568
    :cond_fe
    const-wide v4, 0xffffffffL

    cmp-long v6, v19, v4

    if-nez v6, :cond_10c

    .line 569
    iget-wide v4, v2, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {v0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 570
    :cond_10c
    const-wide v4, 0xffffffffL

    cmp-long v4, v9, v4

    if-nez v4, :cond_11a

    .line 571
    iget-wide v4, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    invoke-direct {v0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 573
    :cond_11a
    if-eqz v15, :cond_13d

    .line 574
    const/16 v4, 0x5455

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 575
    iget-object v4, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v4, :cond_136

    .line 576
    const/4 v4, 0x5

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 577
    invoke-direct {v0, v15}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 578
    iget-object v4, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v4}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_13d

    .line 580
    :cond_136
    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 581
    invoke-direct {v0, v15}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 584
    :cond_13d
    :goto_13d
    iget-object v4, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 585
    if-eqz v3, :cond_150

    .line 586
    array-length v4, v3

    const v5, 0xffff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 588
    :cond_150
    return-void
.end method

.method private greylist-max-o writeEND(JJ)V
    .registers 20
    .param p1, "off"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    move-object v0, p0

    const/4 v1, 0x0

    .line 595
    .local v1, "hasZip64":Z
    move-wide/from16 v2, p3

    .line 596
    .local v2, "xlen":J
    move-wide/from16 v4, p1

    .line 597
    .local v4, "xoff":J
    const-wide v6, 0xffffffffL

    cmp-long v8, v2, v6

    if-ltz v8, :cond_15

    .line 598
    const-wide v2, 0xffffffffL

    .line 599
    const/4 v1, 0x1

    .line 601
    :cond_15
    cmp-long v6, v4, v6

    if-ltz v6, :cond_1f

    .line 602
    const-wide v4, 0xffffffffL

    .line 603
    const/4 v1, 0x1

    .line 605
    :cond_1f
    iget-object v6, v0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    .line 606
    .local v6, "count":I
    const v7, 0xffff

    if-lt v6, v7, :cond_31

    .line 607
    or-int/lit8 v1, v1, 0x1

    .line 608
    if-eqz v1, :cond_31

    .line 609
    const v6, 0xffff

    .line 612
    :cond_31
    if-eqz v1, :cond_7e

    .line 613
    iget-wide v7, v0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 615
    .local v7, "off64":J
    const-wide/32 v9, 0x6064b50

    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 616
    const-wide/16 v9, 0x2c

    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 617
    const/16 v9, 0x2d

    invoke-direct {p0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 618
    invoke-direct {p0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 619
    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 620
    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 621
    iget-object v11, v0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 622
    iget-object v11, v0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    int-to-long v11, v11

    invoke-direct {p0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 623
    move-wide/from16 v11, p3

    invoke-direct {p0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 624
    invoke-direct/range {p0 .. p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 627
    const-wide/32 v13, 0x7064b50

    invoke-direct {p0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 628
    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 629
    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 630
    const-wide/16 v9, 0x1

    invoke-direct {p0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_80

    .line 612
    .end local v7    # "off64":J
    :cond_7e
    move-wide/from16 v11, p3

    .line 632
    :goto_80
    const-wide/32 v7, 0x6054b50

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 633
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 634
    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 635
    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 636
    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 637
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 638
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 639
    iget-object v8, v0, Ljava/util/zip/ZipOutputStream;->comment:[B

    if-eqz v8, :cond_a8

    .line 640
    array-length v8, v8

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 641
    iget-object v8, v0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v9, v8

    invoke-direct {p0, v8, v7, v9}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    goto :goto_ab

    .line 643
    :cond_a8
    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 645
    :goto_ab
    return-void
.end method

.method private greylist-max-o writeEXT(Ljava/util/zip/ZipEntry;)V
    .registers 6
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 471
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 472
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    goto :goto_28

    .line 476
    :cond_1d
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 477
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_32

    .line 473
    :cond_28
    :goto_28
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 474
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 479
    :goto_32
    return-void
.end method

.method private greylist-max-o writeExtra([B)V
    .registers 7
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    if-eqz p1, :cond_37

    .line 678
    array-length v0, p1

    .line 679
    .local v0, "len":I
    const/4 v1, 0x0

    .line 680
    .local v1, "off":I
    :goto_4
    add-int/lit8 v2, v1, 0x4

    if-gt v2, v0, :cond_30

    .line 681
    invoke-static {p1, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 682
    .local v2, "tag":I
    add-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 683
    .local v3, "sz":I
    if-ltz v3, :cond_2a

    add-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    if-le v4, v0, :cond_1a

    goto :goto_2a

    .line 687
    :cond_1a
    const/16 v4, 0x5455

    if-eq v2, v4, :cond_26

    const/4 v4, 0x1

    if-eq v2, v4, :cond_26

    .line 688
    add-int/lit8 v4, v3, 0x4

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 690
    :cond_26
    add-int/lit8 v4, v3, 0x4

    add-int/2addr v1, v4

    .line 691
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto :goto_4

    .line 684
    .restart local v2    # "tag":I
    .restart local v3    # "sz":I
    :cond_2a
    :goto_2a
    sub-int v4, v0, v1

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 685
    return-void

    .line 692
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    :cond_30
    if-ge v1, v0, :cond_37

    .line 693
    sub-int v2, v0, v1

    invoke-direct {p0, p1, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 696
    .end local v0    # "len":I
    .end local v1    # "off":I
    :cond_37
    return-void
.end method

.method private greylist-max-o writeInt(J)V
    .registers 8
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 722
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 723
    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 724
    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 725
    const/16 v1, 0x18

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 726
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 727
    return-void
.end method

.method private greylist-max-o writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 11
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 389
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    .line 390
    .local v1, "flag":I
    const/4 v2, 0x0

    .line 391
    .local v2, "hasZip64":Z
    iget-object v3, v0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v3

    .line 393
    .local v3, "elen":I
    const-wide/32 v4, 0x4034b50

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 394
    and-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_37

    .line 395
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 396
    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 397
    iget v4, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 398
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 401
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 402
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 403
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_7e

    .line 405
    :cond_37
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v6, 0xffffffffL

    cmp-long v4, v4, v6

    if-gez v4, :cond_51

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_49

    goto :goto_51

    .line 409
    :cond_49
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_57

    .line 406
    :cond_51
    :goto_51
    const/4 v2, 0x1

    .line 407
    const/16 v4, 0x2d

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 411
    :goto_57
    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 412
    iget v4, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 413
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 414
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 415
    if-eqz v2, :cond_74

    .line 416
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 417
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 418
    add-int/lit8 v3, v3, 0x14

    goto :goto_7e

    .line 420
    :cond_74
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 421
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 424
    :goto_7e
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v5, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 425
    .local v4, "nameBytes":[B
    array-length v5, v4

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, "elenEXTT":I
    const/4 v6, 0x0

    .line 429
    .local v6, "flagEXTT":I
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_94

    .line 430
    add-int/lit8 v5, v5, 0x4

    .line 431
    or-int/lit8 v6, v6, 0x1

    .line 433
    :cond_94
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_9c

    .line 434
    add-int/lit8 v5, v5, 0x4

    .line 435
    or-int/lit8 v6, v6, 0x2

    .line 437
    :cond_9c
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_a4

    .line 438
    add-int/lit8 v5, v5, 0x4

    .line 439
    or-int/lit8 v6, v6, 0x4

    .line 441
    :cond_a4
    if-eqz v6, :cond_a9

    .line 442
    add-int/lit8 v7, v5, 0x5

    add-int/2addr v3, v7

    .line 443
    :cond_a9
    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 444
    const/4 v7, 0x0

    array-length v8, v4

    invoke-direct {p0, v4, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 445
    if-eqz v2, :cond_c6

    .line 446
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 447
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 448
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 449
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 451
    :cond_c6
    if-eqz v6, :cond_fc

    .line 452
    const/16 v7, 0x5455

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 453
    add-int/lit8 v7, v5, 0x1

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 454
    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 455
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_e2

    .line 456
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 457
    :cond_e2
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_ef

    .line 458
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 459
    :cond_ef
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_fc

    .line 460
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 462
    :cond_fc
    iget-object v7, v0, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 463
    iget-wide v7, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v7, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 464
    return-void
.end method

.method private greylist-max-o writeLong(J)V
    .registers 8
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 734
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 735
    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 736
    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 737
    const/16 v1, 0x18

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 738
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 739
    const/16 v1, 0x28

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 740
    const/16 v1, 0x30

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 741
    const/16 v1, 0x38

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 742
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 743
    return-void
.end method

.method private greylist-max-o writeShort(I)V
    .registers 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 712
    .local v0, "out":Ljava/io/OutputStream;
    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 713
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 714
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 715
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 379
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 382
    :cond_a
    return-void
.end method

.method public whitelist core-platform-api test-api closeEntry()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 251
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_17a

    .line 252
    iget-object v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 253
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    const-string v2, ")"

    const-string v3, " but got 0x"

    const-string v4, "invalid entry size (expected "

    const-string v5, " bytes)"

    const-string v6, " but got "

    if-eqz v1, :cond_105

    const/16 v7, 0x8

    if-ne v1, v7, :cond_fd

    .line 255
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 256
    :goto_20
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 257
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    goto :goto_20

    .line 259
    :cond_2c
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/2addr v1, v7

    if-nez v1, :cond_d5

    .line 261
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_af

    .line 266
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_87

    .line 271
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_57

    goto/16 :goto_f0

    .line 272
    :cond_57
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 274
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 275
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_87
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 269
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_af
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 264
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_d5
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 279
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 280
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 281
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    .line 283
    :goto_f0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 284
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->csize:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 285
    goto :goto_11c

    .line 301
    :cond_fd
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_105
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v9, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v11, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v9, v11

    cmp-long v1, v7, v9

    if-nez v1, :cond_155

    .line 293
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_125

    .line 303
    :goto_11c
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    goto :goto_17a

    .line 294
    :cond_125
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 296
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 297
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_155
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_17a
    :goto_17a
    return-void
.end method

.method public whitelist core-platform-api test-api finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 358
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    if-eqz v0, :cond_8

    .line 359
    return-void

    .line 361
    :cond_8
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_f

    .line 362
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 365
    :cond_f
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 366
    .local v0, "off":J
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipOutputStream$XEntry;

    .line 367
    .local v3, "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .end local v3    # "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    goto :goto_17

    .line 368
    :cond_27
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    sub-long/2addr v2, v0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    .line 369
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    .line 370
    return-void
.end method

.method public whitelist core-platform-api test-api putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 8
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 193
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_a

    .line 194
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 196
    :cond_a
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

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

    if-eqz v0, :cond_4a

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    .line 210
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3f

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3f

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_74

    .line 211
    :cond_3f
    iput v1, p1, Ljava/util/zip/ZipEntry;->flag:I

    goto :goto_74

    .line 231
    :cond_42
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_4a
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_55

    .line 218
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_68

    .line 219
    :cond_55
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_60

    .line 220
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_68

    .line 221
    :cond_60
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c1

    .line 225
    :goto_68
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b9

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b9

    .line 233
    :cond_74
    :goto_74
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 236
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 237
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 238
    :cond_8c
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    invoke-direct {v0, p1, v1, v2}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 239
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .line 241
    return-void

    .line 234
    :cond_a0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_b9
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "STORED entry missing size, compressed size, or crc-32"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_c1
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "STORED entry where compressed != uncompressed size"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setComment(Ljava/lang/String;)V
    .registers 4
    .param p1, "comment"    # Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_19

    .line 150
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    .line 151
    array-length v0, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_11

    goto :goto_19

    .line 152
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZIP file comment too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_19
    :goto_19
    return-void
.end method

.method public whitelist core-platform-api test-api setLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .line 178
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 179
    return-void
.end method

.method public whitelist core-platform-api test-api setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .line 165
    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 166
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_f
    :goto_f
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 169
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api write([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 321
    if-ltz p2, :cond_58

    if-ltz p3, :cond_58

    array-length v0, p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_5e

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_58

    .line 323
    if-nez p3, :cond_10

    .line 324
    monitor-exit p0

    return-void

    .line 327
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_50

    .line 330
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 331
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v1, :cond_2c

    const/16 v2, 0x8

    if-ne v1, v2, :cond_24

    .line 333
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 334
    goto :goto_41

    .line 344
    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :cond_24
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_2c
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 337
    iget-wide v3, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_48

    .line 341
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 342
    nop

    .line 346
    :goto_41
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_5e

    .line 347
    monitor-exit p0

    return-void

    .line 338
    :cond_48
    :try_start_48
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "attempt to write past end of STORED entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_50
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "no current ZIP entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_5e

    .line 319
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
