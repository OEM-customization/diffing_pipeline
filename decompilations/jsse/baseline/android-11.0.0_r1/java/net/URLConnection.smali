.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final greylist-max-o contentClassPrefix:Ljava/lang/String; = "sun.net.www.content"

.field private static final greylist-max-o contentPathProp:Ljava/lang/String; = "java.content.handler.pkgs"

.field private static greylist-max-o defaultAllowUserInteraction:Z

.field private static greylist-max-o defaultUseCaches:Z

.field static greylist-max-o factory:Ljava/net/ContentHandlerFactory;

.field private static greylist-max-o fileNameMap:Ljava/net/FileNameMap;

.field private static greylist-max-o handlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/net/ContentHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected whitelist core-platform-api test-api allowUserInteraction:Z

.field private greylist-max-o connectTimeout:I

.field protected whitelist core-platform-api test-api connected:Z

.field protected whitelist core-platform-api test-api doInput:Z

.field protected whitelist core-platform-api test-api doOutput:Z

.field protected whitelist core-platform-api test-api ifModifiedSince:J

.field private greylist-max-o readTimeout:I

.field private greylist-max-o requests:Lsun/net/www/MessageHeader;

.field protected whitelist core-platform-api test-api url:Ljava/net/URL;

.field protected whitelist core-platform-api test-api useCaches:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1258
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/net/URL;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 227
    sget-boolean v1, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 246
    sget-boolean v1, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 266
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 273
    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 486
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 487
    return-void
.end method

.method private static greylist-max-o checkfpx(Ljava/io/InputStream;)Z
    .registers 26
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1637
    move-object/from16 v0, p0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 1641
    const-wide/16 v1, 0x1c

    .line 1644
    .local v1, "toSkip":J
    invoke-static {v0, v1, v2}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v3

    move-wide v5, v3

    .local v5, "posn":J
    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-gez v3, :cond_17

    .line 1645
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1646
    return v4

    .line 1649
    :cond_17
    const/16 v3, 0x10

    new-array v7, v3, [I

    .line 1650
    .local v7, "c":[I
    const/4 v8, 0x2

    invoke-static {v7, v8, v0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v9

    if-gez v9, :cond_26

    .line 1651
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1652
    return v4

    .line 1655
    :cond_26
    aget v9, v7, v4

    .line 1657
    .local v9, "byteOrder":I
    const-wide/16 v10, 0x2

    add-long/2addr v5, v10

    .line 1659
    invoke-static {v7, v8, v0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v12

    if-gez v12, :cond_35

    .line 1660
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1661
    return v4

    .line 1664
    :cond_35
    const/16 v12, 0xfe

    const/16 v13, 0x8

    const/4 v14, 0x1

    if-ne v9, v12, :cond_45

    .line 1665
    aget v15, v7, v4

    .line 1666
    .local v15, "uSectorShift":I
    aget v16, v7, v14

    shl-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    goto :goto_4c

    .line 1669
    .end local v15    # "uSectorShift":I
    :cond_45
    aget v15, v7, v4

    shl-int/2addr v15, v13

    .line 1670
    .restart local v15    # "uSectorShift":I
    aget v16, v7, v14

    add-int v15, v15, v16

    .line 1673
    :goto_4c
    add-long/2addr v5, v10

    .line 1674
    const-wide/16 v10, 0x30

    sub-long/2addr v10, v5

    .line 1675
    .end local v1    # "toSkip":J
    .local v10, "toSkip":J
    const-wide/16 v1, 0x0

    .line 1676
    .local v1, "skipped":J
    invoke-static {v0, v10, v11}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v16

    move-wide/from16 v1, v16

    cmp-long v16, v16, v10

    if-gez v16, :cond_60

    .line 1677
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1678
    return v4

    .line 1680
    :cond_60
    add-long/2addr v5, v1

    .line 1682
    const/4 v3, 0x4

    invoke-static {v7, v3, v0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v17

    if-gez v17, :cond_6c

    .line 1683
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1684
    return v4

    .line 1688
    :cond_6c
    const/16 v17, 0x3

    if-ne v9, v12, :cond_89

    .line 1689
    aget v18, v7, v4

    .line 1690
    .local v18, "sectDirStart":I
    aget v19, v7, v14

    shl-int/lit8 v19, v19, 0x8

    add-int v18, v18, v19

    .line 1691
    aget v19, v7, v8

    const/16 v16, 0x10

    shl-int/lit8 v19, v19, 0x10

    add-int v18, v18, v19

    .line 1692
    aget v19, v7, v17

    shl-int/lit8 v19, v19, 0x18

    add-int v18, v18, v19

    move/from16 v13, v18

    goto :goto_a1

    .line 1694
    .end local v18    # "sectDirStart":I
    :cond_89
    aget v18, v7, v4

    shl-int/lit8 v18, v18, 0x18

    .line 1695
    .restart local v18    # "sectDirStart":I
    aget v19, v7, v14

    const/16 v16, 0x10

    shl-int/lit8 v19, v19, 0x10

    add-int v18, v18, v19

    .line 1696
    aget v19, v7, v8

    shl-int/lit8 v19, v19, 0x8

    add-int v18, v18, v19

    .line 1697
    aget v19, v7, v17

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 1699
    .end local v18    # "sectDirStart":I
    .local v13, "sectDirStart":I
    :goto_a1
    const-wide/16 v20, 0x4

    add-long v5, v5, v20

    .line 1700
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1702
    const-wide/16 v20, 0x200

    shl-int v3, v14, v15

    move/from16 v22, v15

    .end local v15    # "uSectorShift":I
    .local v22, "uSectorShift":I
    int-to-long v14, v3

    move/from16 v23, v9

    .end local v9    # "byteOrder":I
    .local v23, "byteOrder":I
    int-to-long v8, v13

    mul-long/2addr v14, v8

    add-long v14, v14, v20

    const-wide/16 v8, 0x50

    add-long/2addr v14, v8

    .line 1705
    .end local v10    # "toSkip":J
    .local v14, "toSkip":J
    const-wide/16 v8, 0x0

    cmp-long v8, v14, v8

    if-gez v8, :cond_bf

    .line 1706
    return v4

    .line 1715
    :cond_bf
    long-to-int v8, v14

    add-int/lit8 v8, v8, 0x30

    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 1717
    invoke-static {v0, v14, v15}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v8

    cmp-long v8, v8, v14

    if-gez v8, :cond_d1

    .line 1718
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1719
    return v4

    .line 1734
    :cond_d1
    const/16 v8, 0x10

    invoke-static {v7, v8, v0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v8

    if-gez v8, :cond_dd

    .line 1735
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1736
    return v4

    .line 1740
    :cond_dd
    const/16 v16, 0x6

    const/16 v21, 0x7

    const/16 v8, 0xc1

    const/16 v9, 0x54

    const/16 v24, 0x5

    const/16 v10, 0x56

    const/16 v11, 0x61

    move/from16 v3, v23

    .end local v23    # "byteOrder":I
    .local v3, "byteOrder":I
    if-ne v3, v12, :cond_152

    aget v12, v7, v4

    if-nez v12, :cond_152

    const/4 v12, 0x2

    aget v12, v7, v12

    if-ne v12, v11, :cond_152

    aget v12, v7, v17

    if-ne v12, v10, :cond_152

    const/4 v12, 0x4

    aget v10, v7, v12

    if-ne v10, v9, :cond_152

    aget v10, v7, v24

    if-ne v10, v8, :cond_152

    aget v10, v7, v16

    const/16 v12, 0xce

    if-ne v10, v12, :cond_152

    aget v10, v7, v21

    const/16 v12, 0x11

    if-ne v10, v12, :cond_152

    const/16 v10, 0x8

    aget v12, v7, v10

    const/16 v10, 0x85

    if-ne v12, v10, :cond_152

    const/16 v10, 0x9

    aget v12, v7, v10

    const/16 v10, 0x53

    if-ne v12, v10, :cond_152

    const/16 v10, 0xa

    aget v10, v7, v10

    if-nez v10, :cond_152

    const/16 v10, 0xb

    aget v10, v7, v10

    const/16 v12, 0xaa

    if-ne v10, v12, :cond_152

    const/16 v10, 0xc

    aget v10, v7, v10

    if-nez v10, :cond_152

    const/16 v10, 0xd

    aget v10, v7, v10

    const/16 v12, 0xa1

    if-ne v10, v12, :cond_152

    const/16 v10, 0xe

    aget v10, v7, v10

    const/16 v12, 0xf9

    if-ne v10, v12, :cond_152

    const/16 v10, 0xf

    aget v10, v7, v10

    const/16 v12, 0x5b

    if-ne v10, v12, :cond_152

    .line 1746
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1747
    const/4 v4, 0x1

    return v4

    .line 1751
    :cond_152
    aget v10, v7, v17

    if-nez v10, :cond_1b7

    const/4 v10, 0x1

    aget v12, v7, v10

    if-ne v12, v11, :cond_1b7

    aget v10, v7, v4

    const/16 v11, 0x56

    if-ne v10, v11, :cond_1b7

    aget v10, v7, v24

    if-ne v10, v9, :cond_1b7

    const/4 v9, 0x4

    aget v9, v7, v9

    if-ne v9, v8, :cond_1b7

    aget v8, v7, v21

    const/16 v9, 0xce

    if-ne v8, v9, :cond_1b7

    aget v8, v7, v16

    const/16 v9, 0x11

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0x8

    aget v8, v7, v8

    const/16 v9, 0x85

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0x9

    aget v8, v7, v8

    const/16 v9, 0x53

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0xa

    aget v8, v7, v8

    if-nez v8, :cond_1b7

    const/16 v8, 0xb

    aget v8, v7, v8

    const/16 v9, 0xaa

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0xc

    aget v8, v7, v8

    if-nez v8, :cond_1b7

    const/16 v8, 0xd

    aget v8, v7, v8

    const/16 v9, 0xa1

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0xe

    aget v8, v7, v8

    const/16 v9, 0xf9

    if-ne v8, v9, :cond_1b7

    const/16 v8, 0xf

    aget v8, v7, v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_1b7

    .line 1756
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1757
    const/4 v4, 0x1

    return v4

    .line 1759
    :cond_1b7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1760
    return v4
.end method

.method private greylist-max-o getContentHandlerPkgPrefixes()Ljava/lang/String;
    .registers 4

    .line 1400
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "java.content.handler.pkgs"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1403
    .local v0, "packagePrefixList":Ljava/lang/String;
    if-eq v0, v2, :cond_22

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1407
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sun.net.www.content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getDefaultAllowUserInteraction()Z
    .registers 1

    .line 995
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static whitelist core-platform-api test-api getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1219
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized whitelist core-platform-api test-api getFileNameMap()Ljava/net/FileNameMap;
    .registers 2

    const-class v0, Ljava/net/URLConnection;

    monitor-enter v0

    .line 331
    :try_start_3
    sget-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v1, :cond_e

    .line 332
    new-instance v1, Ljava/net/DefaultFileNameMap;

    invoke-direct {v1}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 334
    :cond_e
    sget-object v1, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 330
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static whitelist core-platform-api test-api guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "fname"    # Ljava/lang/String;

    .line 1422
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 20
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1449
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1450
    return-object v1

    .line 1452
    :cond_8
    const/16 v0, 0x10

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 1453
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1454
    .local v0, "c1":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1455
    .local v3, "c2":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1456
    .local v4, "c3":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1457
    .local v5, "c4":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1458
    .local v6, "c5":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 1459
    .local v7, "c6":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1460
    .local v8, "c7":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 1461
    .local v9, "c8":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 1462
    .local v10, "c9":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 1463
    .local v11, "c10":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 1464
    .local v12, "c11":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 1465
    .local v13, "c12":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 1466
    .local v14, "c13":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 1467
    .local v15, "c14":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 1468
    .local v16, "c15":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1469
    .local v1, "c16":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1471
    const/16 v2, 0xca

    move/from16 v17, v1

    .end local v1    # "c16":I
    .local v17, "c16":I
    const/16 v1, 0xfe

    if-ne v0, v2, :cond_67

    if-ne v3, v1, :cond_67

    const/16 v2, 0xba

    if-ne v4, v2, :cond_67

    const/16 v2, 0xbe

    if-ne v5, v2, :cond_67

    .line 1472
    const-string v1, "application/java-vm"

    return-object v1

    .line 1475
    :cond_67
    const/16 v2, 0xac

    if-ne v0, v2, :cond_72

    const/16 v2, 0xed

    if-ne v3, v2, :cond_72

    .line 1477
    const-string v1, "application/x-java-serialized-object"

    return-object v1

    .line 1480
    :cond_72
    const-string v18, "application/xml"

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_eb

    .line 1481
    const/16 v2, 0x21

    if-eq v3, v2, :cond_e8

    const/16 v2, 0x68

    const/16 v1, 0x6d

    if-ne v3, v2, :cond_98

    const/16 v2, 0x74

    if-ne v4, v2, :cond_8c

    if-ne v5, v1, :cond_8c

    const/16 v2, 0x6c

    if-eq v6, v2, :cond_e8

    :cond_8c
    const/16 v2, 0x65

    if-ne v4, v2, :cond_98

    const/16 v2, 0x61

    if-ne v5, v2, :cond_98

    const/16 v2, 0x64

    if-eq v6, v2, :cond_e8

    :cond_98
    const/16 v2, 0x62

    if-ne v3, v2, :cond_a8

    const/16 v2, 0x6f

    if-ne v4, v2, :cond_a8

    const/16 v2, 0x64

    if-ne v5, v2, :cond_a8

    const/16 v2, 0x79

    if-eq v6, v2, :cond_e8

    :cond_a8
    const/16 v2, 0x48

    const/16 v1, 0x44

    if-ne v3, v2, :cond_c4

    const/16 v2, 0x54

    if-ne v4, v2, :cond_ba

    const/16 v2, 0x4d

    if-ne v5, v2, :cond_ba

    const/16 v2, 0x4c

    if-eq v6, v2, :cond_e8

    :cond_ba
    const/16 v2, 0x45

    if-ne v4, v2, :cond_c4

    const/16 v2, 0x41

    if-ne v5, v2, :cond_c4

    if-eq v6, v1, :cond_e8

    :cond_c4
    const/16 v2, 0x42

    if-ne v3, v2, :cond_d3

    const/16 v2, 0x4f

    if-ne v4, v2, :cond_d3

    if-ne v5, v1, :cond_d3

    const/16 v1, 0x59

    if-ne v6, v1, :cond_d3

    goto :goto_e8

    .line 1491
    :cond_d3
    const/16 v1, 0x3f

    if-ne v3, v1, :cond_eb

    const/16 v1, 0x78

    if-ne v4, v1, :cond_eb

    const/16 v1, 0x6d

    if-ne v5, v1, :cond_eb

    const/16 v1, 0x6c

    if-ne v6, v1, :cond_eb

    const/16 v1, 0x20

    if-ne v7, v1, :cond_eb

    .line 1492
    return-object v18

    .line 1488
    :cond_e8
    :goto_e8
    const-string v1, "text/html"

    return-object v1

    .line 1497
    :cond_eb
    const/16 v1, 0xef

    if-ne v0, v1, :cond_104

    const/16 v1, 0xbb

    if-ne v3, v1, :cond_104

    const/16 v1, 0xbf

    if-ne v4, v1, :cond_104

    .line 1498
    const/16 v1, 0x3c

    if-ne v5, v1, :cond_104

    const/16 v1, 0x3f

    if-ne v6, v1, :cond_104

    const/16 v1, 0x78

    if-ne v7, v1, :cond_104

    .line 1499
    return-object v18

    .line 1504
    :cond_104
    const/16 v1, 0xff

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_11f

    if-ne v3, v1, :cond_11f

    .line 1505
    if-nez v4, :cond_11f

    const/16 v2, 0x3c

    if-ne v5, v2, :cond_11f

    if-nez v6, :cond_11f

    const/16 v2, 0x3f

    if-ne v7, v2, :cond_11f

    if-nez v8, :cond_11f

    const/16 v2, 0x78

    if-ne v9, v2, :cond_11f

    .line 1507
    return-object v18

    .line 1511
    :cond_11f
    if-ne v0, v1, :cond_138

    const/16 v2, 0xfe

    if-ne v3, v2, :cond_138

    .line 1512
    const/16 v2, 0x3c

    if-ne v4, v2, :cond_138

    if-nez v5, :cond_138

    const/16 v2, 0x3f

    if-ne v6, v2, :cond_138

    if-nez v7, :cond_138

    const/16 v2, 0x78

    if-ne v8, v2, :cond_138

    if-nez v9, :cond_138

    .line 1514
    return-object v18

    .line 1519
    :cond_138
    if-nez v0, :cond_166

    if-nez v3, :cond_166

    const/16 v2, 0xfe

    if-ne v4, v2, :cond_166

    if-ne v5, v1, :cond_166

    .line 1520
    if-nez v6, :cond_163

    if-nez v7, :cond_163

    if-nez v8, :cond_163

    const/16 v2, 0x3c

    if-ne v9, v2, :cond_163

    if-nez v10, :cond_163

    if-nez v11, :cond_163

    if-nez v12, :cond_163

    const/16 v2, 0x3f

    if-ne v13, v2, :cond_163

    if-nez v14, :cond_163

    if-nez v15, :cond_163

    if-nez v16, :cond_163

    move/from16 v2, v17

    const/16 v1, 0x78

    .end local v17    # "c16":I
    .local v2, "c16":I
    if-ne v2, v1, :cond_168

    .line 1523
    return-object v18

    .line 1520
    .end local v2    # "c16":I
    .restart local v17    # "c16":I
    :cond_163
    move/from16 v2, v17

    .end local v17    # "c16":I
    .restart local v2    # "c16":I
    goto :goto_168

    .line 1519
    .end local v2    # "c16":I
    .restart local v17    # "c16":I
    :cond_166
    move/from16 v2, v17

    .line 1527
    .end local v17    # "c16":I
    .restart local v2    # "c16":I
    :cond_168
    :goto_168
    const/16 v1, 0xff

    if-ne v0, v1, :cond_193

    const/16 v1, 0xfe

    if-ne v3, v1, :cond_193

    if-nez v4, :cond_193

    if-nez v5, :cond_193

    .line 1528
    const/16 v1, 0x3c

    if-ne v6, v1, :cond_193

    if-nez v7, :cond_193

    if-nez v8, :cond_193

    if-nez v9, :cond_193

    const/16 v1, 0x3f

    if-ne v10, v1, :cond_193

    if-nez v11, :cond_193

    if-nez v12, :cond_193

    if-nez v13, :cond_193

    const/16 v1, 0x78

    if-ne v14, v1, :cond_193

    if-nez v15, :cond_193

    if-nez v16, :cond_193

    if-nez v2, :cond_193

    .line 1531
    return-object v18

    .line 1535
    :cond_193
    const/16 v1, 0x47

    move/from16 v18, v2

    .end local v2    # "c16":I
    .local v18, "c16":I
    const/16 v2, 0x46

    if-ne v0, v1, :cond_1a8

    const/16 v1, 0x49

    if-ne v3, v1, :cond_1a8

    if-ne v4, v2, :cond_1a8

    const/16 v1, 0x38

    if-ne v5, v1, :cond_1a8

    .line 1536
    const-string v1, "image/gif"

    return-object v1

    .line 1539
    :cond_1a8
    const/16 v1, 0x23

    const/16 v2, 0x66

    if-ne v0, v1, :cond_1bb

    const/16 v1, 0x64

    if-ne v3, v1, :cond_1bb

    const/16 v1, 0x65

    if-ne v4, v1, :cond_1bb

    if-ne v5, v2, :cond_1bb

    .line 1540
    const-string v1, "image/x-bitmap"

    return-object v1

    .line 1543
    :cond_1bb
    const/16 v1, 0x50

    const/16 v2, 0x21

    if-ne v0, v2, :cond_1d6

    const/16 v2, 0x20

    if-ne v3, v2, :cond_1d6

    const/16 v2, 0x58

    if-ne v4, v2, :cond_1d6

    if-ne v5, v1, :cond_1d6

    const/16 v2, 0x4d

    if-ne v6, v2, :cond_1d6

    const/16 v2, 0x32

    if-ne v7, v2, :cond_1d6

    .line 1545
    const-string v1, "image/x-pixmap"

    return-object v1

    .line 1548
    :cond_1d6
    const/16 v2, 0x89

    if-ne v0, v2, :cond_1f7

    if-ne v3, v1, :cond_1f7

    const/16 v1, 0x4e

    if-ne v4, v1, :cond_1f7

    const/16 v1, 0x47

    if-ne v5, v1, :cond_1f7

    const/16 v1, 0xd

    if-ne v6, v1, :cond_1f7

    const/16 v1, 0xa

    if-ne v7, v1, :cond_1f7

    const/16 v1, 0x1a

    if-ne v8, v1, :cond_1f7

    const/16 v1, 0xa

    if-ne v9, v1, :cond_1f7

    .line 1551
    const-string v1, "image/png"

    return-object v1

    .line 1554
    :cond_1f7
    const/16 v1, 0xff

    if-ne v0, v1, :cond_226

    const/16 v2, 0xd8

    if-ne v3, v2, :cond_226

    if-ne v4, v1, :cond_226

    .line 1555
    const/16 v1, 0xe0

    if-eq v5, v1, :cond_223

    const/16 v1, 0xee

    if-ne v5, v1, :cond_20a

    goto :goto_223

    .line 1565
    :cond_20a
    const/16 v1, 0xe1

    if-ne v5, v1, :cond_226

    const/16 v1, 0x45

    if-ne v8, v1, :cond_226

    const/16 v1, 0x78

    if-ne v9, v1, :cond_226

    const/16 v1, 0x69

    if-ne v10, v1, :cond_226

    const/16 v1, 0x66

    if-ne v11, v1, :cond_226

    if-nez v12, :cond_226

    .line 1568
    const-string v1, "image/jpeg"

    return-object v1

    .line 1556
    :cond_223
    :goto_223
    const-string v1, "image/jpeg"

    return-object v1

    .line 1572
    :cond_226
    const/16 v1, 0xd0

    if-ne v0, v1, :cond_24f

    const/16 v1, 0xcf

    if-ne v3, v1, :cond_24f

    const/16 v1, 0x11

    if-ne v4, v1, :cond_24f

    const/16 v1, 0xe0

    if-ne v5, v1, :cond_24f

    const/16 v1, 0xa1

    if-ne v6, v1, :cond_24f

    const/16 v1, 0xb1

    if-ne v7, v1, :cond_24f

    const/16 v1, 0x1a

    if-ne v8, v1, :cond_24f

    const/16 v1, 0xe1

    if-ne v9, v1, :cond_24f

    .line 1579
    invoke-static/range {p0 .. p0}, Ljava/net/URLConnection;->checkfpx(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 1580
    const-string v1, "image/vnd.fpx"

    return-object v1

    .line 1584
    :cond_24f
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_262

    const/16 v2, 0x73

    if-ne v3, v2, :cond_262

    const/16 v2, 0x6e

    if-ne v4, v2, :cond_262

    const/16 v2, 0x64

    if-ne v5, v2, :cond_262

    .line 1585
    const-string v1, "audio/basic"

    return-object v1

    .line 1588
    :cond_262
    const/16 v2, 0x64

    if-ne v0, v2, :cond_273

    const/16 v2, 0x6e

    if-ne v3, v2, :cond_273

    const/16 v2, 0x73

    if-ne v4, v2, :cond_273

    if-ne v5, v1, :cond_273

    .line 1589
    const-string v1, "audio/basic"

    return-object v1

    .line 1592
    :cond_273
    const/16 v1, 0x52

    if-ne v0, v1, :cond_284

    const/16 v1, 0x49

    if-ne v3, v1, :cond_284

    const/16 v1, 0x46

    if-ne v4, v1, :cond_284

    if-ne v5, v1, :cond_284

    .line 1596
    const-string v1, "audio/x-wav"

    return-object v1

    .line 1598
    :cond_284
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    .registers 11
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1334
    invoke-direct {p0, p1}, Ljava/net/URLConnection;->typeToPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "contentHandlerClassName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/URLConnection;->getContentHandlerPkgPrefixes()Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "contentHandlerPkgPrefixes":Ljava/lang/String;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    .local v2, "packagePrefixIter":Ljava/util/StringTokenizer;
    :goto_f
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1342
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1345
    .local v3, "packagePrefix":Ljava/lang/String;
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_31} :catch_4f

    .line 1346
    .local v4, "clsName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1348
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_32
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_36} :catch_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_4f

    move-object v5, v6

    .line 1354
    goto :goto_44

    .line 1349
    :catch_38
    move-exception v6

    .line 1350
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_39
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1351
    .local v7, "cl":Ljava/lang/ClassLoader;
    if-eqz v7, :cond_44

    .line 1352
    invoke-virtual {v7, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    .line 1355
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "cl":Ljava/lang/ClassLoader;
    :cond_44
    :goto_44
    if-eqz v5, :cond_4e

    .line 1356
    nop

    .line 1357
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/ContentHandler;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4d} :catch_4f

    .line 1358
    .local v6, "handler":Ljava/net/ContentHandler;
    return-object v6

    .line 1361
    .end local v4    # "clsName":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "handler":Ljava/net/ContentHandler;
    :cond_4e
    goto :goto_50

    .line 1360
    :catch_4f
    move-exception v4

    .line 1362
    .end local v3    # "packagePrefix":Ljava/lang/String;
    :goto_50
    goto :goto_f

    .line 1364
    :cond_51
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    return-object v3
.end method

.method private static greylist-max-o readBytes([IILjava/io/InputStream;)I
    .registers 7
    .param p0, "c"    # [I
    .param p1, "len"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1771
    new-array v0, p1, [B

    .line 1772
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, p1, :cond_b

    .line 1773
    const/4 v1, -0x1

    return v1

    .line 1777
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, p1, :cond_17

    .line 1778
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, p0, v2

    .line 1777
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1780
    .end local v2    # "i":I
    :cond_17
    return v1
.end method

.method public static declared-synchronized whitelist core-platform-api test-api setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .registers 4
    .param p0, "fac"    # Ljava/net/ContentHandlerFactory;

    const-class v0, Ljava/net/URLConnection;

    monitor-enter v0

    .line 1248
    :try_start_3
    sget-object v1, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-nez v1, :cond_14

    .line 1251
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 1252
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_10

    .line 1253
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1255
    :cond_10
    sput-object p0, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1256
    monitor-exit v0

    return-void

    .line 1249
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_14
    :try_start_14
    new-instance v1, Ljava/lang/Error;

    const-string v2, "factory already defined"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 1247
    .end local p0    # "fac":Ljava/net/ContentHandlerFactory;
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist core-platform-api test-api setDefaultAllowUserInteraction(Z)V
    .registers 1
    .param p0, "defaultallowuserinteraction"    # Z

    .line 979
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 980
    return-void
.end method

.method public static whitelist core-platform-api test-api setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1199
    return-void
.end method

.method public static whitelist core-platform-api test-api setFileNameMap(Ljava/net/FileNameMap;)V
    .registers 2
    .param p0, "map"    # Ljava/net/FileNameMap;

    .line 354
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 355
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 356
    :cond_9
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 357
    return-void
.end method

.method private static greylist-max-o skipForward(Ljava/io/InputStream;J)J
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1792
    const-wide/16 v0, 0x0

    .line 1793
    .local v0, "eachSkip":J
    const-wide/16 v2, 0x0

    .line 1795
    .local v2, "skipped":J
    :goto_4
    cmp-long v4, v2, p1

    if-eqz v4, :cond_21

    .line 1796
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1799
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1f

    .line 1800
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    .line 1801
    return-wide v2

    .line 1803
    :cond_1c
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1806
    :cond_1f
    add-long/2addr v2, v0

    goto :goto_4

    .line 1808
    :cond_21
    return-wide v2
.end method

.method private greylist-max-o stripOffParameters(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;

    .line 1307
    if-nez p1, :cond_4

    .line 1308
    const/4 v0, 0x0

    return-object v0

    .line 1309
    :cond_4
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1311
    .local v0, "index":I
    if-lez v0, :cond_12

    .line 1312
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1314
    :cond_12
    return-object p1
.end method

.method private greylist-max-o typeToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;

    .line 1374
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1375
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1376
    .local v0, "len":I
    new-array v1, v0, [C

    .line 1377
    .local v1, "nm":[C
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1378
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_3b

    .line 1379
    aget-char v3, v1, v2

    .line 1380
    .local v3, "c":C
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1c

    .line 1381
    const/16 v4, 0x2e

    aput-char v4, v1, v2

    goto :goto_38

    .line 1382
    :cond_1c
    const/16 v4, 0x41

    if-gt v4, v3, :cond_24

    const/16 v4, 0x5a

    if-le v3, v4, :cond_38

    :cond_24
    const/16 v4, 0x61

    if-gt v4, v3, :cond_2c

    const/16 v4, 0x7a

    if-le v3, v4, :cond_38

    :cond_2c
    const/16 v4, 0x30

    if-gt v4, v3, :cond_34

    const/16 v4, 0x39

    if-le v3, v4, :cond_38

    .line 1385
    :cond_34
    const/16 v4, 0x5f

    aput-char v4, v1, v2

    .line 1378
    .end local v3    # "c":C
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1388
    .end local v2    # "i":I
    :cond_3b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public whitelist core-platform-api test-api addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1126
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_1f

    .line 1128
    if-eqz p1, :cond_17

    .line 1131
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_11

    .line 1132
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1134
    :cond_11
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    return-void

    .line 1129
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api getAllowUserInteraction()Z
    .registers 2

    .line 967
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getConnectTimeout()I
    .registers 2

    .line 434
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public whitelist core-platform-api test-api getContent()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 768
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 796
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 551
    const-string v0, "content-encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized greylist-max-o getContentHandler()Ljava/net/ContentHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1266
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/URLConnection;->stripOffParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1269
    .local v1, "handler":Ljava/net/ContentHandler;
    if-nez v0, :cond_22

    .line 1270
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_22

    .line 1271
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1275
    .end local p0    # "this":Ljava/net/URLConnection;
    :cond_22
    if-nez v0, :cond_28

    .line 1276
    sget-object v2, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_58

    monitor-exit p0

    return-object v2

    .line 1280
    :cond_28
    :try_start_28
    sget-object v2, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/ContentHandler;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_36
    .catchall {:try_start_28 .. :try_end_30} :catchall_58

    move-object v1, v2

    .line 1281
    if-eqz v1, :cond_35

    .line 1282
    monitor-exit p0

    return-object v1

    .line 1284
    .restart local p0    # "this":Ljava/net/URLConnection;
    :cond_35
    goto :goto_37

    .line 1283
    .end local p0    # "this":Ljava/net/URLConnection;
    :catch_36
    move-exception v2

    .line 1286
    :goto_37
    :try_start_37
    sget-object v2, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v2, :cond_42

    .line 1287
    sget-object v2, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v2, v0}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_58

    move-object v1, v2

    .line 1288
    :cond_42
    if-nez v1, :cond_56

    .line 1290
    :try_start_44
    invoke-direct {p0, v0}, Ljava/net/URLConnection;->lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;

    move-result-object v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_4a
    .catchall {:try_start_44 .. :try_end_48} :catchall_58

    move-object v1, v2

    .line 1294
    goto :goto_51

    .line 1291
    :catch_4a
    move-exception v2

    .line 1292
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1293
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    move-object v1, v3

    .line 1295
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    sget-object v2, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_58

    .line 1297
    :cond_56
    monitor-exit p0

    return-object v1

    .line 1265
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "handler":Ljava/net/ContentHandler;
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist core-platform-api test-api getContentLength()I
    .registers 5

    .line 513
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 514
    .local v0, "l":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 515
    const/4 v2, -0x1

    return v2

    .line 516
    :cond_d
    long-to-int v2, v0

    return v2
.end method

.method public whitelist core-platform-api test-api getContentLengthLong()J
    .registers 4

    .line 529
    const-string v0, "content-length"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getContentType()Ljava/lang/String;
    .registers 2

    .line 540
    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDate()J
    .registers 4

    .line 575
    const-string v0, "date"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getDefaultUseCaches()Z
    .registers 2

    .line 1070
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getDoInput()Z
    .registers 2

    .line 911
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getDoOutput()Z
    .registers 2

    .line 941
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public whitelist core-platform-api test-api getExpiration()J
    .registers 4

    .line 563
    const-string v0, "expires"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getHeaderField(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 717
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .line 682
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v1

    .line 685
    :catch_9
    move-exception v1

    .line 686
    return-wide p2
.end method

.method public whitelist core-platform-api test-api getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .line 634
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 637
    :catch_9
    move-exception v1

    .line 638
    return p2
.end method

.method public whitelist core-platform-api test-api getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .line 657
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "value":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v1

    .line 660
    :catch_9
    move-exception v1

    .line 661
    return-wide p2
.end method

.method public whitelist core-platform-api test-api getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 616
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIfModifiedSince()J
    .registers 3

    .line 1054
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "protocol doesn\'t support input"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getLastModified()J
    .registers 4

    .line 587
    const-string v0, "last-modified"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "protocol doesn\'t support output"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getPermission()Ljava/security/Permission;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    sget-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getReadTimeout()I
    .registers 2

    .line 476
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1171
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_13

    .line 1174
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_d

    .line 1175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1177
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1172
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1149
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_f

    .line 1152
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_a

    .line 1153
    const/4 v0, 0x0

    return-object v0

    .line 1155
    :cond_a
    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1150
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getURL()Ljava/net/URL;
    .registers 2

    .line 498
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUseCaches()Z
    .registers 2

    .line 1030
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public whitelist core-platform-api test-api setAllowUserInteraction(Z)V
    .registers 4
    .param p1, "allowuserinteraction"    # Z

    .line 953
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 955
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 956
    return-void

    .line 954
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setConnectTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 415
    if-ltz p1, :cond_5

    .line 418
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 419
    return-void

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setDefaultUseCaches(Z)V
    .registers 2
    .param p1, "defaultusecaches"    # Z

    .line 1081
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1082
    return-void
.end method

.method public whitelist core-platform-api test-api setDoInput(Z)V
    .registers 4
    .param p1, "doinput"    # Z

    .line 897
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 899
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 900
    return-void

    .line 898
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setDoOutput(Z)V
    .registers 4
    .param p1, "dooutput"    # Z

    .line 927
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 929
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 930
    return-void

    .line 928
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setIfModifiedSince(J)V
    .registers 5
    .param p1, "ifmodifiedsince"    # J

    .line 1042
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 1044
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 1045
    return-void

    .line 1043
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setReadTimeout(I)V
    .registers 4
    .param p1, "timeout"    # I

    .line 458
    if-ltz p1, :cond_5

    .line 461
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 462
    return-void

    .line 459
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1101
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_1f

    .line 1103
    if-eqz p1, :cond_17

    .line 1106
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_11

    .line 1107
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1109
    :cond_11
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return-void

    .line 1104
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api setUseCaches(Z)V
    .registers 4
    .param p1, "usecaches"    # Z

    .line 1016
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 1018
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 1019
    return-void

    .line 1017
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
