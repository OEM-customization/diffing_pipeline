.class public Ljava/text/MessageFormat;
.super Ljava/text/Format;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field private static final greylist-max-o DATE_TIME_MODIFIERS:[I

.field private static final greylist-max-o DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o INITIAL_FORMATS:I = 0xa

.field private static final greylist-max-o MODIFIER_CURRENCY:I = 0x1

.field private static final greylist-max-o MODIFIER_DEFAULT:I = 0x0

.field private static final greylist-max-o MODIFIER_FULL:I = 0x4

.field private static final greylist-max-o MODIFIER_INTEGER:I = 0x3

.field private static final greylist-max-o MODIFIER_LONG:I = 0x3

.field private static final greylist-max-o MODIFIER_MEDIUM:I = 0x2

.field private static final greylist-max-o MODIFIER_PERCENT:I = 0x2

.field private static final greylist-max-o MODIFIER_SHORT:I = 0x1

.field private static final greylist-max-o NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o SEG_INDEX:I = 0x1

.field private static final greylist-max-o SEG_MODIFIER:I = 0x3

.field private static final greylist-max-o SEG_RAW:I = 0x0

.field private static final greylist-max-o SEG_TYPE:I = 0x2

.field private static final greylist-max-o TYPE_CHOICE:I = 0x4

.field private static final greylist-max-o TYPE_DATE:I = 0x2

.field private static final greylist-max-o TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final greylist-max-o TYPE_NULL:I = 0x0

.field private static final greylist-max-o TYPE_NUMBER:I = 0x1

.field private static final greylist-max-o TYPE_TIME:I = 0x3

.field private static final whitelist serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private greylist-max-o argumentNumbers:[I

.field private greylist-max-o formats:[Ljava/text/Format;

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o maxOffset:I

.field private greylist-max-o offsets:[I

.field private greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 1378
    const-string v0, ""

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "time"

    const-string v4, "choice"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 1392
    const-string v1, "currency"

    const-string v2, "percent"

    const-string v3, "integer"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1405
    const-string v1, "short"

    const-string v2, "medium"

    const-string v3, "long"

    const-string v4, "full"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1414
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    return-void

    nop

    :array_34
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x0
    .end array-data
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .line 361
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1195
    const-string v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1204
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/text/Format;

    iput-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1211
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1219
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1228
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 362
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 363
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 379
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1195
    const-string v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1204
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/text/Format;

    iput-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1211
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1219
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1228
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 380
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 381
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private greylist-max-o append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .line 1355
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    .line 1358
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1359
    :goto_10
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    move v2, v0

    .local v2, "aChar":C
    if-eq v0, v1, :cond_1b

    .line 1360
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1363
    .end local v2    # "aChar":C
    :cond_1b
    return-void
.end method

.method private static final greylist-max-o copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # Ljava/lang/StringBuilder;

    .line 1559
    const/4 v0, 0x0

    .line 1561
    .local v0, "quoted":Z
    move v1, p1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x27

    if-ge v1, p2, :cond_2c

    .line 1562
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1563
    .local v3, "ch":C
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_18

    .line 1564
    if-nez v0, :cond_14

    .line 1565
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1566
    const/4 v0, 0x1

    .line 1568
    :cond_14
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1569
    :cond_18
    if-ne v3, v2, :cond_20

    .line 1570
    const-string v2, "\'\'"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1572
    :cond_20
    if-eqz v0, :cond_26

    .line 1573
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1574
    const/4 v0, 0x0

    .line 1576
    :cond_26
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1561
    .end local v3    # "ch":C
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1579
    .end local v1    # "i":I
    :cond_2c
    if-eqz v0, :cond_31

    .line 1580
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1582
    :cond_31
    return-void
.end method

.method private static final greylist-max-o findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .line 1541
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 1542
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1543
    return v0

    .line 1541
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1547
    .end local v0    # "i":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "ls":Ljava/lang/String;
    if-eq v0, p0, :cond_2c

    .line 1549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    array-length v2, p1

    if-ge v1, v2, :cond_2c

    .line 1550
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1551
    return v1

    .line 1549
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1554
    .end local v1    # "i":I
    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method public static varargs whitelist test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 847
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 848
    .local v0, "temp":Ljava/text/MessageFormat;
    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o makeFormat(II[Ljava/lang/StringBuilder;)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "offsetNumber"    # I
    .param p3, "textSegments"    # [Ljava/lang/StringBuilder;

    .line 1425
    array-length v0, p3

    new-array v0, v0, [Ljava/lang/String;

    .line 1426
    .local v0, "segments":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p3

    if-ge v1, v2, :cond_17

    .line 1427
    aget-object v2, p3, v1

    .line 1428
    .local v2, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12

    :cond_10
    const-string v3, ""

    :goto_12
    aput-object v3, v0, v1

    .line 1426
    .end local v2    # "oneseg":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1434
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x1

    :try_start_18
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1e} :catch_13f

    .line 1438
    .local v2, "argumentNumber":I
    nop

    .line 1439
    if-ltz v2, :cond_128

    .line 1445
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lt p2, v4, :cond_4c

    .line 1446
    array-length v4, v3

    mul-int/2addr v4, v5

    .line 1447
    .local v4, "newLength":I
    new-array v7, v4, [Ljava/text/Format;

    .line 1448
    .local v7, "newFormats":[Ljava/text/Format;
    new-array v8, v4, [I

    .line 1449
    .local v8, "newOffsets":[I
    new-array v9, v4, [I

    .line 1450
    .local v9, "newArgumentNumbers":[I
    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v3, v6, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1451
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v3, v6, v8, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1452
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget v10, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/2addr v10, v1

    invoke-static {v3, v6, v9, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1453
    iput-object v7, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1454
    iput-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1455
    iput-object v9, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1457
    .end local v4    # "newLength":I
    .end local v7    # "newFormats":[Ljava/text/Format;
    .end local v8    # "newOffsets":[I
    .end local v9    # "newArgumentNumbers":[I
    :cond_4c
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1458
    .local v1, "oldMaxOffset":I
    iput p2, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1459
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, v3, p2

    .line 1460
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aput v2, v3, p2

    .line 1463
    const/4 v3, 0x0

    .line 1464
    .local v3, "newFormat":Ljava/text/Format;
    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_123

    .line 1465
    aget-object v4, v0, v5

    sget-object v6, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1466
    .local v4, "type":I
    const/4 v6, 0x3

    packed-switch v4, :pswitch_data_15a

    .line 1532
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1533
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown format type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1523
    :pswitch_8e
    :try_start_8e
    new-instance v5, Ljava/text/ChoiceFormat;

    aget-object v7, v0, v6

    invoke-direct {v5, v7}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_95} :catch_98

    move-object v3, v5

    .line 1528
    goto/16 :goto_123

    .line 1524
    :catch_98
    move-exception v5

    .line 1525
    .local v5, "e":Ljava/lang/Exception;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1526
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choice Pattern incorrect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1500
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_b4
    aget-object v7, v0, v6

    sget-object v8, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1501
    .local v7, "mod":I
    if-ltz v7, :cond_d9

    array-length v8, v8

    if-ge v7, v8, :cond_d9

    .line 1502
    if-ne v4, v5, :cond_ce

    .line 1503
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v5, v5, v7

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_123

    .line 1506
    :cond_ce
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v5, v5, v7

    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_123

    .line 1512
    :cond_d9
    :try_start_d9
    new-instance v5, Ljava/text/SimpleDateFormat;

    aget-object v6, v0, v6

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v5, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_e2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d9 .. :try_end_e2} :catch_e4

    move-object v3, v5

    .line 1516
    goto :goto_123

    .line 1513
    :catch_e4
    move-exception v5

    .line 1514
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1515
    throw v5

    .line 1473
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "mod":I
    :pswitch_e8
    aget-object v5, v0, v6

    sget-object v7, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_168

    .line 1488
    :try_start_f3
    new-instance v5, Ljava/text/DecimalFormat;
    :try_end_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f3 .. :try_end_f5} :catch_11f

    goto :goto_112

    .line 1484
    :pswitch_f6
    iget-object v5, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1485
    goto :goto_123

    .line 1481
    :pswitch_fd
    iget-object v5, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1482
    goto :goto_123

    .line 1478
    :pswitch_104
    iget-object v5, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1479
    goto :goto_123

    .line 1475
    :pswitch_10b
    iget-object v5, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    .line 1476
    goto :goto_123

    .line 1488
    :goto_112
    :try_start_112
    aget-object v6, v0, v6

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1489
    invoke-static {v7}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_11d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_11d} :catch_11f

    move-object v3, v5

    .line 1493
    goto :goto_123

    .line 1490
    :catch_11f
    move-exception v5

    .line 1491
    .restart local v5    # "e":Ljava/lang/IllegalArgumentException;
    iput v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1492
    throw v5

    .line 1537
    .end local v4    # "type":I
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_123
    :goto_123
    :pswitch_123
    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object v3, v4, p2

    .line 1538
    return-void

    .line 1440
    .end local v1    # "oldMaxOffset":I
    .end local v3    # "newFormat":Ljava/text/Format;
    :cond_128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "negative argument number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1435
    .end local v2    # "argumentNumber":I
    :catch_13f
    move-exception v2

    .line 1436
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t parse argument number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_123
        :pswitch_e8
        :pswitch_b4
        :pswitch_b4
        :pswitch_8e
    .end packed-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_10b
        :pswitch_104
        :pswitch_fd
        :pswitch_f6
    .end packed-switch
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1590
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1591
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-lt v0, v2, :cond_1a

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-le v2, v0, :cond_1a

    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    array-length v2, v2

    if-le v2, v0, :cond_1a

    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    array-length v2, v2

    if-le v2, v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1595
    .local v0, "isValid":Z
    :goto_1b
    if-eqz v0, :cond_39

    .line 1596
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 1597
    .local v2, "lastOffset":I
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    .local v1, "i":I
    :goto_26
    if-ltz v1, :cond_39

    .line 1598
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v3, v1

    if-ltz v4, :cond_38

    aget v4, v3, v1

    if-le v4, v2, :cond_33

    goto :goto_38

    .line 1602
    :cond_33
    aget v2, v3, v1

    .line 1597
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 1599
    :cond_38
    :goto_38
    const/4 v0, 0x0

    .line 1606
    .end local v1    # "i":I
    .end local v2    # "lastOffset":I
    :cond_39
    if-eqz v0, :cond_3c

    .line 1609
    return-void

    .line 1607
    :cond_3c
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 15
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/AttributedCharacterIterator;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1246
    .local p4, "characterIterators":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedCharacterIterator;>;"
    const/4 v0, 0x0

    .line 1247
    .local v0, "lastOffset":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1248
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_10e

    .line 1249
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1250
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v0, v3, v2

    .line 1251
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    .line 1252
    .local v3, "argumentNumber":I
    const/16 v4, 0x7b

    if-eqz p1, :cond_fe

    array-length v5, p1

    if-lt v3, v5, :cond_28

    goto/16 :goto_fe

    .line 1261
    :cond_28
    aget-object v5, p1, v3

    .line 1262
    .local v5, "obj":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1263
    .local v6, "arg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1264
    .local v7, "subFormatter":Ljava/text/Format;
    if-nez v5, :cond_31

    .line 1265
    const-string v6, "null"

    goto :goto_7b

    .line 1266
    :cond_31
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v9, v8, v2

    if-eqz v9, :cond_54

    .line 1267
    aget-object v7, v8, v2

    .line 1268
    instance-of v9, v7, Ljava/text/ChoiceFormat;

    if-eqz v9, :cond_7b

    .line 1269
    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1270
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_7b

    .line 1271
    new-instance v4, Ljava/text/MessageFormat;

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v4, v6, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v7, v4

    .line 1272
    move-object v5, p1

    .line 1273
    const/4 v6, 0x0

    goto :goto_7b

    .line 1276
    :cond_54
    instance-of v4, v5, Ljava/lang/Number;

    if-eqz v4, :cond_5f

    .line 1278
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    goto :goto_7b

    .line 1279
    :cond_5f
    instance-of v4, v5, Ljava/util/Date;

    if-eqz v4, :cond_6b

    .line 1281
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v8, 0x3

    invoke-static {v8, v8, v4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v7

    goto :goto_7b

    .line 1283
    :cond_6b
    instance-of v4, v5, Ljava/lang/String;

    if-eqz v4, :cond_73

    .line 1284
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    goto :goto_7b

    .line 1287
    :cond_73
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1288
    if-nez v6, :cond_7b

    const-string v6, "null"

    .line 1295
    :cond_7b
    :goto_7b
    if-eqz p4, :cond_d2

    .line 1298
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eq v1, v4, :cond_93

    .line 1299
    nop

    .line 1301
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1300
    invoke-virtual {p0, v4}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1299
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1304
    :cond_93
    if-eqz v7, :cond_b5

    .line 1305
    nop

    .line 1306
    invoke-virtual {v7, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1308
    .local v4, "subIterator":Ljava/text/AttributedCharacterIterator;
    invoke-direct {p0, p2, v4}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 1309
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v1, v8, :cond_b4

    .line 1310
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1311
    invoke-virtual {p0, v4, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1310
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1316
    :cond_b4
    const/4 v6, 0x0

    .line 1318
    .end local v4    # "subIterator":Ljava/text/AttributedCharacterIterator;
    :cond_b5
    if-eqz v6, :cond_10a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_10a

    .line 1319
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1320
    sget-object v4, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1321
    invoke-virtual {p0, v6, v4, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v4

    .line 1320
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_10a

    .line 1328
    :cond_d2
    if-eqz v7, :cond_d8

    .line 1329
    invoke-virtual {v7, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1331
    :cond_d8
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 1332
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1333
    if-nez v2, :cond_f9

    if-eqz p3, :cond_f9

    sget-object v4, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1334
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    .line 1333
    invoke-virtual {v4, v8}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 1335
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1336
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1338
    :cond_f9
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    goto :goto_10a

    .line 1253
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "subFormatter":Ljava/text/Format;
    :cond_fe
    :goto_fe
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x7d

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1254
    nop

    .line 1248
    .end local v3    # "argumentNumber":I
    :cond_10a
    :goto_10a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 1342
    .end local v2    # "i":I
    :cond_10e
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1343
    if-eqz p4, :cond_12f

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eq v1, v2, :cond_12f

    .line 1344
    nop

    .line 1345
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1344
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_12f
    return-object p2
.end method


# virtual methods
.method public whitelist test-api applyPattern(Ljava/lang/String;)V
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;

    .line 427
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/StringBuilder;

    .line 430
    .local v0, "segments":[Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, "part":I
    const/4 v3, 0x0

    .line 434
    .local v3, "formatNumber":I
    const/4 v4, 0x0

    .line 435
    .local v4, "inQuote":Z
    const/4 v5, 0x0

    .line 436
    .local v5, "braceStack":I
    const/4 v6, -0x1

    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 437
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_c0

    .line 438
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 439
    .local v8, "ch":C
    const/16 v9, 0x27

    const/4 v10, 0x1

    if-nez v1, :cond_5f

    .line 440
    if-ne v8, v9, :cond_45

    .line 441
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_3d

    add-int/lit8 v11, v7, 0x1

    .line 442
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_3d

    .line 443
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_bd

    .line 446
    :cond_3d
    if-nez v4, :cond_41

    move v9, v10

    goto :goto_42

    :cond_41
    move v9, v2

    :goto_42
    move v4, v9

    goto/16 :goto_bd

    .line 448
    :cond_45
    const/16 v9, 0x7b

    if-ne v8, v9, :cond_59

    if-nez v4, :cond_59

    .line 449
    const/4 v1, 0x1

    .line 450
    aget-object v9, v0, v10

    if-nez v9, :cond_bd

    .line 451
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v0, v10

    goto/16 :goto_bd

    .line 454
    :cond_59
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 457
    :cond_5f
    if-eqz v4, :cond_6a

    .line 458
    aget-object v11, v0, v1

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    if-ne v8, v9, :cond_bd

    .line 460
    const/4 v4, 0x0

    goto :goto_bd

    .line 463
    :cond_6a
    const/4 v9, 0x3

    const/4 v11, 0x2

    sparse-switch v8, :sswitch_data_d8

    goto :goto_b8

    .line 478
    :sswitch_70
    if-nez v5, :cond_80

    .line 479
    const/4 v1, 0x0

    .line 480
    invoke-direct {p0, v7, v3, v0}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 483
    const/4 v12, 0x0

    aput-object v12, v0, v10

    .line 484
    aput-object v12, v0, v11

    .line 485
    aput-object v12, v0, v9

    goto :goto_bd

    .line 487
    :cond_80
    add-int/lit8 v5, v5, -0x1

    .line 488
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    goto :goto_bd

    .line 474
    :sswitch_88
    add-int/lit8 v5, v5, 0x1

    .line 475
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    goto :goto_bd

    .line 465
    :sswitch_90
    if-ge v1, v9, :cond_a0

    .line 466
    add-int/lit8 v1, v1, 0x1

    aget-object v9, v0, v1

    if-nez v9, :cond_bd

    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v0, v1

    goto :goto_bd

    .line 470
    :cond_a0
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    goto :goto_bd

    .line 498
    :sswitch_a6
    const/4 v4, 0x1

    goto :goto_b8

    .line 493
    :sswitch_a8
    if-ne v1, v11, :cond_b2

    aget-object v9, v0, v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_bd

    .line 494
    :cond_b2
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 501
    :goto_b8
    aget-object v9, v0, v1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    .end local v8    # "ch":C
    :cond_bd
    :goto_bd
    add-int/2addr v7, v10

    goto/16 :goto_13

    .line 507
    .end local v7    # "i":I
    :cond_c0
    if-nez v5, :cond_cf

    if-nez v1, :cond_c5

    goto :goto_cf

    .line 508
    :cond_c5
    iput v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 509
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unmatched braces in the pattern."

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_cf
    :goto_cf
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 512
    return-void

    :sswitch_data_d8
    .sparse-switch
        0x20 -> :sswitch_a8
        0x27 -> :sswitch_a6
        0x2c -> :sswitch_90
        0x7b -> :sswitch_88
        0x7d -> :sswitch_70
    .end sparse-switch
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 1090
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/MessageFormat;

    .line 1093
    .local v0, "other":Ljava/text/MessageFormat;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v1}, [Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/text/Format;

    iput-object v1, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1094
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v2

    if-ge v1, v3, :cond_29

    .line 1095
    aget-object v3, v2, v1

    if-eqz v3, :cond_26

    .line 1096
    iget-object v3, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v3, v1

    .line 1094
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1099
    .end local v1    # "i":I
    :cond_29
    iget-object v1, p0, Ljava/text/MessageFormat;->offsets:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/text/MessageFormat;->offsets:[I

    .line 1100
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1102
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1110
    return v0

    .line 1111
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5a

    .line 1113
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/text/MessageFormat;

    .line 1114
    .local v2, "other":Ljava/text/MessageFormat;
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v4, v2, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, v2, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1115
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_31

    iget-object v4, v2, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 1116
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_31
    iget-object v3, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v3, :cond_58

    iget-object v3, v2, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v3, :cond_58

    :cond_39
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    iget-object v4, v2, Ljava/text/MessageFormat;->offsets:[I

    .line 1118
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget-object v4, v2, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1119
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v4, v2, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1120
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    move v0, v1

    .line 1114
    :goto_59
    return v0

    .line 1112
    .end local v2    # "other":Ljava/text/MessageFormat;
    :cond_5a
    :goto_5a
    return v1
.end method

.method public final whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 872
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 911
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 912
    .local v0, "result":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v1, "iterators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedCharacterIterator;>;"
    if-eqz p1, :cond_32

    .line 918
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 919
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_20

    .line 920
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 922
    :cond_20
    nop

    .line 924
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    .line 923
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    .line 922
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 915
    :cond_32
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getFormats()[Ljava/text/Format;
    .registers 5

    .line 753
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/text/Format;

    .line 754
    .local v1, "resultArray":[Ljava/text/Format;
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    return-object v1
.end method

.method public whitelist test-api getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 6

    .line 723
    const/4 v0, -0x1

    .line 724
    .local v0, "maximumArgumentNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v2, :cond_11

    .line 725
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v2, v1

    if-le v3, v0, :cond_e

    .line 726
    aget v0, v2, v1

    .line 724
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 729
    .end local v1    # "i":I
    :cond_11
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/text/Format;

    .line 730
    .local v1, "resultArray":[Ljava/text/Format;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_27

    .line 731
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 733
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 411
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1127
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1048
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1049
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 1050
    .local v1, "result":[Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 1053
    return-object v1

    .line 1051
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    iget v3, v0, Ljava/text/ParsePosition;->errorIndex:I

    const-string v4, "MessageFormat parse error!"

    invoke-direct {v2, v4, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 15
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 959
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 960
    new-array v0, v0, [Ljava/lang/Object;

    .line 961
    .local v0, "empty":[Ljava/lang/Object;
    return-object v0

    .line 964
    .end local v0    # "empty":[Ljava/lang/Object;
    :cond_6
    const/4 v1, -0x1

    .line 965
    .local v1, "maximumArgumentNumber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_17

    .line 966
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v4, v3, v2

    if-le v4, v1, :cond_14

    .line 967
    aget v1, v3, v2

    .line 965
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 970
    .end local v2    # "i":I
    :cond_17
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 972
    .local v2, "resultArray":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 973
    .local v3, "patternOffset":I
    iget v4, p2, Ljava/text/ParsePosition;->index:I

    .line 974
    .local v4, "sourceOffset":I
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v0, v5

    .line 975
    .local v0, "tempStatus":Ljava/text/ParsePosition;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v7, 0x0

    if-gt v5, v6, :cond_b9

    .line 977
    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v6, v6, v5

    sub-int/2addr v6, v3

    .line 978
    .local v6, "len":I
    if-eqz v6, :cond_3d

    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v3, p1, v4, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_3a

    goto :goto_3d

    .line 983
    :cond_3a
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 984
    return-object v7

    .line 980
    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    .line 981
    add-int/2addr v3, v6

    .line 988
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v5

    if-nez v8, :cond_9c

    .line 992
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v5, v8, :cond_50

    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    add-int/lit8 v9, v5, 0x1

    aget v8, v8, v9

    goto :goto_56

    :cond_50
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 995
    .local v8, "tempLength":I
    :goto_56
    if-lt v3, v8, :cond_5d

    .line 996
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, "next":I
    goto :goto_67

    .line 998
    .end local v9    # "next":I
    :cond_5d
    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 1002
    .restart local v9    # "next":I
    :goto_67
    if-gez v9, :cond_6c

    .line 1003
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1004
    return-object v7

    .line 1006
    :cond_6c
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, "strValue":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    .line 1008
    iget-object v10, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v10, v10, v5

    .line 1009
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 1010
    :cond_9a
    move v4, v9

    .line 1012
    .end local v7    # "strValue":Ljava/lang/String;
    .end local v8    # "tempLength":I
    .end local v9    # "next":I
    goto :goto_b5

    .line 1013
    :cond_9c
    iput v4, v0, Ljava/text/ParsePosition;->index:I

    .line 1014
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v8, v8, v5

    iget-object v9, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v9, v9, v5

    .line 1015
    invoke-virtual {v9, p1, v0}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v2, v8

    .line 1016
    iget v8, v0, Ljava/text/ParsePosition;->index:I

    if-ne v8, v4, :cond_b3

    .line 1017
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1018
    return-object v7

    .line 1020
    :cond_b3
    iget v4, v0, Ljava/text/ParsePosition;->index:I

    .line 975
    .end local v6    # "len":I
    :goto_b5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_25

    .line 1023
    .end local v5    # "i":I
    :cond_b9
    iget-object v5, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    .line 1024
    .local v5, "len":I
    if-eqz v5, :cond_ce

    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v3, p1, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_cb

    goto :goto_ce

    .line 1028
    :cond_cb
    iput v4, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1029
    return-object v7

    .line 1026
    :cond_ce
    :goto_ce
    add-int v6, v4, v5

    iput v6, p2, Ljava/text/ParsePosition;->index:I

    .line 1031
    return-object v2
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 1081
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setFormat(ILjava/text/Format;)V
    .registers 6
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 694
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt p1, v0, :cond_9

    .line 699
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 700
    return-void

    .line 696
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; formatElementIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 5
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 668
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_12

    .line 669
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_f

    .line 670
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v1, v0

    .line 668
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 673
    .end local v0    # "j":I
    :cond_12
    return-void
.end method

.method public whitelist test-api setFormats([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 640
    array-length v0, p1

    .line 641
    .local v0, "runsToCopy":I
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_9

    .line 642
    add-int/lit8 v0, v1, 0x1

    .line 644
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_15

    .line 645
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 647
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist test-api setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v1, :cond_15

    .line 610
    iget-object v1, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v1, v0

    .line 611
    .local v1, "j":I
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 612
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 609
    .end local v1    # "j":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 615
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 402
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 403
    return-void
.end method

.method public whitelist test-api toPattern()Ljava/lang/String;
    .registers 10

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "lastOffset":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v3, :cond_108

    .line 527
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v4, v2

    invoke-static {v3, v0, v4, v1}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 528
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v0, v3, v2

    .line 529
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, v3, v2

    .line 531
    .local v3, "fmt":Ljava/text/Format;
    if-nez v3, :cond_2c

    goto/16 :goto_ff

    .line 533
    :cond_2c
    instance-of v4, v3, Ljava/text/NumberFormat;

    if-eqz v4, :cond_a5

    .line 534
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 535
    const-string v4, ",number"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 536
    :cond_43
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 537
    const-string v4, ",number,currency"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 538
    :cond_56
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 539
    const-string v4, ",number,percent"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 540
    :cond_69
    iget-object v4, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 541
    const-string v4, ",number,integer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 543
    :cond_7c
    instance-of v4, v3, Ljava/text/DecimalFormat;

    if-eqz v4, :cond_91

    .line 544
    const-string v4, ",number,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Ljava/text/DecimalFormat;

    invoke-virtual {v4}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_ff

    .line 545
    :cond_91
    instance-of v4, v3, Ljava/text/ChoiceFormat;

    if-eqz v4, :cond_ff

    .line 546
    const-string v4, ",choice,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v3

    check-cast v4, Ljava/text/ChoiceFormat;

    invoke-virtual {v4}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 551
    :cond_a5
    instance-of v4, v3, Ljava/text/DateFormat;

    if-eqz v4, :cond_ff

    .line 553
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_aa
    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v5

    if-ge v4, v6, :cond_da

    .line 554
    aget v6, v5, v4

    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v6

    .line 556
    .local v6, "df":Ljava/text/DateFormat;
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 557
    const-string v7, ",date"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    goto :goto_da

    .line 560
    :cond_c3
    aget v7, v5, v4

    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v7, v8}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v6

    .line 562
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 563
    const-string v7, ",time"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    goto :goto_da

    .line 553
    .end local v6    # "df":Ljava/text/DateFormat;
    :cond_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    .line 567
    :cond_da
    :goto_da
    array-length v5, v5

    if-lt v4, v5, :cond_f1

    .line 568
    instance-of v5, v3, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_ff

    .line 569
    const-string v5, ",date,"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v3

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ff

    .line 573
    :cond_f1
    if-eqz v4, :cond_ff

    .line 574
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .end local v4    # "index":I
    :cond_ff
    :goto_ff
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    .end local v3    # "fmt":Ljava/text/Format;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 581
    .end local v2    # "i":I
    :cond_108
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v0, v3, v1}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
