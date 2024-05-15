.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final contentClassPrefix:Ljava/lang/String; = "sun.net.www.content"

.field private static final contentPathProp:Ljava/lang/String; = "java.content.handler.pkgs"

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field static factory:Ljava/net/ContentHandlerFactory;

.field private static fileNameMap:Ljava/net/FileNameMap;

.field private static handlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/ContentHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private readTimeout:I

.field private requests:Lsun/net/www/MessageHeader;

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    .line 161
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 206
    iput-boolean v2, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 227
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 246
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 273
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    .line 455
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 456
    return-void
.end method

.method private static checkfpx(Ljava/io/InputStream;)Z
    .registers 15
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1604
    const/16 v10, 0x100

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1608
    const-wide/16 v8, 0x1c

    .line 1611
    .local v8, "toSkip":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 1608
    .local v2, "posn":J
    const-wide/16 v10, 0x1c

    .line 1611
    cmp-long v10, v2, v10

    if-gez v10, :cond_16

    .line 1612
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1613
    const/4 v10, 0x0

    return v10

    .line 1616
    :cond_16
    const/16 v10, 0x10

    new-array v1, v10, [I

    .line 1617
    .local v1, "c":[I
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_26

    .line 1618
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1619
    const/4 v10, 0x0

    return v10

    .line 1622
    :cond_26
    const/4 v10, 0x0

    aget v0, v1, v10

    .line 1624
    .local v0, "byteOrder":I
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1626
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_38

    .line 1627
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1628
    const/4 v10, 0x0

    return v10

    .line 1631
    :cond_38
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_5b

    .line 1632
    const/4 v10, 0x0

    aget v5, v1, v10

    .line 1633
    .local v5, "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v5, v10

    .line 1640
    :goto_45
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1641
    const-wide/16 v10, 0x30

    sub-long v8, v10, v2

    .line 1642
    const-wide/16 v6, 0x0

    .line 1643
    .local v6, "skipped":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-gez v10, :cond_65

    .line 1644
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1645
    const/4 v10, 0x0

    return v10

    .line 1636
    .end local v5    # "uSectorShift":I
    .end local v6    # "skipped":J
    :cond_5b
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v5, v10, 0x8

    .line 1637
    .restart local v5    # "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v5, v10

    goto :goto_45

    .line 1647
    .restart local v6    # "skipped":J
    :cond_65
    add-long/2addr v2, v6

    .line 1649
    const/4 v10, 0x4

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_72

    .line 1650
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1651
    const/4 v10, 0x0

    return v10

    .line 1655
    :cond_72
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_a5

    .line 1656
    const/4 v10, 0x0

    aget v4, v1, v10

    .line 1657
    .local v4, "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1658
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1659
    const/4 v10, 0x3

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x18

    add-int/2addr v4, v10

    .line 1666
    :goto_8b
    const-wide/16 v10, 0x4

    add-long/2addr v2, v10

    .line 1667
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1669
    const/4 v10, 0x1

    shl-int/2addr v10, v5

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x200

    add-long/2addr v10, v12

    const-wide/16 v12, 0x50

    add-long v8, v10, v12

    .line 1672
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_bb

    .line 1673
    const/4 v10, 0x0

    return v10

    .line 1661
    .end local v4    # "sectDirStart":I
    :cond_a5
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v4, v10, 0x18

    .line 1662
    .restart local v4    # "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1663
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1664
    const/4 v10, 0x3

    aget v10, v1, v10

    add-int/2addr v4, v10

    goto :goto_8b

    .line 1682
    :cond_bb
    long-to-int v10, v8

    add-int/lit8 v10, v10, 0x30

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1684
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_ce

    .line 1685
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1686
    const/4 v10, 0x0

    return v10

    .line 1701
    :cond_ce
    const/16 v10, 0x10

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_db

    .line 1702
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1703
    const/4 v10, 0x0

    return v10

    .line 1707
    :cond_db
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_14f

    .line 1708
    const/4 v10, 0x0

    aget v10, v1, v10

    if-nez v10, :cond_14f

    const/4 v10, 0x2

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_14f

    const/4 v10, 0x3

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_14f

    .line 1709
    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_14f

    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_14f

    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_14f

    .line 1710
    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_14f

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_14f

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_14f

    .line 1711
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_14f

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_14f

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_14f

    .line 1712
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_14f

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_14f

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_14f

    .line 1713
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1714
    const/4 v10, 0x1

    return v10

    .line 1718
    :cond_14f
    const/4 v10, 0x3

    aget v10, v1, v10

    if-nez v10, :cond_1bf

    const/4 v10, 0x1

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_1bf

    const/4 v10, 0x0

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_1bf

    .line 1719
    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_1bf

    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_1bf

    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_1bf

    .line 1720
    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_1bf

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_1bf

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_1bf

    .line 1721
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_1bf

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_1bf

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_1bf

    .line 1722
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_1bf

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_1bf

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_1bf

    .line 1723
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1724
    const/4 v10, 0x1

    return v10

    .line 1726
    :cond_1bf
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1727
    const/4 v10, 0x0

    return v10
.end method

.method private getContentHandlerPkgPrefixes()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1368
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "java.content.handler.pkgs"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1370
    .local v0, "packagePrefixList":Ljava/lang/String;
    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_2a

    .line 1371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sun.net.www.content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultAllowUserInteraction()Z
    .registers 1

    .prologue
    .line 964
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1188
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getFileNameMap()Ljava/net/FileNameMap;
    .registers 2

    .prologue
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 302
    :try_start_3
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_e

    .line 303
    new-instance v0, Ljava/net/DefaultFileNameMap;

    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 305
    :cond_e
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 20
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_9

    .line 1417
    const/16 v18, 0x0

    return-object v18

    .line 1419
    :cond_9
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 1420
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1421
    .local v2, "c1":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 1422
    .local v10, "c2":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 1423
    .local v11, "c3":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 1424
    .local v12, "c4":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 1425
    .local v13, "c5":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 1426
    .local v14, "c6":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 1427
    .local v15, "c7":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 1428
    .local v16, "c8":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 1429
    .local v17, "c9":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1430
    .local v3, "c10":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1431
    .local v4, "c11":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1432
    .local v5, "c12":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1433
    .local v6, "c13":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 1434
    .local v7, "c14":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1435
    .local v8, "c15":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 1436
    .local v9, "c16":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1438
    const/16 v18, 0xca

    move/from16 v0, v18

    if-ne v2, v0, :cond_71

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_71

    const/16 v18, 0xba

    move/from16 v0, v18

    if-ne v11, v0, :cond_71

    const/16 v18, 0xbe

    move/from16 v0, v18

    if-ne v12, v0, :cond_71

    .line 1439
    const-string/jumbo v18, "application/java-vm"

    return-object v18

    .line 1442
    :cond_71
    const/16 v18, 0xac

    move/from16 v0, v18

    if-ne v2, v0, :cond_81

    const/16 v18, 0xed

    move/from16 v0, v18

    if-ne v10, v0, :cond_81

    .line 1444
    const-string/jumbo v18, "application/x-java-serialized-object"

    return-object v18

    .line 1447
    :cond_81
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v2, v0, :cond_137

    .line 1448
    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_a5

    .line 1449
    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v10, v0, :cond_bb

    const/16 v18, 0x74

    move/from16 v0, v18

    if-ne v11, v0, :cond_a9

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_a9

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_a9

    .line 1455
    :cond_a5
    const-string/jumbo v18, "text/html"

    return-object v18

    .line 1450
    :cond_a9
    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_bb

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v12, v0, :cond_bb

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v13, v0, :cond_a5

    .line 1451
    :cond_bb
    const/16 v18, 0x62

    move/from16 v0, v18

    if-ne v10, v0, :cond_d3

    const/16 v18, 0x6f

    move/from16 v0, v18

    if-ne v11, v0, :cond_d3

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_d3

    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v13, v0, :cond_a5

    .line 1452
    :cond_d3
    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v10, v0, :cond_fd

    const/16 v18, 0x54

    move/from16 v0, v18

    if-ne v11, v0, :cond_eb

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v12, v0, :cond_eb

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-eq v13, v0, :cond_a5

    .line 1453
    :cond_eb
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v11, v0, :cond_fd

    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v12, v0, :cond_fd

    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v13, v0, :cond_a5

    .line 1454
    :cond_fd
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v10, v0, :cond_115

    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v11, v0, :cond_115

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v12, v0, :cond_115

    const/16 v18, 0x59

    move/from16 v0, v18

    if-eq v13, v0, :cond_a5

    .line 1458
    :cond_115
    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v10, v0, :cond_137

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v11, v0, :cond_137

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_137

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_137

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v14, v0, :cond_137

    .line 1459
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1464
    :cond_137
    const/16 v18, 0xef

    move/from16 v0, v18

    if-ne v2, v0, :cond_15f

    const/16 v18, 0xbb

    move/from16 v0, v18

    if-ne v10, v0, :cond_15f

    const/16 v18, 0xbf

    move/from16 v0, v18

    if-ne v11, v0, :cond_15f

    .line 1465
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_15f

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_15f

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v14, v0, :cond_15f

    .line 1466
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1471
    :cond_15f
    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v2, v0, :cond_189

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v10, v0, :cond_189

    .line 1472
    if-nez v11, :cond_189

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_189

    if-nez v13, :cond_189

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v14, v0, :cond_189

    .line 1473
    if-nez v15, :cond_189

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_189

    .line 1474
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1478
    :cond_189
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_1b1

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_1b1

    .line 1479
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v11, v0, :cond_1b1

    if-nez v12, :cond_1b1

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_1b1

    if-nez v14, :cond_1b1

    .line 1480
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v15, v0, :cond_1b1

    if-nez v16, :cond_1b1

    .line 1481
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1486
    :cond_1b1
    if-nez v2, :cond_1eb

    if-nez v10, :cond_1eb

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v11, v0, :cond_1eb

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v12, v0, :cond_1eb

    .line 1487
    if-nez v13, :cond_1eb

    if-nez v14, :cond_1eb

    if-nez v15, :cond_1eb

    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1eb

    .line 1488
    if-nez v17, :cond_1eb

    if-nez v3, :cond_1eb

    if-nez v4, :cond_1eb

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v5, v0, :cond_1eb

    .line 1489
    if-nez v6, :cond_1eb

    if-nez v7, :cond_1eb

    if-nez v8, :cond_1eb

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v9, v0, :cond_1eb

    .line 1490
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1494
    :cond_1eb
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_225

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_225

    if-nez v11, :cond_225

    if-nez v12, :cond_225

    .line 1495
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v13, v0, :cond_225

    if-nez v14, :cond_225

    if-nez v15, :cond_225

    if-nez v16, :cond_225

    .line 1496
    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_225

    if-nez v3, :cond_225

    if-nez v4, :cond_225

    if-nez v5, :cond_225

    .line 1497
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v6, v0, :cond_225

    if-nez v7, :cond_225

    if-nez v8, :cond_225

    if-nez v9, :cond_225

    .line 1498
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1502
    :cond_225
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v2, v0, :cond_241

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_241

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_241

    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v12, v0, :cond_241

    .line 1503
    const-string/jumbo v18, "image/gif"

    return-object v18

    .line 1506
    :cond_241
    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v2, v0, :cond_25d

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v10, v0, :cond_25d

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_25d

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v12, v0, :cond_25d

    .line 1507
    const-string/jumbo v18, "image/x-bitmap"

    return-object v18

    .line 1510
    :cond_25d
    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v2, v0, :cond_285

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v10, v0, :cond_285

    const/16 v18, 0x58

    move/from16 v0, v18

    if-ne v11, v0, :cond_285

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v12, v0, :cond_285

    .line 1511
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v13, v0, :cond_285

    const/16 v18, 0x32

    move/from16 v0, v18

    if-ne v14, v0, :cond_285

    .line 1512
    const-string/jumbo v18, "image/x-pixmap"

    return-object v18

    .line 1515
    :cond_285
    const/16 v18, 0x89

    move/from16 v0, v18

    if-ne v2, v0, :cond_2bb

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v10, v0, :cond_2bb

    const/16 v18, 0x4e

    move/from16 v0, v18

    if-ne v11, v0, :cond_2bb

    .line 1516
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v12, v0, :cond_2bb

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v13, v0, :cond_2bb

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v14, v0, :cond_2bb

    .line 1517
    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_2bb

    const/16 v18, 0xa

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2bb

    .line 1518
    const-string/jumbo v18, "image/png"

    return-object v18

    .line 1521
    :cond_2bb
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_305

    const/16 v18, 0xd8

    move/from16 v0, v18

    if-ne v10, v0, :cond_305

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v11, v0, :cond_305

    .line 1522
    const/16 v18, 0xe0

    move/from16 v0, v18

    if-eq v12, v0, :cond_2d9

    const/16 v18, 0xee

    move/from16 v0, v18

    if-ne v12, v0, :cond_2dd

    .line 1523
    :cond_2d9
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1532
    :cond_2dd
    const/16 v18, 0xe1

    move/from16 v0, v18

    if-ne v12, v0, :cond_305

    .line 1533
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v15, v0, :cond_305

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_305

    const/16 v18, 0x69

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_305

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v3, v0, :cond_305

    .line 1534
    if-nez v4, :cond_305

    .line 1535
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1539
    :cond_305
    const/16 v18, 0xd0

    move/from16 v0, v18

    if-ne v2, v0, :cond_341

    const/16 v18, 0xcf

    move/from16 v0, v18

    if-ne v10, v0, :cond_341

    const/16 v18, 0x11

    move/from16 v0, v18

    if-ne v11, v0, :cond_341

    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v12, v0, :cond_341

    .line 1540
    const/16 v18, 0xa1

    move/from16 v0, v18

    if-ne v13, v0, :cond_341

    const/16 v18, 0xb1

    move/from16 v0, v18

    if-ne v14, v0, :cond_341

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_341

    const/16 v18, 0xe1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_341

    .line 1546
    invoke-static/range {p0 .. p0}, Ljava/net/URLConnection;->checkfpx(Ljava/io/InputStream;)Z

    move-result v18

    if-eqz v18, :cond_341

    .line 1547
    const-string/jumbo v18, "image/vnd.fpx"

    return-object v18

    .line 1551
    :cond_341
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_35d

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v10, v0, :cond_35d

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v11, v0, :cond_35d

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_35d

    .line 1552
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1555
    :cond_35d
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_379

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v10, v0, :cond_379

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v11, v0, :cond_379

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v12, v0, :cond_379

    .line 1556
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1559
    :cond_379
    const/16 v18, 0x52

    move/from16 v0, v18

    if-ne v2, v0, :cond_395

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_395

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_395

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v12, v0, :cond_395

    .line 1563
    const-string/jumbo v18, "audio/x-wav"

    return-object v18

    .line 1565
    :cond_395
    const/16 v18, 0x0

    return-object v18
.end method

.method private lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    .registers 14
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Ljava/net/URLConnection;->typeToPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1303
    .local v3, "contentHandlerClassName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/URLConnection;->getContentHandlerPkgPrefixes()Ljava/lang/String;

    move-result-object v4

    .line 1306
    .local v4, "contentHandlerPkgPrefixes":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v10, "|"

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .local v9, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_10
    :goto_10
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 1309
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1312
    .local v8, "packagePrefix":Ljava/lang/String;
    :try_start_1e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_35} :catch_53

    move-result-object v2

    .line 1313
    .local v2, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1315
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_37
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3a} :catch_44
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_53

    move-result-object v1

    .line 1322
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_10

    .line 1324
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/ContentHandler;

    .line 1325
    .local v7, "handler":Ljava/net/ContentHandler;
    return-object v7

    .line 1316
    .end local v7    # "handler":Ljava/net/ContentHandler;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_44
    move-exception v5

    .line 1317
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1318
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_3b

    .line 1319
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4e} :catch_53

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3b

    .line 1331
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "packagePrefix":Ljava/lang/String;
    :cond_50
    sget-object v10, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    return-object v10

    .line 1327
    .restart local v8    # "packagePrefix":Ljava/lang/String;
    :catch_53
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_10
.end method

.method private static readBytes([IILjava/io/InputStream;)I
    .registers 7
    .param p0, "c"    # [I
    .param p1, "len"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1738
    new-array v0, p1, [B

    .line 1739
    .local v0, "buf":[B
    invoke-virtual {p2, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, p1, :cond_b

    .line 1740
    const/4 v2, -0x1

    return v2

    .line 1744
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, p1, :cond_17

    .line 1745
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, p0, v1

    .line 1744
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1747
    :cond_17
    return v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .registers 5
    .param p0, "fac"    # Ljava/net/ContentHandlerFactory;

    .prologue
    const-class v2, Ljava/net/URLConnection;

    monitor-enter v2

    .line 1217
    :try_start_3
    sget-object v1, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v1, :cond_13

    .line 1218
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1220
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1221
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1c

    .line 1222
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1224
    :cond_1c
    sput-object p0, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    monitor-exit v2

    .line 1225
    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .registers 1
    .param p0, "defaultallowuserinteraction"    # Z

    .prologue
    .line 948
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 949
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1168
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .registers 2
    .param p0, "map"    # Ljava/net/FileNameMap;

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 325
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 326
    :cond_9
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 327
    return-void
.end method

.method private static skipForward(Ljava/io/InputStream;J)J
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1759
    const-wide/16 v0, 0x0

    .line 1760
    .local v0, "eachSkip":J
    const-wide/16 v2, 0x0

    .line 1762
    .local v2, "skipped":J
    :goto_4
    cmp-long v4, v2, p1

    if-eqz v4, :cond_21

    .line 1763
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1766
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1f

    .line 1767
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    .line 1768
    return-wide v2

    .line 1770
    :cond_1c
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1773
    :cond_1f
    add-long/2addr v2, v0

    goto :goto_4

    .line 1775
    :cond_21
    return-wide v2
.end method

.method private stripOffParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1274
    if-nez p1, :cond_5

    .line 1275
    return-object v1

    .line 1276
    :cond_5
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1278
    .local v0, "index":I
    if-lez v0, :cond_12

    .line 1279
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1281
    :cond_12
    return-object p1
.end method

.method private typeToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1341
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1343
    .local v2, "len":I
    new-array v3, v2, [C

    .line 1344
    .local v3, "nm":[C
    invoke-virtual {p1, v4, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v2, :cond_3b

    .line 1346
    aget-char v0, v3, v1

    .line 1347
    .local v0, "c":C
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1e

    .line 1348
    const/16 v4, 0x2e

    aput-char v4, v3, v1

    .line 1345
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1349
    :cond_1e
    const/16 v4, 0x41

    if-gt v4, v0, :cond_26

    const/16 v4, 0x5a

    if-le v0, v4, :cond_1b

    .line 1350
    :cond_26
    const/16 v4, 0x61

    if-gt v4, v0, :cond_2e

    const/16 v4, 0x7a

    if-le v0, v4, :cond_1b

    .line 1351
    :cond_2e
    const/16 v4, 0x30

    if-gt v4, v0, :cond_36

    const/16 v4, 0x39

    if-le v0, v4, :cond_1b

    .line 1352
    :cond_36
    const/16 v4, 0x5f

    aput-char v4, v3, v1

    goto :goto_1b

    .line 1355
    .end local v0    # "c":C
    :cond_3b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1095
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 1096
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_d
    if-nez p1, :cond_18

    .line 1098
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_18
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_23

    .line 1101
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1103
    :cond_23
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 936
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 403
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 737
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 765
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    const-string/jumbo v0, "content-encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getContentHandler()Ljava/net/ContentHandler;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1235
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/net/URLConnection;->stripOffParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "contentType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1237
    .local v3, "handler":Ljava/net/ContentHandler;
    if-nez v1, :cond_20

    .line 1238
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    .line 1239
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1243
    :cond_20
    if-nez v1, :cond_26

    .line 1244
    sget-object v4, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_53

    monitor-exit p0

    return-object v4

    .line 1247
    :cond_26
    :try_start_26
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/ContentHandler;

    move-object v3, v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_34
    .catchall {:try_start_26 .. :try_end_30} :catchall_53

    .line 1248
    .local v3, "handler":Ljava/net/ContentHandler;
    if-eqz v3, :cond_35

    monitor-exit p0

    .line 1249
    return-object v3

    .line 1250
    .local v3, "handler":Ljava/net/ContentHandler;
    :catch_34
    move-exception v2

    .line 1253
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_35
    :try_start_35
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v4, :cond_3f

    .line 1254
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v4, v1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_53

    move-result-object v3

    .line 1255
    :cond_3f
    if-nez v3, :cond_4a

    .line 1257
    :try_start_41
    invoke-direct {p0, v1}, Ljava/net/URLConnection;->lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_4c
    .catchall {:try_start_41 .. :try_end_44} :catchall_53

    move-result-object v3

    .line 1262
    .local v3, "handler":Ljava/net/ContentHandler;
    :goto_45
    :try_start_45
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_53

    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_4a
    monitor-exit p0

    .line 1264
    return-object v3

    .line 1258
    :catch_4c
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1260
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_53

    .restart local v3    # "handler":Ljava/net/ContentHandler;
    goto :goto_45

    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :catchall_53
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getContentLength()I
    .registers 5

    .prologue
    .line 482
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 483
    .local v0, "l":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 484
    const/4 v2, -0x1

    return v2

    .line 485
    :cond_d
    long-to-int v2, v0

    return v2
.end method

.method public getContentLengthLong()J
    .registers 5

    .prologue
    .line 498
    const-string/jumbo v0, "content-length"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    const-string/jumbo v0, "content-type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 5

    .prologue
    .line 544
    const-string/jumbo v0, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 1039
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 880
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 910
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .registers 5

    .prologue
    .line 532
    const-string/jumbo v0, "expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 686
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 654
    :catch_9
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 606
    :catch_9
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 629
    :catch_9
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 1023
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support input"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .registers 5

    .prologue
    .line 556
    const-string/jumbo v0, "last-modified"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support output"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 808
    sget-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 445
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_e

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_e
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_17

    .line 1144
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1146
    :cond_17
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1118
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_e

    .line 1119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_e
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_13

    .line 1122
    return-object v1

    .line 1124
    :cond_13
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 999
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 4
    .param p1, "allowuserinteraction"    # Z

    .prologue
    .line 922
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_d
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 925
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 384
    if-gez p1, :cond_b

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_b
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 388
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 2
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 1050
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1051
    return-void
.end method

.method public setDoInput(Z)V
    .registers 4
    .param p1, "doinput"    # Z

    .prologue
    .line 866
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_d
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 869
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 4
    .param p1, "dooutput"    # Z

    .prologue
    .line 896
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_d
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 899
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 6
    .param p1, "ifmodifiedsince"    # J

    .prologue
    .line 1011
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 1012
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_d
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 1014
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .prologue
    .line 427
    if-gez p1, :cond_b

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_b
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 431
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1070
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 1071
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_d
    if-nez p1, :cond_18

    .line 1073
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_18
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_23

    .line 1076
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1078
    :cond_23
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 4
    .param p1, "usecaches"    # Z

    .prologue
    .line 985
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 986
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_d
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 988
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
