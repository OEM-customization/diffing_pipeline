.class public final Lcom/android/okhttp/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 664
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 666
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 672
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    return-void
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1278
    invoke-static {p0, p1, p2, v4}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 1281
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1283
    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1284
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1286
    .local v1, "inetAddress":Ljava/net/InetAddress;
    :goto_2c
    if-nez v1, :cond_38

    return-object v5

    .line 1285
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_2c

    .line 1287
    :cond_38
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1288
    .local v0, "address":[B
    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_46

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1289
    :cond_46
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1292
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_4c
    invoke-static {v2}, Lcom/android/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1425
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1429
    .local v0, "c":C
    const/16 v2, 0x1f

    if-le v0, v2, :cond_14

    const/16 v2, 0x7f

    if-lt v0, v2, :cond_15

    .line 1430
    :cond_14
    return v4

    .line 1435
    :cond_15
    const-string/jumbo v2, " #%/:?@[\\]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 1436
    return v4

    .line 1424
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1439
    .end local v0    # "c":C
    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v9, 0x0

    .line 1369
    move v0, p4

    .line 1371
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_4
    if-ge v5, p2, :cond_45

    .line 1372
    array-length v7, p3

    if-ne v1, v7, :cond_a

    return v9

    .line 1375
    :cond_a
    if-eq v1, p4, :cond_17

    .line 1376
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_15

    return v9

    .line 1377
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 1381
    :cond_17
    const/4 v6, 0x0

    .line 1382
    .local v6, "value":I
    move v4, v5

    .line 1383
    .local v4, "groupOffset":I
    :goto_19
    if-ge v5, p2, :cond_27

    .line 1384
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1385
    .local v2, "c":C
    const/16 v7, 0x30

    if-lt v2, v7, :cond_27

    const/16 v7, 0x39

    if-le v2, v7, :cond_2c

    .line 1390
    .end local v2    # "c":C
    :cond_27
    sub-int v3, v5, v4

    .line 1391
    .local v3, "groupLength":I
    if-nez v3, :cond_3e

    return v9

    .line 1386
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_2c
    if-nez v6, :cond_31

    if-eq v4, v5, :cond_31

    return v9

    .line 1387
    :cond_31
    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v7, v2

    add-int/lit8 v6, v7, -0x30

    .line 1388
    const/16 v7, 0xff

    if-le v6, v7, :cond_3b

    return v9

    .line 1383
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1394
    .end local v2    # "c":C
    .restart local v3    # "groupLength":I
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v7, v6

    aput-byte v7, p3, v1

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_4

    .line 1397
    .end local v3    # "groupLength":I
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_45
    add-int/lit8 v7, p4, 0x4

    if-eq v1, v7, :cond_4a

    return v9

    .line 1398
    :cond_4a
    const/4 v7, 0x1

    return v7
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 18
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1297
    const/16 v12, 0x10

    new-array v1, v12, [B

    .line 1298
    .local v1, "address":[B
    const/4 v2, 0x0

    .line 1299
    .local v2, "b":I
    const/4 v5, -0x1

    .line 1300
    .local v5, "compress":I
    const/4 v8, -0x1

    .line 1302
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_9
    move/from16 v0, p2

    if-ge v10, v0, :cond_31

    .line 1303
    array-length v12, v1

    if-ne v2, v12, :cond_12

    const/4 v12, 0x0

    return-object v12

    .line 1306
    :cond_12
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_39

    const-string/jumbo v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 1308
    const/4 v12, -0x1

    if-eq v5, v12, :cond_28

    const/4 v12, 0x0

    return-object v12

    .line 1309
    :cond_28
    add-int/lit8 v10, v10, 0x2

    .line 1310
    add-int/lit8 v2, v2, 0x2

    .line 1311
    move v5, v2

    .line 1312
    move/from16 v0, p2

    if-ne v10, v0, :cond_48

    .line 1353
    :cond_31
    :goto_31
    array-length v12, v1

    if-eq v2, v12, :cond_a7

    .line 1354
    const/4 v12, -0x1

    if-ne v5, v12, :cond_97

    const/4 v12, 0x0

    return-object v12

    .line 1313
    :cond_39
    if-eqz v2, :cond_48

    .line 1315
    const-string/jumbo v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 1316
    add-int/lit8 v10, v10, 0x1

    .line 1328
    :cond_48
    const/4 v11, 0x0

    .line 1329
    .local v11, "value":I
    move v8, v10

    .line 1330
    :goto_4a
    move/from16 v0, p2

    if-ge v10, v0, :cond_59

    .line 1331
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1332
    .local v4, "c":C
    invoke-static {v4}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1333
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_7e

    .line 1336
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_59
    sub-int v7, v10, v8

    .line 1337
    .local v7, "groupLength":I
    if-eqz v7, :cond_60

    const/4 v12, 0x4

    if-le v7, v12, :cond_85

    :cond_60
    const/4 v12, 0x0

    return-object v12

    .line 1317
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_62
    const-string/jumbo v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 1319
    add-int/lit8 v12, v2, -0x2

    move/from16 v0, p2

    invoke-static {p0, v8, v0, v1, v12}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v12

    if-nez v12, :cond_79

    const/4 v12, 0x0

    return-object v12

    .line 1320
    :cond_79
    add-int/lit8 v2, v2, 0x2

    .line 1321
    goto :goto_31

    .line 1323
    :cond_7c
    const/4 v12, 0x0

    return-object v12

    .line 1334
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_7e
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 1330
    add-int/lit8 v10, v10, 0x1

    goto :goto_4a

    .line 1340
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_85
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 1341
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    goto/16 :goto_9

    .line 1355
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_97
    array-length v12, v1

    sub-int v13, v2, v5

    sub-int/2addr v12, v13

    sub-int v13, v2, v5

    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1356
    array-length v12, v1

    sub-int/2addr v12, v2

    add-int/2addr v12, v5

    const/4 v13, 0x0

    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1360
    :cond_a7
    :try_start_a7
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_aa
    .catch Ljava/net/UnknownHostException; {:try_start_a7 .. :try_end_aa} :catch_ac

    move-result-object v12

    return-object v12

    .line 1361
    :catch_ac
    move-exception v6

    .line 1362
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method private static domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1409
    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v4

    .line 1413
    :cond_12
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_1a

    move-result v2

    if-eqz v2, :cond_19

    .line 1414
    return-object v4

    .line 1417
    :cond_19
    return-object v1

    .line 1418
    .end local v1    # "result":Ljava/lang/String;
    :catch_1a
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v4
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .registers 13
    .param p0, "address"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 1444
    const/4 v5, -0x1

    .line 1445
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    .line 1446
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    array-length v7, p0

    if-ge v3, v7, :cond_23

    .line 1447
    move v1, v3

    .line 1448
    .local v1, "currentRunOffset":I
    :goto_b
    if-ge v3, v11, :cond_1a

    aget-byte v7, p0, v3

    if-nez v7, :cond_1a

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_1a

    .line 1449
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 1451
    :cond_1a
    sub-int v0, v3, v1

    .line 1452
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_20

    .line 1453
    move v5, v1

    .line 1454
    move v4, v0

    .line 1446
    :cond_20
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 1459
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_23
    new-instance v6, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v6}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1460
    .local v6, "result":Lcom/android/okhttp/okio/Buffer;
    const/4 v3, 0x0

    :cond_29
    :goto_29
    array-length v7, p0

    if-ge v3, v7, :cond_52

    .line 1461
    if-ne v3, v5, :cond_38

    .line 1462
    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1463
    add-int/2addr v3, v4

    .line 1464
    if-ne v3, v11, :cond_29

    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_29

    .line 1466
    :cond_38
    if-lez v3, :cond_3d

    invoke-virtual {v6, v10}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1467
    :cond_3d
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 1468
    .local v2, "group":I
    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    .line 1469
    add-int/lit8 v3, v3, 0x2

    goto :goto_29

    .line 1472
    .end local v2    # "group":I
    :cond_52
    invoke-virtual {v6}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1143
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1147
    const-string/jumbo v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1148
    const-string/jumbo v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1147
    if-nez v0, :cond_23

    .line 1149
    const-string/jumbo v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1147
    if-nez v0, :cond_23

    .line 1150
    const-string/jumbo v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1147
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .registers 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v11, -0x1

    .line 1478
    :try_start_1
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v10

    .line 1479
    .local v10, "portString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1c

    move-result v9

    .line 1480
    .local v9, "i":I
    if-lez v9, :cond_1b

    const v0, 0xffff

    if-gt v9, v0, :cond_1b

    return v9

    .line 1481
    :cond_1b
    return v11

    .line 1482
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :catch_1c
    move-exception v8

    .line 1483
    .local v8, "e":Ljava/lang/NumberFormatException;
    return v11
.end method

.method private pop()V
    .registers 5

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1167
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_31

    .line 1168
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :goto_30
    return-void

    .line 1170
    :cond_31
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1261
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1b

    .line 1262
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 1261
    :cond_a
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1264
    :cond_d
    :sswitch_d
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_a

    .line 1265
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_d

    goto :goto_a

    .line 1269
    :sswitch_1a
    return v0

    .line 1272
    :cond_1b
    return p2

    .line 1262
    :sswitch_data_1c
    .sparse-switch
        0x3a -> :sswitch_1a
        0x5b -> :sswitch_d
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1124
    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    .line 1123
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1125
    .local v8, "segment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1126
    return-void

    .line 1128
    :cond_15
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1129
    invoke-direct {p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    .line 1130
    return-void

    .line 1132
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1133
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :goto_42
    if-eqz p4, :cond_4c

    .line 1138
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    :cond_4c
    return-void

    .line 1135
    :cond_4d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_31

    .line 862
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 863
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 864
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 865
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 866
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 867
    return-void

    .line 861
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 871
    :cond_31
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .registers 11
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1095
    if-ne p2, p3, :cond_3

    .line 1097
    return-void

    .line 1099
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1100
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_f

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_37

    .line 1102
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1103
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    add-int/lit8 p2, p2, 0x1

    .line 1111
    :goto_1e
    move v2, p2

    .local v2, "i":I
    :cond_1f
    :goto_1f
    if-ge v2, p3, :cond_4a

    .line 1112
    const-string/jumbo v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1113
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_48

    const/4 v4, 0x1

    .line 1114
    .local v4, "segmentHasTrailingSlash":Z
    :goto_2b
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1115
    move v2, v3

    .line 1116
    if-eqz v4, :cond_1f

    add-int/lit8 v2, v3, 0x1

    goto :goto_1f

    .line 1107
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_37
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v5, ""

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 1113
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_48
    const/4 v4, 0x0

    .restart local v4    # "segmentHasTrailingSlash":Z
    goto :goto_2b

    .line 1118
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4a
    return-void
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v5, -0x1

    .line 1219
    sub-int v3, p2, p1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    return v5

    .line 1221
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1222
    .local v1, "c0":C
    if-lt v1, v8, :cond_17

    if-le v1, v9, :cond_1c

    :cond_17
    if-lt v1, v6, :cond_1b

    if-le v1, v7, :cond_1c

    :cond_1b
    return v5

    .line 1224
    :cond_1c
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_1e
    if-ge v2, p2, :cond_49

    .line 1225
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1227
    .local v0, "c":C
    if-lt v0, v8, :cond_2b

    if-gt v0, v9, :cond_2b

    .line 1224
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1228
    :cond_2b
    if-lt v0, v6, :cond_2f

    if-le v0, v7, :cond_28

    .line 1229
    :cond_2f
    const/16 v3, 0x30

    if-lt v0, v3, :cond_37

    const/16 v3, 0x39

    if-le v0, v3, :cond_28

    .line 1230
    :cond_37
    const/16 v3, 0x2b

    if-eq v0, v3, :cond_28

    .line 1231
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_28

    .line 1232
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_28

    .line 1234
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_48

    .line 1235
    return v2

    .line 1237
    :cond_48
    return v5

    .line 1241
    .end local v0    # "c":C
    :cond_49
    return v5
.end method

.method private skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1179
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 1180
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_10

    .line 1188
    return v0

    .line 1179
    :sswitch_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1191
    :cond_e
    return p3

    .line 1180
    nop

    :sswitch_data_10
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_b
    .end sparse-switch
.end method

.method private skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 1199
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_11

    .line 1200
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 1208
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1199
    :sswitch_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1211
    :cond_11
    return p2

    .line 1200
    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1246
    const/4 v1, 0x0

    .line 1247
    .local v1, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_14

    .line 1248
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1249
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_14

    .line 1250
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 1251
    add-int/lit8 p1, p1, 0x1

    .line 1249
    goto :goto_1

    .line 1256
    .end local v0    # "c":C
    :cond_14
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 743
    if-nez p1, :cond_c

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 747
    return-object p0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 821
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 823
    :cond_19
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 824
    const-string/jumbo v1, " \"<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_3a

    .line 826
    const-string/jumbo v1, " \"<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_36
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    return-object p0

    :cond_3a
    move-object v0, v6

    .line 827
    goto :goto_36
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 737
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 739
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 809
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 811
    :cond_19
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 812
    const-string/jumbo v1, " \"<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v7, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_3a

    .line 814
    const-string/jumbo v1, " \"<>#&="

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_36
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    return-object p0

    :cond_3a
    move-object v0, v6

    .line 815
    goto :goto_36
.end method

.method public build()Lcom/android/okhttp/HttpUrl;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 914
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_e
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1b
    new-instance v0, Lcom/android/okhttp/HttpUrl;

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl;)V

    return-object v0
.end method

.method effectivePort()I
    .registers 3

    .prologue
    .line 733
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 881
    if-eqz p1, :cond_f

    .line 882
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 881
    :cond_f
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 884
    return-object p0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 708
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_d
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    .line 709
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 711
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .prologue
    .line 783
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_b
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 788
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 800
    if-eqz p1, :cond_13

    .line 802
    const-string/jumbo v1, " \"<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 801
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 800
    :cond_13
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 804
    return-object p0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 695
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_d
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 698
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 874
    if-eqz p1, :cond_f

    .line 875
    const-string/jumbo v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 874
    :cond_f
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 877
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 719
    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_30

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_30
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 723
    return-object p0
.end method

.method parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 31
    .param p1, "base"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 972
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 973
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v3}, Lcom/android/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v23

    .line 976
    .local v23, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v26

    .line 977
    .local v26, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_c9

    .line 978
    const-string/jumbo v6, "https:"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 979
    const-string/jumbo v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 980
    const-string/jumbo v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 994
    :goto_43
    const/16 v22, 0x0

    .line 995
    .local v22, "hasUsername":Z
    const/16 v21, 0x0

    .line 996
    .local v21, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v27

    .line 997
    .local v27, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v27

    if-ge v0, v3, :cond_56

    if-nez p1, :cond_d8

    .line 1007
    :cond_56
    add-int v5, v5, v27

    .line 1010
    :goto_58
    const-string/jumbo v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    move-result v20

    .line 1011
    .local v20, "componentDelimiterOffset":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_1a6

    .line 1012
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1014
    .local v18, "c":I
    :goto_71
    sparse-switch v18, :sswitch_data_262

    goto :goto_58

    .line 1044
    :sswitch_75
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v25

    .line 1045
    .local v25, "portColonOffset":I
    add-int/lit8 v3, v25, 0x1

    move/from16 v0, v20

    if-ge v3, v0, :cond_23c

    .line 1046
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1047
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Lcom/android/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1048
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_254

    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 981
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v21    # "hasPassword":Z
    .end local v22    # "hasUsername":Z
    .end local v25    # "portColonOffset":I
    .end local v27    # "slashCount":I
    :cond_a7
    const-string/jumbo v6, "http:"

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 982
    const-string/jumbo v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 983
    const-string/jumbo v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_43

    .line 985
    :cond_c6
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 987
    :cond_c9
    if-eqz p1, :cond_d5

    .line 988
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_43

    .line 990
    :cond_d5
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 997
    .restart local v21    # "hasPassword":Z
    .restart local v22    # "hasUsername":Z
    .restart local v27    # "slashCount":I
    :cond_d8
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get2(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_56

    .line 1060
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1061
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1062
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get0(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1063
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->-get1(Lcom/android/okhttp/HttpUrl;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1066
    move/from16 v0, v23

    if-eq v5, v0, :cond_128

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_131

    .line 1067
    :cond_128
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 1072
    :cond_131
    :goto_131
    const-string/jumbo v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    move-result v24

    .line 1073
    .local v24, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1074
    move/from16 v5, v24

    .line 1077
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_17e

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_17e

    .line 1078
    const-string/jumbo v3, "#"

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 1080
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v24, 0x1

    const-string/jumbo v10, " \"<>#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v7, p2

    .line 1079
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1081
    move v5, v9

    .line 1085
    .end local v9    # "queryDelimiterOffset":I
    :cond_17e
    move/from16 v0, v23

    if-ge v5, v0, :cond_1a3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1a3

    .line 1087
    add-int/lit8 v11, v5, 0x1

    const-string/jumbo v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v23

    .line 1086
    invoke-static/range {v10 .. v17}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1090
    :cond_1a3
    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 1013
    .end local v24    # "pathDelimiterOffset":I
    .restart local v20    # "componentDelimiterOffset":I
    :cond_1a6
    const/16 v18, -0x1

    .restart local v18    # "c":I
    goto/16 :goto_71

    .line 1017
    :sswitch_1aa
    if-nez v21, :cond_20b

    .line 1019
    const-string/jumbo v3, ":"

    .line 1018
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1, v3}, Lcom/android/okhttp/HttpUrl;->-wrap0(Ljava/lang/String;IILjava/lang/String;)I

    move-result v6

    .line 1021
    .local v6, "passwordColonOffset":I
    const-string/jumbo v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    .line 1020
    invoke-static/range {v4 .. v11}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v19

    .line 1022
    .local v19, "canonicalUsername":Ljava/lang/String;
    if-eqz v22, :cond_1e4

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1022
    .end local v19    # "canonicalUsername":Ljava/lang/String;
    :cond_1e4
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1025
    move/from16 v0, v20

    if-eq v6, v0, :cond_205

    .line 1026
    const/16 v21, 0x1

    .line 1027
    add-int/lit8 v8, v6, 0x1

    .line 1028
    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move/from16 v9, v20

    .line 1027
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1030
    :cond_205
    const/16 v22, 0x1

    .line 1035
    .end local v6    # "passwordColonOffset":I
    :goto_207
    add-int/lit8 v5, v20, 0x1

    .line 1036
    goto/16 :goto_58

    .line 1032
    :cond_20b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1033
    const-string/jumbo v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v20

    .line 1032
    invoke-static/range {v7 .. v14}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_207

    .line 1050
    .restart local v25    # "portColonOffset":I
    :cond_23c
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1053
    :cond_254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_25d

    sget-object v3, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v3

    .line 1054
    :cond_25d
    move/from16 v5, v20

    .line 1055
    goto/16 :goto_131

    .line 1014
    nop

    :sswitch_data_262
    .sparse-switch
        -0x1 -> :sswitch_75
        0x23 -> :sswitch_75
        0x2f -> :sswitch_75
        0x3f -> :sswitch_75
        0x40 -> :sswitch_1aa
        0x5c -> :sswitch_75
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 702
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_c
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 704
    return-object p0
.end method

.method public port(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .prologue
    .line 727
    if-lez p1, :cond_7

    const v0, 0xffff

    if-le p1, v0, :cond_21

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_21
    iput p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 729
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 792
    if-eqz p1, :cond_13

    .line 794
    const-string/jumbo v1, " \"<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 793
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 792
    :cond_13
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 796
    return-object p0
.end method

.method reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 892
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_9
    if-ge v12, v13, :cond_24

    .line 893
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 894
    .local v0, "pathSegment":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 895
    const-string/jumbo v1, "[]"

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 894
    invoke-interface {v6, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 897
    .end local v0    # "pathSegment":Ljava/lang/String;
    :cond_24
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4e

    .line 898
    const/4 v12, 0x0

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    :goto_2f
    if-ge v12, v13, :cond_4e

    .line 899
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 900
    .local v5, "component":Ljava/lang/String;
    if-eqz v5, :cond_4b

    .line 901
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 902
    const-string/jumbo v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-static/range {v5 .. v10}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 901
    invoke-interface {v1, v12, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 898
    :cond_4b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    .line 906
    .end local v5    # "component":Ljava/lang/String;
    :cond_4e
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 908
    iget-object v6, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string/jumbo v7, " \"#<>\\^`{|}"

    move v8, v2

    move v9, v2

    move v10, v4

    move v11, v4

    .line 907
    invoke-static/range {v6 .. v11}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 910
    :cond_61
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 853
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_11

    return-object p0

    .line 856
    :cond_11
    const-string/jumbo v1, " \"<>#&="

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 857
    return-object p0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 844
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_12

    return-object p0

    .line 847
    :cond_12
    const-string/jumbo v1, " \"<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 846
    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 849
    return-object p0
.end method

.method public removePathSegment(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 776
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 777
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_15
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 676
    if-nez p1, :cond_b

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_b
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 679
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 685
    :goto_19
    return-object p0

    .line 680
    :cond_1a
    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 681
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_19

    .line 683
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 12
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 762
    if-nez p2, :cond_d

    .line 763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    .line 765
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 769
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_47
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 839
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 840
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 12
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 751
    if-nez p2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 752
    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 754
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 755
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_42
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 758
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 834
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x3a

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 921
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3e

    .line 925
    :cond_24
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 927
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    :cond_39
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 933
    :cond_3e
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8e

    .line 935
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 936
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    :goto_56
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v0

    .line 943
    .local v0, "effectivePort":I
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_68

    .line 944
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    :cond_68
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 950
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_7b

    .line 951
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 955
    :cond_7b
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_89

    .line 956
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 939
    .end local v0    # "effectivePort":I
    :cond_8e
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56
.end method

.method public username(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 689
    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_c
    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 691
    return-object p0
.end method
