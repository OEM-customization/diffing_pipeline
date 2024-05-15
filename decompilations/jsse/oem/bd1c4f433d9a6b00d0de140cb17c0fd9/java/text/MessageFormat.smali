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
.field private static final DATE_TIME_MODIFIERS:[I

.field private static final DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final INITIAL_FORMATS:I = 0xa

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_DEFAULT:I = 0x0

.field private static final MODIFIER_FULL:I = 0x4

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_LONG:I = 0x3

.field private static final MODIFIER_MEDIUM:I = 0x2

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final MODIFIER_SHORT:I = 0x1

.field private static final NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

.field private static final SEG_INDEX:I = 0x1

.field private static final SEG_MODIFIER:I = 0x3

.field private static final SEG_RAW:I = 0x0

.field private static final SEG_TYPE:I = 0x2

.field private static final TYPE_CHOICE:I = 0x4

.field private static final TYPE_DATE:I = 0x2

.field private static final TYPE_KEYWORDS:[Ljava/lang/String;

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_NUMBER:I = 0x1

.field private static final TYPE_TIME:I = 0x3

.field private static final serialVersionUID:J = 0x59ea973e12bd01a8L


# instance fields
.field private argumentNumbers:[I

.field private formats:[Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private maxOffset:I

.field private offsets:[I

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1375
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1376
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1377
    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    .line 1378
    const-string/jumbo v1, "date"

    aput-object v1, v0, v2

    .line 1379
    const-string/jumbo v1, "time"

    aput-object v1, v0, v5

    .line 1380
    const-string/jumbo v1, "choice"

    aput-object v1, v0, v6

    .line 1375
    sput-object v0, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    .line 1389
    new-array v0, v6, [Ljava/lang/String;

    .line 1390
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1391
    const-string/jumbo v1, "currency"

    aput-object v1, v0, v4

    .line 1392
    const-string/jumbo v1, "percent"

    aput-object v1, v0, v2

    .line 1393
    const-string/jumbo v1, "integer"

    aput-object v1, v0, v5

    .line 1389
    sput-object v0, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1402
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1403
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 1404
    const-string/jumbo v1, "short"

    aput-object v1, v0, v4

    .line 1405
    const-string/jumbo v1, "medium"

    aput-object v1, v0, v2

    .line 1406
    const-string/jumbo v1, "long"

    aput-object v1, v0, v5

    .line 1407
    const-string/jumbo v1, "full"

    aput-object v1, v0, v6

    .line 1402
    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    .line 1411
    filled-new-array {v2, v5, v2, v4, v3}, [I

    move-result-object v0

    sput-object v0, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    .line 345
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xa

    .line 361
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1192
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1201
    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1208
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1216
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1225
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

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v1, 0xa

    .line 379
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 1192
    const-string/jumbo v0, ""

    iput-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 1201
    new-array v0, v1, [Ljava/text/Format;

    iput-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1208
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->offsets:[I

    .line 1216
    new-array v0, v1, [I

    iput-object v0, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1225
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 380
    iput-object p2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 381
    invoke-virtual {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/StringBuffer;
    .param p2, "iterator"    # Ljava/text/CharacterIterator;

    .prologue
    const v2, 0xffff

    .line 1352
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 1355
    invoke-interface {p2}, Ljava/text/CharacterIterator;->first()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1356
    :goto_10
    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .local v0, "aChar":C
    if-eq v0, v2, :cond_1a

    .line 1357
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 1360
    .end local v0    # "aChar":C
    :cond_1a
    return-void
.end method

.method private static final copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .registers 9
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "target"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x27

    .line 1556
    const/4 v2, 0x0

    .line 1558
    .local v2, "quoted":Z
    move v1, p1

    .local v1, "i":I
    :goto_4
    if-ge v1, p2, :cond_2d

    .line 1559
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1560
    .local v0, "ch":C
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_1a

    .line 1561
    if-nez v2, :cond_14

    .line 1562
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1563
    const/4 v2, 0x1

    .line 1565
    :cond_14
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1558
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1566
    :cond_1a
    if-ne v0, v4, :cond_23

    .line 1567
    const-string/jumbo v3, "\'\'"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1569
    :cond_23
    if-eqz v2, :cond_29

    .line 1570
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1571
    const/4 v2, 0x0

    .line 1573
    :cond_29
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 1576
    .end local v0    # "ch":C
    :cond_2d
    if-eqz v2, :cond_32

    .line 1577
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1579
    :cond_32
    return-void
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    .line 1538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_10

    .line 1539
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1540
    return v0

    .line 1538
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1544
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "ls":Ljava/lang/String;
    if-eq v1, p0, :cond_2c

    .line 1546
    const/4 v0, 0x0

    :goto_1d
    array-length v2, p1

    if-ge v0, v2, :cond_2c

    .line 1547
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1548
    return v0

    .line 1546
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1551
    :cond_2c
    const/4 v2, -0x1

    return v2
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 844
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 845
    .local v0, "temp":Ljava/text/MessageFormat;
    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeFormat(II[Ljava/lang/StringBuilder;)V
    .registers 27
    .param p1, "position"    # I
    .param p2, "offsetNumber"    # I
    .param p3, "textSegments"    # [Ljava/lang/StringBuilder;

    .prologue
    .line 1422
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1423
    .local v17, "segments":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_26

    .line 1424
    aget-object v16, p3, v8

    .line 1425
    .local v16, "oneseg":Ljava/lang/StringBuilder;
    if-eqz v16, :cond_22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_1d
    aput-object v19, v17, v8

    .line 1423
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 1425
    :cond_22
    const-string/jumbo v19, ""

    goto :goto_1d

    .line 1431
    .end local v16    # "oneseg":Ljava/lang/StringBuilder;
    :cond_26
    const/16 v19, 0x1

    :try_start_28
    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_4c

    move-result v4

    .line 1436
    .local v4, "argumentNumber":I
    if-gez v4, :cond_6f

    .line 1437
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "negative argument number: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1432
    .end local v4    # "argumentNumber":I
    :catch_4c
    move-exception v7

    .line 1433
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "can\'t parse argument number: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1434
    const/16 v21, 0x1

    aget-object v21, v17, v21

    .line 1433
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1442
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "argumentNumber":I
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_f6

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v13, v19, 0x2

    .line 1444
    .local v13, "newLength":I
    new-array v12, v13, [Ljava/text/Format;

    .line 1445
    .local v12, "newFormats":[Ljava/text/Format;
    new-array v14, v13, [I

    .line 1446
    .local v14, "newOffsets":[I
    new-array v10, v13, [I

    .line 1447
    .local v10, "newArgumentNumbers":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/text/MessageFormat;->maxOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1450
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1451
    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/text/MessageFormat;->offsets:[I

    .line 1452
    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1454
    .end local v10    # "newArgumentNumbers":[I
    .end local v12    # "newFormats":[Ljava/text/Format;
    .end local v13    # "newLength":I
    .end local v14    # "newOffsets":[I
    :cond_f6
    move-object/from16 v0, p0

    iget v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1455
    .local v15, "oldMaxOffset":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljava/text/MessageFormat;->maxOffset:I

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->offsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v20, v17, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    aput v20, v19, p2

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    move-object/from16 v19, v0

    aput v4, v19, p2

    .line 1460
    const/4 v11, 0x0

    .line 1461
    .local v11, "newFormat":Ljava/text/Format;
    const/16 v19, 0x2

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_176

    .line 1462
    const/16 v19, 0x2

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->TYPE_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1463
    .local v18, "type":I
    packed-switch v18, :pswitch_data_23e

    .line 1529
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1530
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unknown format type: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1531
    const/16 v21, 0x2

    aget-object v21, v17, v21

    .line 1530
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1470
    :pswitch_152
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->NUMBER_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    packed-switch v19, :pswitch_data_24c

    .line 1485
    :try_start_15f
    new-instance v11, Ljava/text/DecimalFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v20

    .line 1485
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_176
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15f .. :try_end_176} :catch_1ab

    .line 1534
    .end local v18    # "type":I
    :cond_176
    :goto_176
    :pswitch_176
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    move-object/from16 v19, v0

    aput-object v11, v19, p2

    .line 1535
    return-void

    .line 1472
    .restart local v11    # "newFormat":Ljava/text/Format;
    .restart local v18    # "type":I
    :pswitch_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1475
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1478
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_195
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1481
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1487
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_1ab
    move-exception v6

    .line 1488
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1489
    throw v6

    .line 1497
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_1b1
    const/16 v19, 0x3

    aget-object v19, v17, v19

    sget-object v20, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Ljava/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1498
    .local v9, "mod":I
    if-ltz v9, :cond_1ee

    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_1ee

    .line 1499
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1df

    .line 1500
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    .line 1500
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1503
    .local v11, "newFormat":Ljava/text/Format;
    :cond_1df
    sget-object v19, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v19, v19, v9

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    .line 1503
    invoke-static/range {v19 .. v20}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v11

    .local v11, "newFormat":Ljava/text/Format;
    goto :goto_176

    .line 1509
    .local v11, "newFormat":Ljava/text/Format;
    :cond_1ee
    :try_start_1ee
    new-instance v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_201
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ee .. :try_end_201} :catch_203

    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_176

    .line 1510
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_203
    move-exception v6

    .line 1511
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1512
    throw v6

    .line 1520
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "mod":I
    .local v11, "newFormat":Ljava/text/Format;
    :pswitch_209
    :try_start_209
    new-instance v11, Ljava/text/ChoiceFormat;

    .end local v11    # "newFormat":Ljava/text/Format;
    const/16 v19, 0x3

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/text/ChoiceFormat;-><init>(Ljava/lang/String;)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_214} :catch_216

    .local v11, "newFormat":Ljava/text/Format;
    goto/16 :goto_176

    .line 1521
    .end local v11    # "newFormat":Ljava/text/Format;
    :catch_216
    move-exception v5

    .line 1522
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iput v15, v0, Ljava/text/MessageFormat;->maxOffset:I

    .line 1523
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Choice Pattern incorrect: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1524
    const/16 v21, 0x3

    aget-object v21, v17, v21

    .line 1523
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1463
    nop

    :pswitch_data_23e
    .packed-switch 0x0
        :pswitch_176
        :pswitch_152
        :pswitch_1b1
        :pswitch_1b1
        :pswitch_209
    .end packed-switch

    .line 1470
    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_18a
        :pswitch_195
        :pswitch_1a0
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1588
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_46

    .line 1589
    iget-object v3, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v3, v3

    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_46

    .line 1590
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    array-length v3, v3

    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_46

    .line 1591
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    array-length v3, v3

    iget v4, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le v3, v4, :cond_44

    const/4 v1, 0x1

    .line 1592
    .local v1, "isValid":Z
    :goto_1e
    if-eqz v1, :cond_39

    .line 1593
    iget-object v3, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 1594
    .local v2, "lastOffset":I
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    .local v0, "i":I
    :goto_2a
    if-ltz v0, :cond_39

    .line 1595
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-ltz v3, :cond_38

    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v3, v3, v0

    if-le v3, v2, :cond_48

    .line 1596
    :cond_38
    const/4 v1, 0x0

    .line 1603
    .end local v0    # "i":I
    .end local v2    # "lastOffset":I
    :cond_39
    if-nez v1, :cond_4f

    .line 1604
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string/jumbo v4, "Could not reconstruct MessageFormat from corrupt stream."

    invoke-direct {v3, v4}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1591
    .end local v1    # "isValid":Z
    :cond_44
    const/4 v1, 0x0

    .restart local v1    # "isValid":Z
    goto :goto_1e

    .line 1588
    .end local v1    # "isValid":Z
    :cond_46
    const/4 v1, 0x0

    .restart local v1    # "isValid":Z
    goto :goto_1e

    .line 1599
    .restart local v0    # "i":I
    .restart local v2    # "lastOffset":I
    :cond_48
    iget-object v3, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v2, v3, v0

    .line 1594
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 1606
    .end local v0    # "i":I
    .end local v2    # "lastOffset":I
    :cond_4f
    return-void
.end method

.method private subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 16
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fp"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedCharacterIterator;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p4, "characterIterators":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedCharacterIterator;>;"
    const/4 v4, 0x0

    .line 1244
    .local v4, "lastOffset":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1245
    .local v3, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget v8, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v8, :cond_117

    .line 1246
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v9, v9, v2

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1247
    iget-object v8, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v8, v2

    .line 1248
    iget-object v8, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v8, v2

    .line 1249
    .local v1, "argumentNumber":I
    if-eqz p1, :cond_24

    array-length v8, p1

    if-lt v1, v8, :cond_36

    .line 1250
    :cond_24
    const/16 v8, 0x7b

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x7d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1245
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1258
    :cond_36
    aget-object v5, p1, v1

    .line 1259
    .local v5, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1260
    .local v0, "arg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1261
    .local v6, "subFormatter":Ljava/text/Format;
    if-nez v5, :cond_94

    .line 1262
    const-string/jumbo v0, "null"

    .line 1292
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_3f
    :goto_3f
    if-eqz p4, :cond_ea

    .line 1295
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_56

    .line 1297
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1296
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1301
    :cond_56
    if-eqz v6, :cond_77

    .line 1303
    invoke-virtual {v6, v5}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v7

    .line 1305
    .local v7, "subIterator":Ljava/text/AttributedCharacterIterator;
    invoke-direct {p0, p2, v7}, Ljava/text/MessageFormat;->append(Ljava/lang/StringBuffer;Ljava/text/CharacterIterator;)V

    .line 1306
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_76

    .line 1309
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1308
    invoke-virtual {p0, v7, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/text/AttributedCharacterIterator;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1307
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1313
    :cond_76
    const/4 v0, 0x0

    .line 1315
    .end local v7    # "subIterator":Ljava/text/AttributedCharacterIterator;
    :cond_77
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_33

    .line 1316
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1319
    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1318
    invoke-virtual {p0, v0, v8, v9}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    .line 1317
    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto :goto_33

    .line 1263
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v6    # "subFormatter":Ljava/text/Format;
    :cond_94
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    if-eqz v8, :cond_bc

    .line 1264
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v6, v8, v2

    .line 1265
    .local v6, "subFormatter":Ljava/text/Format;
    instance-of v8, v6, Ljava/text/ChoiceFormat;

    if-eqz v8, :cond_3f

    .line 1266
    iget-object v8, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "arg":Ljava/lang/String;
    const/16 v8, 0x7b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_3f

    .line 1268
    new-instance v6, Ljava/text/MessageFormat;

    .end local v6    # "subFormatter":Ljava/text/Format;
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-direct {v6, v0, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1269
    .restart local v6    # "subFormatter":Ljava/text/Format;
    move-object v5, p1

    .line 1270
    const/4 v0, 0x0

    .local v0, "arg":Ljava/lang/String;
    goto :goto_3f

    .line 1273
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_bc
    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_c8

    .line 1275
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_3f

    .line 1276
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_c8
    instance-of v8, v5, Ljava/util/Date;

    if-eqz v8, :cond_d6

    .line 1279
    iget-object v8, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    const/4 v9, 0x3

    const/4 v10, 0x3

    .line 1278
    invoke-static {v9, v10, v8}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v6

    .local v6, "subFormatter":Ljava/text/Format;
    goto/16 :goto_3f

    .line 1280
    .local v6, "subFormatter":Ljava/text/Format;
    :cond_d6
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_df

    move-object v0, v5

    .line 1281
    check-cast v0, Ljava/lang/String;

    .local v0, "arg":Ljava/lang/String;
    goto/16 :goto_3f

    .line 1284
    .local v0, "arg":Ljava/lang/String;
    :cond_df
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_3f

    const-string/jumbo v0, "null"

    goto/16 :goto_3f

    .line 1325
    .end local v0    # "arg":Ljava/lang/String;
    .end local v6    # "subFormatter":Ljava/text/Format;
    :cond_ea
    if-eqz v6, :cond_f0

    .line 1326
    invoke-virtual {v6, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    :cond_f0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 1329
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1330
    if-nez v2, :cond_111

    if-eqz p3, :cond_111

    sget-object v8, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    .line 1331
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v9

    .line 1330
    invoke-virtual {v8, v9}, Ljava/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 1332
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1333
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1335
    :cond_111
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    goto/16 :goto_33

    .line 1339
    .end local v1    # "argumentNumber":I
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_117
    iget-object v8, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v9, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    if-eqz p4, :cond_139

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eq v3, v8, :cond_139

    .line 1342
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1341
    invoke-virtual {p0, v8}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_139
    return-object p2
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .registers 16
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x27

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 427
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/StringBuilder;

    .line 430
    .local v6, "segments":[Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v9

    .line 432
    const/4 v5, 0x0

    .line 433
    .local v5, "part":I
    const/4 v2, 0x0

    .line 434
    .local v2, "formatNumber":I
    const/4 v4, 0x0

    .line 435
    .local v4, "inQuote":Z
    const/4 v0, 0x0

    .line 436
    .local v0, "braceStack":I
    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 437
    const/4 v3, 0x0

    .end local v4    # "inQuote":Z
    .local v3, "i":I
    :goto_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_bb

    .line 438
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 439
    .local v1, "ch":C
    if-nez v5, :cond_5e

    .line 440
    if-ne v1, v13, :cond_43

    .line 441
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_40

    .line 442
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_40

    .line 443
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v3, v3, 0x1

    .line 437
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 446
    :cond_40
    xor-int/lit8 v4, v4, 0x1

    .local v4, "inQuote":Z
    goto :goto_3d

    .line 448
    .end local v4    # "inQuote":Z
    :cond_43
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_58

    xor-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_58

    .line 449
    const/4 v5, 0x1

    .line 450
    aget-object v7, v6, v11

    if-nez v7, :cond_3d

    .line 451
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v11

    goto :goto_3d

    .line 454
    :cond_58
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 457
    :cond_5e
    if-eqz v4, :cond_69

    .line 458
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    if-ne v1, v13, :cond_3d

    .line 460
    const/4 v4, 0x0

    .local v4, "inQuote":Z
    goto :goto_3d

    .line 463
    .end local v4    # "inQuote":Z
    :cond_69
    sparse-switch v1, :sswitch_data_d4

    .line 501
    :goto_6c
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 465
    :sswitch_72
    const/4 v7, 0x3

    if-ge v5, v7, :cond_83

    .line 466
    add-int/lit8 v5, v5, 0x1

    aget-object v7, v6, v5

    if-nez v7, :cond_3d

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v7, v6, v5

    goto :goto_3d

    .line 470
    :cond_83
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 474
    :sswitch_89
    add-int/lit8 v0, v0, 0x1

    .line 475
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 478
    :sswitch_91
    if-nez v0, :cond_a1

    .line 479
    const/4 v5, 0x0

    .line 480
    invoke-direct {p0, v3, v2, v6}, Ljava/text/MessageFormat;->makeFormat(II[Ljava/lang/StringBuilder;)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 483
    aput-object v10, v6, v11

    .line 484
    aput-object v10, v6, v12

    .line 485
    const/4 v7, 0x3

    aput-object v10, v6, v7

    goto :goto_3d

    .line 487
    :cond_a1
    add-int/lit8 v0, v0, -0x1

    .line 488
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 493
    :sswitch_a9
    if-ne v5, v12, :cond_b3

    aget-object v7, v6, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3d

    .line 494
    :cond_b3
    aget-object v7, v6, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 498
    :sswitch_b9
    const/4 v4, 0x1

    .restart local v4    # "inQuote":Z
    goto :goto_6c

    .line 507
    .end local v1    # "ch":C
    .end local v4    # "inQuote":Z
    :cond_bb
    if-nez v0, :cond_cb

    if-eqz v5, :cond_cb

    .line 508
    const/4 v7, -0x1

    iput v7, p0, Ljava/text/MessageFormat;->maxOffset:I

    .line 509
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unmatched braces in the pattern."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 511
    :cond_cb
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    .line 512
    return-void

    .line 463
    :sswitch_data_d4
    .sparse-switch
        0x20 -> :sswitch_a9
        0x27 -> :sswitch_b9
        0x2c -> :sswitch_72
        0x7b -> :sswitch_89
        0x7d -> :sswitch_91
    .end sparse-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1087
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/MessageFormat;

    .line 1090
    .local v1, "other":Ljava/text/MessageFormat;
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/Format;

    iput-object v2, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    .line 1091
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 1092
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2a

    .line 1093
    iget-object v3, v1, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    aput-object v2, v3, v0

    .line 1091
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1096
    :cond_2d
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->offsets:[I

    .line 1097
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Ljava/text/MessageFormat;->argumentNumbers:[I

    .line 1099
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1106
    if-ne p0, p1, :cond_5

    .line 1107
    const/4 v1, 0x1

    return v1

    .line 1108
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/text/MessageFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 1109
    :cond_11
    return v1

    :cond_12
    move-object v0, p1

    .line 1110
    check-cast v0, Ljava/text/MessageFormat;

    .line 1111
    .local v0, "other":Ljava/text/MessageFormat;
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    iget v3, v0, Ljava/text/MessageFormat;->maxOffset:I

    if-ne v2, v3, :cond_57

    .line 1112
    iget-object v2, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1111
    if-eqz v2, :cond_57

    .line 1113
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_33

    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    iget-object v3, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1114
    :cond_33
    iget-object v2, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_57

    iget-object v2, v0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    if-nez v2, :cond_57

    .line 1115
    :cond_3b
    iget-object v2, p0, Ljava/text/MessageFormat;->offsets:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->offsets:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    .line 1111
    if-eqz v2, :cond_57

    .line 1116
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    iget-object v3, v0, Ljava/text/MessageFormat;->argumentNumbers:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    .line 1111
    if-eqz v2, :cond_57

    .line 1117
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget-object v2, v0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    .line 1111
    :cond_57
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 869
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arguments":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "arguments"    # [Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "arguments"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 908
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 909
    .local v1, "result":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v0, "iterators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedCharacterIterator;>;"
    if-nez p1, :cond_16

    .line 912
    new-instance v2, Ljava/lang/NullPointerException;

    .line 913
    const-string/jumbo v3, "formatToCharacterIterator must be passed non-null object"

    .line 912
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 915
    :cond_16
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "arguments":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, v2, v0}, Ljava/text/MessageFormat;->subformat([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 916
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_29

    .line 917
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator(Ljava/lang/String;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2

    .line 921
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/AttributedCharacterIterator;

    .line 920
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/AttributedCharacterIterator;

    .line 919
    invoke-virtual {p0, v2}, Ljava/text/MessageFormat;->createAttributedCharacterIterator([Ljava/text/AttributedCharacterIterator;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    return-object v2
.end method

.method public getFormats()[Ljava/text/Format;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 750
    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/text/Format;

    .line 751
    .local v0, "resultArray":[Ljava/text/Format;
    iget-object v1, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .registers 6

    .prologue
    .line 720
    const/4 v1, -0x1

    .line 721
    .local v1, "maximumArgumentNumber":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_13

    .line 722
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    if-le v3, v1, :cond_10

    .line 723
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v3, v0

    .line 721
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 726
    :cond_13
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [Ljava/text/Format;

    .line 727
    .local v2, "resultArray":[Ljava/text/Format;
    const/4 v0, 0x0

    :goto_18
    iget v3, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v3, :cond_29

    .line 728
    iget-object v3, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v3, v0

    iget-object v4, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 730
    :cond_29
    return-object v2
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1045
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1046
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    .line 1047
    .local v1, "result":[Ljava/lang/Object;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_19

    .line 1048
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "MessageFormat parse error!"

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1050
    :cond_19
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .registers 16
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 956
    if-nez p1, :cond_6

    .line 957
    const/4 v11, 0x0

    new-array v0, v11, [Ljava/lang/Object;

    .line 958
    .local v0, "empty":[Ljava/lang/Object;
    return-object v0

    .line 961
    .end local v0    # "empty":[Ljava/lang/Object;
    :cond_6
    const/4 v3, -0x1

    .line 962
    .local v3, "maximumArgumentNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_19

    .line 963
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    if-le v11, v3, :cond_16

    .line 964
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v3, v11, v1

    .line 962
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 967
    :cond_19
    add-int/lit8 v11, v3, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    .line 969
    .local v6, "resultArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 970
    .local v5, "patternOffset":I
    iget v7, p2, Ljava/text/ParsePosition;->index:I

    .line 971
    .local v7, "sourceOffset":I
    new-instance v10, Ljava/text/ParsePosition;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/text/ParsePosition;-><init>(I)V

    .line 972
    .local v10, "tempStatus":Ljava/text/ParsePosition;
    const/4 v1, 0x0

    :goto_27
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v1, v11, :cond_c1

    .line 974
    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v11, v11, v1

    sub-int v2, v11, v5

    .line 975
    .local v2, "len":I
    if-eqz v2, :cond_3b

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 977
    :cond_3b
    add-int/2addr v7, v2

    .line 978
    add-int/2addr v5, v2

    .line 985
    iget-object v11, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v11, v11, v1

    if-nez v11, :cond_a6

    .line 989
    iget v11, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-eq v1, v11, :cond_5d

    iget-object v11, p0, Ljava/text/MessageFormat;->offsets:[I

    add-int/lit8 v12, v1, 0x1

    aget v9, v11, v12

    .line 992
    .local v9, "tempLength":I
    :goto_4d
    if-lt v5, v9, :cond_64

    .line 993
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 999
    .local v4, "next":I
    :goto_53
    if-gez v4, :cond_6f

    .line 1000
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1001
    const/4 v11, 0x0

    return-object v11

    .line 980
    .end local v4    # "next":I
    .end local v9    # "tempLength":I
    :cond_59
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 981
    const/4 v11, 0x0

    return-object v11

    .line 989
    :cond_5d
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .restart local v9    # "tempLength":I
    goto :goto_4d

    .line 995
    :cond_64
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .restart local v4    # "next":I
    goto :goto_53

    .line 1003
    :cond_6f
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1004
    .local v8, "strValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v12, v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a2

    .line 1005
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    .line 1006
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1005
    aput-object v12, v6, v11

    .line 1007
    :cond_a2
    move v7, v4

    .line 972
    .end local v4    # "next":I
    .end local v8    # "strValue":Ljava/lang/String;
    .end local v9    # "tempLength":I
    :goto_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 1010
    :cond_a6
    iput v7, v10, Ljava/text/ParsePosition;->index:I

    .line 1011
    iget-object v11, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v11, v11, v1

    .line 1012
    iget-object v12, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v12, v12, v1

    invoke-virtual {v12, p1, v10}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v12

    .line 1011
    aput-object v12, v6, v11

    .line 1013
    iget v11, v10, Ljava/text/ParsePosition;->index:I

    if-ne v11, v7, :cond_be

    .line 1014
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1015
    const/4 v11, 0x0

    return-object v11

    .line 1017
    :cond_be
    iget v7, v10, Ljava/text/ParsePosition;->index:I

    goto :goto_a3

    .line 1020
    .end local v2    # "len":I
    :cond_c1
    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v5

    .line 1021
    .restart local v2    # "len":I
    if-eqz v2, :cond_d3

    iget-object v11, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v5, p1, v7, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 1023
    :cond_d3
    add-int v11, v7, v2

    iput v11, p2, Ljava/text/ParsePosition;->index:I

    .line 1028
    return-object v6

    .line 1025
    :cond_d8
    iput v7, p2, Ljava/text/ParsePosition;->errorIndex:I

    .line 1026
    const/4 v11, 0x0

    return-object v11
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 1078
    invoke-virtual {p0, p1, p2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .registers 5
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
    .line 693
    iget v0, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-le p1, v0, :cond_c

    .line 694
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Ljava/text/MessageFormat;->maxOffset:I

    invoke-direct {v0, v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 696
    :cond_c
    iget-object v0, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aput-object p2, v0, p1

    .line 697
    return-void
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .registers 5
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .prologue
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
    :cond_12
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 640
    array-length v1, p1

    .line 641
    .local v1, "runsToCopy":I
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_b

    .line 642
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    add-int/lit8 v1, v2, 0x1

    .line 644
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v1, :cond_17

    .line 645
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v0

    aput-object v3, v2, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 647
    :cond_17
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .registers 6
    .param p1, "newFormats"    # [Ljava/text/Format;

    .prologue
    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v0, v2, :cond_15

    .line 610
    iget-object v2, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v1, v2, v0

    .line 611
    .local v1, "j":I
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 612
    iget-object v2, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 609
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 615
    .end local v1    # "j":I
    :cond_15
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 402
    iput-object p1, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 403
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .registers 9

    .prologue
    .line 524
    const/4 v4, 0x0

    .line 525
    .local v4, "lastOffset":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget v6, p0, Ljava/text/MessageFormat;->maxOffset:I

    if-gt v2, v6, :cond_114

    .line 527
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v7, v7, v2

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 528
    iget-object v6, p0, Ljava/text/MessageFormat;->offsets:[I

    aget v4, v6, v2

    .line 529
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/text/MessageFormat;->argumentNumbers:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    iget-object v6, p0, Ljava/text/MessageFormat;->formats:[Ljava/text/Format;

    aget-object v1, v6, v2

    .line 531
    .local v1, "fmt":Ljava/text/Format;
    if-nez v1, :cond_33

    .line 579
    .end local v1    # "fmt":Ljava/text/Format;
    :cond_2b
    :goto_2b
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 533
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_33
    instance-of v6, v1, Ljava/text/NumberFormat;

    if-eqz v6, :cond_ae

    .line 534
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 535
    const-string/jumbo v6, ",number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 536
    :cond_4a
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 537
    const-string/jumbo v6, ",number,currency"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 538
    :cond_5d
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 539
    const-string/jumbo v6, ",number,percent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 540
    :cond_70
    iget-object v6, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 541
    const-string/jumbo v6, ",number,integer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 543
    :cond_83
    instance-of v6, v1, Ljava/text/DecimalFormat;

    if-eqz v6, :cond_98

    .line 544
    const-string/jumbo v6, ",number,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/DecimalFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 545
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_98
    instance-of v6, v1, Ljava/text/ChoiceFormat;

    if-eqz v6, :cond_2b

    .line 546
    const-string/jumbo v6, ",choice,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/ChoiceFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/ChoiceFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    .line 551
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_ae
    instance-of v6, v1, Ljava/text/DateFormat;

    if-eqz v6, :cond_2b

    .line 553
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_b3
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-ge v3, v6, :cond_ce

    .line 554
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    .line 555
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 554
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 556
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 557
    const-string/jumbo v6, ",date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_ce
    :goto_ce
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    array-length v6, v6

    if-lt v3, v6, :cond_103

    .line 568
    instance-of v6, v1, Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_2b

    .line 569
    const-string/jumbo v6, ",date,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "fmt":Ljava/text/Format;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    .line 560
    .restart local v0    # "df":Ljava/text/DateFormat;
    .restart local v1    # "fmt":Ljava/text/Format;
    :cond_e9
    sget-object v6, Ljava/text/MessageFormat;->DATE_TIME_MODIFIERS:[I

    aget v6, v6, v3

    .line 561
    iget-object v7, p0, Ljava/text/MessageFormat;->locale:Ljava/util/Locale;

    .line 560
    invoke-static {v6, v7}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 562
    invoke-virtual {v1, v0}, Ljava/text/Format;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 563
    const-string/jumbo v6, ",time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ce

    .line 553
    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 573
    .end local v0    # "df":Ljava/text/DateFormat;
    :cond_103
    if-eqz v3, :cond_2b

    .line 574
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/text/MessageFormat;->DATE_TIME_MODIFIER_KEYWORDS:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    .line 581
    .end local v1    # "fmt":Ljava/text/Format;
    .end local v3    # "index":I
    :cond_114
    iget-object v6, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    iget-object v7, p0, Ljava/text/MessageFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v4, v7, v5}, Ljava/text/MessageFormat;->copyAndFixQuotes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 582
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
