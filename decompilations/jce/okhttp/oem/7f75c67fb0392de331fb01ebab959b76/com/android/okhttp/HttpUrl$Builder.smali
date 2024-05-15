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
.field greylist-max-o encodedFragment:Ljava/lang/String;

.field greylist-max-o encodedPassword:Ljava/lang/String;

.field final greylist-max-o encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o encodedUsername:Ljava/lang/String;

.field greylist-max-o host:Ljava/lang/String;

.field greylist-max-o port:I

.field greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 673
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 675
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 681
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-void
.end method

.method private static greylist-max-o canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1288
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/okhttp/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    .line 1291
    .local v1, "percentDecoded":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1293
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_30

    .line 1295
    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    :goto_30
    nop

    .line 1296
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_35

    const/4 v2, 0x0

    return-object v2

    .line 1297
    :cond_35
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1298
    .local v2, "address":[B
    array-length v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_43

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1299
    :cond_43
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1302
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "address":[B
    :cond_49
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl$Builder;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z
    .registers 6
    .param p0, "hostnameAscii"    # Ljava/lang/String;

    .line 1434
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1435
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1439
    .local v1, "c":C
    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-le v1, v2, :cond_22

    const/16 v2, 0x7f

    if-lt v1, v2, :cond_15

    goto :goto_22

    .line 1445
    :cond_15
    const-string v2, " #%/:?@[\\]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    .line 1446
    return v3

    .line 1434
    .end local v1    # "c":C
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1440
    .restart local v1    # "c":C
    :cond_22
    :goto_22
    return v3

    .line 1449
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .registers 13
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .line 1379
    move v0, p4

    .line 1381
    .local v0, "b":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x0

    if-ge v1, p2, :cond_45

    .line 1382
    array-length v3, p3

    if-ne v0, v3, :cond_9

    return v2

    .line 1385
    :cond_9
    if-eq v0, p4, :cond_16

    .line 1386
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_14

    return v2

    .line 1387
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 1391
    :cond_16
    const/4 v3, 0x0

    .line 1392
    .local v3, "value":I
    move v4, v1

    .line 1393
    .local v4, "groupOffset":I
    :goto_18
    if-ge v1, p2, :cond_39

    .line 1394
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1395
    .local v5, "c":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_39

    const/16 v7, 0x39

    if-le v5, v7, :cond_27

    goto :goto_39

    .line 1396
    :cond_27
    if-nez v3, :cond_2c

    if-eq v4, v1, :cond_2c

    return v2

    .line 1397
    :cond_2c
    mul-int/lit8 v7, v3, 0xa

    add-int/2addr v7, v5

    add-int/lit8 v3, v7, -0x30

    .line 1398
    const/16 v6, 0xff

    if-le v3, v6, :cond_36

    return v2

    .line 1393
    .end local v5    # "c":C
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1400
    :cond_39
    :goto_39
    sub-int v5, v1, v4

    .line 1401
    .local v5, "groupLength":I
    if-nez v5, :cond_3e

    return v2

    .line 1404
    :cond_3e
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "b":I
    .local v2, "b":I
    int-to-byte v6, v3

    aput-byte v6, p3, v0

    .line 1405
    .end local v3    # "value":I
    .end local v4    # "groupOffset":I
    .end local v5    # "groupLength":I
    move v0, v2

    goto :goto_2

    .line 1407
    .end local v1    # "i":I
    .end local v2    # "b":I
    .restart local v0    # "b":I
    :cond_45
    add-int/lit8 v1, p4, 0x4

    if-eq v0, v1, :cond_4a

    return v2

    .line 1408
    :cond_4a
    const/4 v1, 0x1

    return v1
.end method

.method private static greylist-max-o decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .registers 14
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1307
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1308
    .local v0, "address":[B
    const/4 v1, 0x0

    .line 1309
    .local v1, "b":I
    const/4 v2, -0x1

    .line 1310
    .local v2, "compress":I
    const/4 v3, -0x1

    .line 1312
    .local v3, "groupOffset":I
    move v4, p1

    .local v4, "i":I
    :goto_8
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v4, p2, :cond_7c

    .line 1313
    array-length v8, v0

    if-ne v1, v8, :cond_11

    return-object v7

    .line 1316
    :cond_11
    add-int/lit8 v8, v4, 0x2

    if-gt v8, p2, :cond_29

    const-string v8, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1318
    if-eq v2, v5, :cond_21

    return-object v7

    .line 1319
    :cond_21
    add-int/lit8 v4, v4, 0x2

    .line 1320
    add-int/lit8 v1, v1, 0x2

    .line 1321
    move v2, v1

    .line 1322
    if-ne v4, p2, :cond_4c

    goto :goto_7c

    .line 1323
    :cond_29
    if-eqz v1, :cond_4c

    .line 1325
    const-string v8, ":"

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 1327
    :cond_37
    const-string v8, "."

    invoke-virtual {p0, v4, v8, v6, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 1329
    add-int/lit8 v8, v1, -0x2

    invoke-static {p0, v3, p2, v0, v8}, Lcom/android/okhttp/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v8

    if-nez v8, :cond_48

    return-object v7

    .line 1330
    :cond_48
    add-int/lit8 v1, v1, 0x2

    .line 1331
    goto :goto_7c

    .line 1333
    :cond_4b
    return-object v7

    .line 1338
    :cond_4c
    :goto_4c
    const/4 v6, 0x0

    .line 1339
    .local v6, "value":I
    move v3, v4

    .line 1340
    :goto_4e
    if-ge v4, p2, :cond_62

    .line 1341
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1342
    .local v8, "c":C
    invoke-static {v8}, Lcom/android/okhttp/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1343
    .local v9, "hexDigit":I
    if-ne v9, v5, :cond_5b

    goto :goto_62

    .line 1344
    :cond_5b
    shl-int/lit8 v10, v6, 0x4

    add-int v6, v10, v9

    .line 1340
    .end local v8    # "c":C
    .end local v9    # "hexDigit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 1346
    :cond_62
    :goto_62
    sub-int v5, v4, v3

    .line 1347
    .local v5, "groupLength":I
    if-eqz v5, :cond_7b

    const/4 v8, 0x4

    if-le v5, v8, :cond_6a

    goto :goto_7b

    .line 1350
    :cond_6a
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "b":I
    .local v7, "b":I
    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 1351
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "b":I
    .restart local v1    # "b":I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1352
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    goto :goto_8

    .line 1347
    .restart local v5    # "groupLength":I
    .restart local v6    # "value":I
    :cond_7b
    :goto_7b
    return-object v7

    .line 1363
    .end local v4    # "i":I
    .end local v5    # "groupLength":I
    .end local v6    # "value":I
    :cond_7c
    :goto_7c
    array-length v4, v0

    if-eq v1, v4, :cond_91

    .line 1364
    if-ne v2, v5, :cond_82

    return-object v7

    .line 1365
    :cond_82
    array-length v4, v0

    sub-int v5, v1, v2

    sub-int/2addr v4, v5

    sub-int v5, v1, v2

    invoke-static {v0, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1366
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-static {v0, v2, v4, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1370
    :cond_91
    :try_start_91
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4
    :try_end_95
    .catch Ljava/net/UnknownHostException; {:try_start_91 .. :try_end_95} :catch_96

    return-object v4

    .line 1371
    :catch_96
    move-exception v4

    .line 1372
    .local v4, "e":Ljava/net/UnknownHostException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private static greylist-max-o domainToAscii(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .line 1419
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1420
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object v0

    .line 1423
    :cond_12
    invoke-static {v1}, Lcom/android/okhttp/HttpUrl$Builder;->containsInvalidHostnameAsciiCodes(Ljava/lang/String;)Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_16} :catch_1a

    if-eqz v2, :cond_19

    .line 1424
    return-object v0

    .line 1427
    :cond_19
    return-object v1

    .line 1428
    .end local v1    # "result":Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 1429
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method

.method private static greylist-max-o inet6AddressToAscii([B)Ljava/lang/String;
    .registers 9
    .param p0, "address"    # [B

    .line 1454
    const/4 v0, -0x1

    .line 1455
    .local v0, "longestRunOffset":I
    const/4 v1, 0x0

    .line 1456
    .local v1, "longestRunLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, p0

    const/16 v4, 0x10

    if-ge v2, v3, :cond_21

    .line 1457
    move v3, v2

    .line 1458
    .local v3, "currentRunOffset":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-byte v5, p0, v2

    if-nez v5, :cond_18

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_18

    .line 1459
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 1461
    :cond_18
    sub-int v4, v2, v3

    .line 1462
    .local v4, "currentRunLength":I
    if-le v4, v1, :cond_1e

    .line 1463
    move v0, v3

    .line 1464
    move v1, v4

    .line 1456
    .end local v3    # "currentRunOffset":I
    .end local v4    # "currentRunLength":I
    :cond_1e
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1469
    .end local v2    # "i":I
    :cond_21
    new-instance v2, Lcom/android/okhttp/okio/Buffer;

    invoke-direct {v2}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    .line 1470
    .local v2, "result":Lcom/android/okhttp/okio/Buffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_27
    :goto_27
    array-length v5, p0

    if-ge v3, v5, :cond_52

    .line 1471
    const/16 v5, 0x3a

    if-ne v3, v0, :cond_38

    .line 1472
    invoke-virtual {v2, v5}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1473
    add-int/2addr v3, v1

    .line 1474
    if-ne v3, v4, :cond_27

    invoke-virtual {v2, v5}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    goto :goto_27

    .line 1476
    :cond_38
    if-lez v3, :cond_3d

    invoke-virtual {v2, v5}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    .line 1477
    :cond_3d
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 1478
    .local v5, "group":I
    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Lcom/android/okhttp/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/android/okhttp/okio/Buffer;

    .line 1479
    nop

    .end local v5    # "group":I
    add-int/lit8 v3, v3, 0x2

    .line 1480
    goto :goto_27

    .line 1482
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v2}, Lcom/android/okhttp/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o isDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 1153
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private greylist-max-o isDotDot(Ljava/lang/String;)Z
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 1157
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1158
    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1159
    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1160
    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 1157
    :goto_24
    return v0
.end method

.method private static greylist-max-o parsePort(Ljava/lang/String;II)I
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1488
    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "portString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_12} :catch_1b

    .line 1490
    .local v2, "i":I
    if-lez v2, :cond_1a

    const v3, 0xffff

    if-gt v2, v3, :cond_1a

    return v2

    .line 1491
    :cond_1a
    return v0

    .line 1492
    .end local v1    # "portString":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_1b
    move-exception v1

    .line 1493
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method private greylist-max-o pop()V
    .registers 5

    .line 1174
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1177
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1178
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 1180
    :cond_2a
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    :goto_2f
    return-void
.end method

.method private static greylist-max-o portColonOffset(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1271
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_20

    .line 1272
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1f

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_10

    goto :goto_1c

    .line 1274
    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1c

    .line 1275
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_10

    .line 1271
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1279
    :cond_1f
    return v0

    .line 1282
    .end local v0    # "i":I
    :cond_20
    return p2
.end method

.method private greylist-max-o push(Ljava/lang/String;IIZZ)V
    .registers 14
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .line 1133
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "segment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1136
    return-void

    .line 1138
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1139
    invoke-direct {p0}, Lcom/android/okhttp/HttpUrl$Builder;->pop()V

    .line 1140
    return-void

    .line 1142
    :cond_1e
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1143
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1145
    :cond_3e
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    :goto_43
    if-eqz p4, :cond_4c

    .line 1148
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_4c
    return-void
.end method

.method private greylist-max-o removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .registers 5
    .param p1, "canonicalName"    # Ljava/lang/String;

    .line 870
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_31

    .line 871
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 872
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 873
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 874
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 875
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 876
    return-void

    .line 870
    :cond_2e
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 880
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private greylist-max-o resolvePath(Ljava/lang/String;II)V
    .registers 15
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1105
    if-ne p2, p3, :cond_3

    .line 1107
    return-void

    .line 1109
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1110
    .local v0, "c":C
    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    .line 1117
    :cond_13
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 1112
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1113
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 p2, p2, 0x1

    .line 1121
    :goto_2a
    move v1, p2

    .local v1, "i":I
    :goto_2b
    if-ge v1, p3, :cond_48

    .line 1122
    const-string v2, "/\\"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {p1, v1, p3, v2}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1123
    .local v2, "pathSegmentDelimiterOffset":I
    if-ge v2, p3, :cond_37

    move v4, v3

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    move v10, v4

    .line 1124
    .local v10, "segmentHasTrailingSlash":Z
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1125
    move v1, v2

    .line 1126
    if-eqz v10, :cond_47

    add-int/lit8 v1, v1, 0x1

    .line 1127
    .end local v2    # "pathSegmentDelimiterOffset":I
    .end local v10    # "segmentHasTrailingSlash":Z
    :cond_47
    goto :goto_2b

    .line 1128
    .end local v1    # "i":I
    :cond_48
    return-void
.end method

.method private static greylist-max-o schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1229
    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    .line 1231
    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1232
    .local v0, "c0":C
    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v3, :cond_1c

    :cond_17
    if-lt v0, v4, :cond_4b

    if-le v0, v2, :cond_1c

    goto :goto_4b

    .line 1234
    :cond_1c
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_1e
    if-ge v6, p2, :cond_4a

    .line 1235
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1237
    .local v7, "c":C
    if-lt v7, v5, :cond_28

    if-le v7, v3, :cond_47

    :cond_28
    if-lt v7, v4, :cond_2c

    if-le v7, v2, :cond_47

    :cond_2c
    const/16 v8, 0x30

    if-lt v7, v8, :cond_34

    const/16 v8, 0x39

    if-le v7, v8, :cond_47

    :cond_34
    const/16 v8, 0x2b

    if-eq v7, v8, :cond_47

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_47

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_41

    .line 1243
    goto :goto_47

    .line 1244
    :cond_41
    const/16 v2, 0x3a

    if-ne v7, v2, :cond_46

    .line 1245
    return v6

    .line 1247
    :cond_46
    return v1

    .line 1234
    .end local v7    # "c":C
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1251
    .end local v6    # "i":I
    :cond_4a
    return v1

    .line 1232
    :cond_4b
    :goto_4b
    return v1
.end method

.method private greylist-max-o skipLeadingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1189
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_20

    .line 1190
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1c

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1c

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1c

    .line 1198
    return v0

    .line 1196
    :cond_1c
    nop

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1201
    .end local v0    # "i":I
    :cond_20
    return p3
.end method

.method private greylist-max-o skipTrailingAsciiWhitespace(Ljava/lang/String;II)I
    .registers 7
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 1209
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_23

    .line 1210
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1f

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1f

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1f

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1f

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1f

    .line 1218
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1216
    :cond_1f
    nop

    .line 1209
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1221
    .end local v0    # "i":I
    :cond_23
    return p2
.end method

.method private static greylist-max-o slashCount(Ljava/lang/String;II)I
    .registers 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1256
    const/4 v0, 0x0

    .line 1257
    .local v0, "slashCount":I
    :goto_1
    if-ge p1, p2, :cond_15

    .line 1258
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1259
    .local v1, "c":C
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_15

    .line 1260
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 1261
    nop

    .end local v1    # "c":C
    add-int/lit8 p1, p1, 0x1

    .line 1265
    goto :goto_1

    .line 1266
    :cond_15
    return v0
.end method


# virtual methods
.method public greylist-max-o addEncodedPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .line 752
    if-eqz p1, :cond_f

    .line 755
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 756
    return-object p0

    .line 753
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 10
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .line 830
    if-eqz p1, :cond_32

    .line 831
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 832
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 833
    const-string v2, " \"<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    .line 835
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 836
    :cond_2d
    const/4 v1, 0x0

    .line 834
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    return-object p0

    .line 830
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addPathSegment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "pathSegment"    # Ljava/lang/String;

    .line 746
    if-eqz p1, :cond_f

    .line 747
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 748
    return-object p0

    .line 746
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 818
    if-eqz p1, :cond_32

    .line 819
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 820
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 821
    const-string v2, " \"<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2d

    .line 823
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"<>#&="

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 824
    :cond_2d
    const/4 v1, 0x0

    .line 822
    :goto_2e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    return-object p0

    .line 818
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist build()Lcom/android/okhttp/HttpUrl;
    .registers 3

    .line 924
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 925
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 926
    new-instance v0, Lcom/android/okhttp/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/HttpUrl;-><init>(Lcom/android/okhttp/HttpUrl$Builder;Lcom/android/okhttp/HttpUrl$1;)V

    return-object v0

    .line 925
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o effectivePort()I
    .registers 3

    .line 742
    iget v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method public greylist-max-o encodedFragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .line 890
    if-eqz p1, :cond_e

    .line 891
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 892
    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 893
    return-object p0
.end method

.method public greylist-max-o encodedPassword(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .line 717
    if-eqz p1, :cond_10

    .line 718
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 720
    return-object p0

    .line 717
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o encodedPath(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 792
    if-eqz p1, :cond_2a

    .line 793
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 796
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 797
    return-object p0

    .line 794
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .line 809
    if-eqz p1, :cond_12

    .line 810
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 811
    const-string v1, " \"<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 812
    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 813
    return-object p0
.end method

.method public greylist-max-o encodedUsername(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .line 704
    if-eqz p1, :cond_10

    .line 705
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 707
    return-object p0

    .line 704
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o fragment(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "fragment"    # Ljava/lang/String;

    .line 883
    if-eqz p1, :cond_e

    .line 884
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 885
    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 886
    return-object p0
.end method

.method public greylist-max-o host(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 6
    .param p1, "host"    # Ljava/lang/String;

    .line 728
    if-eqz p1, :cond_27

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "encoded":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 731
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 732
    return-object p0

    .line 730
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 728
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o parse(Lcom/android/okhttp/HttpUrl;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder$ParseResult;
    .registers 26
    .param p1, "base"    # Lcom/android/okhttp/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .line 982
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v9, v2, v1}, Lcom/android/okhttp/HttpUrl$Builder;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v7

    .line 983
    .local v7, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v9, v7, v1}, Lcom/android/okhttp/HttpUrl$Builder;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v10

    .line 986
    .local v10, "limit":I
    invoke-static {v9, v7, v10}, Lcom/android/okhttp/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v11

    .line 987
    .local v11, "schemeDelimiterOffset":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_53

    .line 988
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v4, "https:"

    move-object/from16 v1, p2

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 989
    const-string v1, "https"

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 990
    const-string v1, "https:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_5b

    .line 991
    :cond_36
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-string v4, "http:"

    move-object/from16 v1, p2

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 992
    const-string v1, "http"

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 993
    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v7, v1

    goto :goto_5b

    .line 995
    :cond_50
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 997
    :cond_53
    if-eqz p1, :cond_200

    .line 998
    # getter for: Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1004
    :goto_5b
    const/4 v1, 0x0

    .line 1005
    .local v1, "hasUsername":Z
    const/4 v2, 0x0

    .line 1006
    .local v2, "hasPassword":Z
    invoke-static {v9, v7, v10}, Lcom/android/okhttp/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v13

    .line 1007
    .local v13, "slashCount":I
    const/4 v3, 0x2

    const/16 v14, 0x3f

    const/16 v15, 0x23

    if-ge v13, v3, :cond_b2

    if-eqz p1, :cond_b2

    # getter for: Lcom/android/okhttp/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$100(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto :goto_b2

    .line 1070
    :cond_77
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1072
    # getter for: Lcom/android/okhttp/HttpUrl;->host:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$300(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1073
    # getter for: Lcom/android/okhttp/HttpUrl;->port:I
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->access$400(Lcom/android/okhttp/HttpUrl;)I

    move-result v3

    iput v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1074
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1075
    iget-object v3, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1076
    if-eq v7, v10, :cond_a5

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v15, :cond_ac

    .line 1077
    :cond_a5
    invoke-virtual/range {p1 .. p1}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/okhttp/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 1082
    :cond_ac
    move/from16 v16, v1

    move/from16 v17, v2

    goto/16 :goto_1b2

    .line 1017
    :cond_b2
    :goto_b2
    add-int/2addr v7, v13

    move/from16 v16, v1

    move/from16 v17, v2

    move v8, v7

    .line 1020
    .end local v1    # "hasUsername":Z
    .end local v2    # "hasPassword":Z
    .end local v7    # "pos":I
    .local v8, "pos":I
    .local v16, "hasUsername":Z
    .local v17, "hasPassword":Z
    :goto_b8
    const-string v1, "@/\\?#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v9, v8, v10, v1}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v7

    .line 1021
    .local v7, "componentDelimiterOffset":I
    if-eq v7, v10, :cond_c5

    .line 1022
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_c6

    .line 1023
    :cond_c5
    move v1, v12

    :goto_c6
    move v6, v1

    .line 1024
    .local v6, "c":I
    if-eq v6, v12, :cond_178

    if-eq v6, v15, :cond_178

    const/16 v1, 0x2f

    if-eq v6, v1, :cond_178

    const/16 v1, 0x5c

    if-eq v6, v1, :cond_178

    if-eq v6, v14, :cond_178

    const/16 v1, 0x40

    if-eq v6, v1, :cond_db

    goto/16 :goto_171

    .line 1027
    :cond_db
    const-string v5, "%40"

    if-nez v17, :cond_143

    .line 1028
    const-string v1, ":"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v9, v8, v7, v1}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    .line 1030
    .local v4, "passwordColonOffset":I
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v2, v8

    move v3, v4

    move v15, v4

    .end local v4    # "passwordColonOffset":I
    .local v15, "passwordColonOffset":I
    move-object/from16 v4, v22

    move-object v14, v5

    move/from16 v5, v18

    move/from16 v18, v6

    .end local v6    # "c":I
    .local v18, "c":I
    move/from16 v6, v19

    move v12, v7

    .end local v7    # "componentDelimiterOffset":I
    .local v12, "componentDelimiterOffset":I
    move/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "pos":I
    .local v20, "pos":I
    move/from16 v8, v21

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1032
    .local v8, "canonicalUsername":Ljava/lang/String;
    if-eqz v16, :cond_11f

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_120

    .line 1034
    :cond_11f
    move-object v1, v8

    :goto_120
    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1035
    if-eq v15, v12, :cond_13e

    .line 1036
    const/4 v14, 0x1

    .line 1037
    .end local v17    # "hasPassword":Z
    .local v14, "hasPassword":Z
    add-int/lit8 v2, v15, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v12

    move-object/from16 v21, v8

    .end local v8    # "canonicalUsername":Ljava/lang/String;
    .local v21, "canonicalUsername":Ljava/lang/String;
    move/from16 v8, v17

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    move/from16 v17, v14

    goto :goto_140

    .line 1035
    .end local v14    # "hasPassword":Z
    .end local v21    # "canonicalUsername":Ljava/lang/String;
    .restart local v8    # "canonicalUsername":Ljava/lang/String;
    .restart local v17    # "hasPassword":Z
    :cond_13e
    move-object/from16 v21, v8

    .line 1040
    .end local v8    # "canonicalUsername":Ljava/lang/String;
    .restart local v21    # "canonicalUsername":Ljava/lang/String;
    :goto_140
    const/16 v16, 0x1

    .line 1041
    .end local v15    # "passwordColonOffset":I
    .end local v21    # "canonicalUsername":Ljava/lang/String;
    goto :goto_16e

    .line 1042
    .end local v12    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    .end local v20    # "pos":I
    .restart local v6    # "c":I
    .restart local v7    # "componentDelimiterOffset":I
    .local v8, "pos":I
    :cond_143
    move-object v14, v5

    move/from16 v18, v6

    move v12, v7

    move/from16 v20, v8

    .end local v6    # "c":I
    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .restart local v12    # "componentDelimiterOffset":I
    .restart local v18    # "c":I
    .restart local v20    # "pos":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move/from16 v2, v20

    move v3, v12

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1045
    :goto_16e
    add-int/lit8 v7, v12, 0x1

    .line 1046
    .end local v20    # "pos":I
    .local v7, "pos":I
    move v8, v7

    .line 1067
    .end local v7    # "pos":I
    .end local v12    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    .restart local v8    # "pos":I
    :goto_171
    const/4 v12, -0x1

    const/16 v14, 0x3f

    const/16 v15, 0x23

    goto/16 :goto_b8

    .line 1024
    .restart local v6    # "c":I
    .local v7, "componentDelimiterOffset":I
    :cond_178
    move/from16 v18, v6

    move v12, v7

    move/from16 v20, v8

    .line 1054
    .end local v6    # "c":I
    .end local v7    # "componentDelimiterOffset":I
    .end local v8    # "pos":I
    .restart local v12    # "componentDelimiterOffset":I
    .restart local v18    # "c":I
    .restart local v20    # "pos":I
    move/from16 v7, v20

    .end local v20    # "pos":I
    .local v7, "pos":I
    invoke-static {v9, v7, v12}, Lcom/android/okhttp/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v1

    .line 1055
    .local v1, "portColonOffset":I
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v12, :cond_19b

    .line 1056
    invoke-static {v9, v7, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1057
    add-int/lit8 v2, v1, 0x1

    invoke-static {v9, v2, v12}, Lcom/android/okhttp/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1058
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a9

    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1060
    :cond_19b
    invoke-static {v9, v7, v1}, Lcom/android/okhttp/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1061
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 1063
    :cond_1a9
    iget-object v2, v0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v2, :cond_1b0

    sget-object v2, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v2

    .line 1064
    :cond_1b0
    move v7, v12

    .line 1065
    nop

    .line 1082
    .end local v1    # "portColonOffset":I
    .end local v12    # "componentDelimiterOffset":I
    .end local v18    # "c":I
    :goto_1b2
    const-string v1, "?#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v9, v7, v10, v1}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v12

    .line 1083
    .local v12, "pathDelimiterOffset":I
    invoke-direct {v0, v9, v7, v12}, Lcom/android/okhttp/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1084
    move v14, v12

    .line 1087
    .end local v7    # "pos":I
    .local v14, "pos":I
    if-ge v14, v10, :cond_1e2

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1e2

    .line 1088
    const-string v1, "#"

    # invokes: Lcom/android/okhttp/HttpUrl;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I
    invoke-static {v9, v14, v10, v1}, Lcom/android/okhttp/HttpUrl;->access$200(Ljava/lang/String;IILjava/lang/String;)I

    move-result v15

    .line 1089
    .local v15, "queryDelimiterOffset":I
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, " \"<>#"

    move-object/from16 v1, p2

    move v3, v15

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1091
    move v14, v15

    .line 1095
    .end local v15    # "queryDelimiterOffset":I
    :cond_1e2
    if-ge v14, v10, :cond_1fd

    invoke-virtual {v9, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1fd

    .line 1096
    add-int/lit8 v2, v14, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v10

    invoke-static/range {v1 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1100
    :cond_1fd
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1000
    .end local v12    # "pathDelimiterOffset":I
    .end local v13    # "slashCount":I
    .end local v14    # "pos":I
    .end local v16    # "hasUsername":Z
    .end local v17    # "hasPassword":Z
    .restart local v7    # "pos":I
    :cond_200
    sget-object v1, Lcom/android/okhttp/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/android/okhttp/HttpUrl$Builder$ParseResult;

    return-object v1
.end method

.method public greylist-max-o password(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "password"    # Ljava/lang/String;

    .line 711
    if-eqz p1, :cond_10

    .line 712
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 713
    return-object p0

    .line 711
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o port(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "port"    # I

    .line 736
    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    .line 737
    iput p1, p0, Lcom/android/okhttp/HttpUrl$Builder;->port:I

    .line 738
    return-object p0

    .line 736
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o query(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "query"    # Ljava/lang/String;

    .line 801
    if-eqz p1, :cond_12

    .line 802
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    .line 804
    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 805
    return-object p0
.end method

.method greylist-max-o reencodeForUri()Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11

    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_7
    if-ge v0, v1, :cond_24

    .line 902
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 903
    .local v2, "pathSegment":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 904
    const-string v4, "[]"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 903
    invoke-interface {v9, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 901
    .end local v2    # "pathSegment":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 906
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_24
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 907
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    :goto_2d
    if-ge v1, v0, :cond_4c

    .line 908
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 910
    iget-object v9, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 911
    const-string v4, "\\^`{|}"

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-interface {v9, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 907
    .end local v2    # "component":Ljava/lang/String;
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 915
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_4c
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5c

    .line 916
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 919
    :cond_5c
    return-object p0
.end method

.method public greylist-max-o removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 9
    .param p1, "encodedName"    # Ljava/lang/String;

    .line 862
    if-eqz p1, :cond_16

    .line 863
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 864
    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 865
    const-string v2, " \"<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 866
    return-object p0

    .line 862
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 853
    if-eqz p1, :cond_16

    .line 854
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_7

    return-object p0

    .line 855
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 858
    return-object p0

    .line 853
    .end local v0    # "nameToRemove":Ljava/lang/String;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o removePathSegment(I)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 4
    .param p1, "index"    # I

    .line 784
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 786
    iget-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_14
    return-object p0
.end method

.method public greylist-max-o scheme(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 5
    .param p1, "scheme"    # Ljava/lang/String;

    .line 685
    if-eqz p1, :cond_2f

    .line 687
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 688
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_17

    .line 689
    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 690
    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 694
    :goto_17
    return-object p0

    .line 692
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setEncodedPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .line 771
    if-eqz p2, :cond_3b

    .line 774
    const/4 v1, 0x0

    .line 775
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 774
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 780
    return-object p0

    .line 778
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 848
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 849
    return-object p0
.end method

.method public greylist-max-o setPathSegment(ILjava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 11
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .line 760
    if-eqz p2, :cond_3b

    .line 761
    const/4 v1, 0x0

    .line 762
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 761
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-direct {p0, v0}, Lcom/android/okhttp/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 766
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 767
    return-object p0

    .line 764
    :cond_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected path segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    .end local v0    # "canonicalPathSegment":Ljava/lang/String;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/okhttp/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;

    .line 843
    return-object p0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 935
    :cond_21
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 937
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 943
    :cond_3b
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    .line 945
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 946
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    .line 949
    :cond_54
    iget-object v1, p0, Lcom/android/okhttp/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    :goto_59
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 953
    .local v1, "effectivePort":I
    iget-object v3, p0, Lcom/android/okhttp/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/okhttp/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    :cond_6b
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/android/okhttp/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 960
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_7e

    .line 961
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 962
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/android/okhttp/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 965
    :cond_7e
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_8c

    .line 966
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 967
    iget-object v2, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o username(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl$Builder;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;

    .line 698
    if-eqz p1, :cond_10

    .line 699
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/okhttp/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 700
    return-object p0

    .line 698
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
