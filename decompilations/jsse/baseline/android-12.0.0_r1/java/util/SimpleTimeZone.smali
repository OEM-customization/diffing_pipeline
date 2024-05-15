.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final greylist-max-o DOM_MODE:I = 0x1

.field private static final greylist-max-o DOW_GE_DOM_MODE:I = 0x3

.field private static final greylist-max-o DOW_IN_MONTH_MODE:I = 0x2

.field private static final greylist-max-o DOW_LE_DOM_MODE:I = 0x4

.field public static final whitelist test-api STANDARD_TIME:I = 0x1

.field public static final whitelist test-api UTC_TIME:I = 0x2

.field public static final whitelist test-api WALL_TIME:I = 0x0

.field static final greylist-max-o currentSerialVersion:I = 0x2

.field private static final greylist-max-o gcal:Lsun/util/calendar/Gregorian;

.field private static final greylist-max-o millisPerDay:I = 0x5265c00

.field private static final greylist-max-o millisPerHour:I = 0x36ee80

.field static final whitelist serialVersionUID:J = -0x598a29f2ea10a5aL

.field private static final greylist-max-o staticLeapMonthLength:[B

.field private static final greylist-max-o staticMonthLength:[B


# instance fields
.field private transient greylist-max-o cacheEnd:J

.field private transient greylist-max-o cacheStart:J

.field private transient greylist-max-o cacheYear:J

.field private greylist-max-o dstSavings:I

.field private greylist-max-o endDay:I

.field private greylist-max-o endDayOfWeek:I

.field private greylist-max-o endMode:I

.field private greylist-max-o endMonth:I

.field private greylist-max-o endTime:I

.field private greylist-max-o endTimeMode:I

.field private final greylist-max-o monthLength:[B

.field private greylist-max-o rawOffset:I

.field private greylist-max-o serialVersionOnStream:I

.field private greylist-max-o startDay:I

.field private greylist-max-o startDayOfWeek:I

.field private greylist-max-o startMode:I

.field private greylist-max-o startMonth:I

.field private greylist-max-o startTime:I

.field private greylist-max-o startTimeMode:I

.field private greylist-max-o startYear:I

.field private greylist-max-o useDaylight:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1128
    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    .line 1129
    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Ljava/util/SimpleTimeZone;->staticLeapMonthLength:[B

    .line 1199
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    return-void

    nop

    :array_18
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_22
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1127
    sget-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1279
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 160
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 161
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 162
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 163
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIII)V
    .registers 25
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    .line 218
    const/4 v7, 0x0

    const/4 v12, 0x0

    const v13, 0x36ee80

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 222
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 26
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "dstSavings"    # I

    .line 277
    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 281
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 30
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "dstSavings"    # I

    .line 333
    move-object/from16 v0, p0

    move/from16 v1, p13

    invoke-direct/range {p0 .. p0}, Ljava/util/TimeZone;-><init>()V

    .line 1114
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1127
    sget-object v2, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v2, v0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1279
    const/4 v2, 0x2

    iput v2, v0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 335
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 336
    move/from16 v3, p1

    iput v3, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 337
    move/from16 v4, p3

    iput v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 338
    move/from16 v5, p4

    iput v5, v0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 339
    move/from16 v6, p5

    iput v6, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 340
    move/from16 v7, p6

    iput v7, v0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 341
    move/from16 v8, p7

    iput v8, v0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 342
    move/from16 v9, p8

    iput v9, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 343
    move/from16 v10, p9

    iput v10, v0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 344
    move/from16 v11, p10

    iput v11, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 345
    move/from16 v12, p11

    iput v12, v0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 346
    move/from16 v13, p12

    iput v13, v0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 347
    iput v1, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 350
    invoke-direct/range {p0 .. p0}, Ljava/util/SimpleTimeZone;->decodeRules()V

    .line 351
    if-lez v1, :cond_4a

    .line 354
    return-void

    .line 352
    :cond_4a
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal daylight saving value: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private greylist-max-o decodeEndRule()V
    .registers 6

    .line 1427
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1428
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_da

    .line 1429
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ltz v2, :cond_c1

    const/16 v3, 0xb

    if-gt v2, v3, :cond_c1

    .line 1433
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ltz v3, :cond_a8

    const v4, 0x5265c00

    if-gt v3, v4, :cond_a8

    .line 1437
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v4, 0x2

    if-nez v3, :cond_2b

    .line 1438
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_44

    .line 1440
    :cond_2b
    if-lez v3, :cond_30

    .line 1441
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_3f

    .line 1443
    :cond_30
    neg-int v3, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1444
    if-lez v0, :cond_39

    .line 1445
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_3f

    .line 1447
    :cond_39
    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1448
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 1451
    :goto_3f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_8f

    .line 1456
    :goto_44
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v4, :cond_6b

    .line 1457
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_52

    const/4 v1, 0x5

    if-gt v0, v1, :cond_52

    goto/16 :goto_da

    .line 1458
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_6b
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_76

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_76

    goto :goto_da

    .line 1462
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :cond_da
    :goto_da
    return-void
.end method

.method private greylist-max-o decodeRules()V
    .registers 1

    .line 1351
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 1352
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 1353
    return-void
.end method

.method private greylist-max-o decodeStartRule()V
    .registers 6

    .line 1380
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1381
    if-eqz v0, :cond_d8

    .line 1382
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ltz v2, :cond_bf

    const/16 v3, 0xb

    if-gt v2, v3, :cond_bf

    .line 1386
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ltz v3, :cond_a6

    const v4, 0x5265c00

    if-gt v3, v4, :cond_a6

    .line 1390
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v4, 0x2

    if-nez v3, :cond_29

    .line 1391
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_42

    .line 1393
    :cond_29
    if-lez v3, :cond_2e

    .line 1394
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_3d

    .line 1396
    :cond_2e
    neg-int v3, v3

    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1397
    if-lez v0, :cond_37

    .line 1398
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_3d

    .line 1400
    :cond_37
    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1401
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1404
    :goto_3d
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_8d

    .line 1409
    :goto_42
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v4, :cond_69

    .line 1410
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_50

    const/4 v1, 0x5

    if-gt v0, v1, :cond_50

    goto/16 :goto_d8

    .line 1411
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_69
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_74

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_74

    goto :goto_d8

    .line 1415
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1383
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_d8
    :goto_d8
    return-void
.end method

.method private greylist-max-o getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .registers 14
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .line 734
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 735
    .local v0, "time":I
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 736
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v0, v2

    .line 738
    :cond_a
    if-nez v1, :cond_f

    .line 739
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int/2addr v0, v1

    .line 741
    :cond_f
    iget v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v9, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I
    .registers 15
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I
    .param p4, "time"    # J

    .line 673
    monitor-enter p0

    .line 674
    :try_start_1
    iget-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 675
    cmp-long v0, p4, v0

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v0, p4, v0

    if-gez v0, :cond_1a

    .line 676
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 678
    :cond_1a
    int-to-long v0, p3

    iget-wide v2, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 679
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    monitor-exit p0

    return v0

    .line 682
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_8a

    .line 684
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    .line 685
    .local v0, "start":J
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v2

    .line 686
    .local v2, "end":J
    iget v4, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 687
    .local v4, "offset":I
    cmp-long v5, v0, v2

    if-gtz v5, :cond_4f

    .line 688
    cmp-long v5, p4, v0

    if-ltz v5, :cond_41

    cmp-long v5, p4, v2

    if-gez v5, :cond_41

    .line 689
    iget v5, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v4, v5

    move v5, v4

    goto :goto_42

    .line 691
    :cond_41
    move v5, v4

    .end local v4    # "offset":I
    .local v5, "offset":I
    :goto_42
    monitor-enter p0

    .line 692
    int-to-long v6, p3

    :try_start_44
    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 693
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    .line 694
    iput-wide v2, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    .line 695
    monitor-exit p0

    goto :goto_89

    :catchall_4c
    move-exception v4

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_4c

    throw v4

    .line 697
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_4f
    cmp-long v5, p4, v2

    if-gez v5, :cond_61

    .line 700
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, p1, p2, v5}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v0

    .line 701
    cmp-long v5, p4, v0

    if-ltz v5, :cond_72

    .line 702
    iget v5, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v4, v5

    goto :goto_72

    .line 704
    :cond_61
    cmp-long v5, p4, v0

    if-ltz v5, :cond_72

    .line 707
    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p1, p2, v5}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v2

    .line 708
    cmp-long v5, p4, v2

    if-gez v5, :cond_72

    .line 709
    iget v5, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v4, v5

    .line 712
    :cond_72
    :goto_72
    cmp-long v5, v0, v2

    if-gtz v5, :cond_88

    .line 713
    monitor-enter p0

    .line 715
    :try_start_77
    iget v5, p0, Ljava/util/SimpleTimeZone;->startYear:I

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 716
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    .line 717
    iput-wide v2, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    .line 718
    monitor-exit p0

    goto :goto_88

    :catchall_85
    move-exception v5

    monitor-exit p0
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_85

    throw v5

    .line 721
    :cond_88
    :goto_88
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :goto_89
    return v5

    .line 682
    .end local v0    # "start":J
    .end local v2    # "end":J
    .end local v5    # "offset":I
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method private greylist-max-o getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .registers 14
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .line 725
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 726
    .local v0, "time":I
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 727
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v0, v1

    .line 729
    :cond_a
    iget v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v8, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v9, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J
    .registers 13
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "mode"    # I
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "timeOfDay"    # I

    .line 748
    invoke-virtual {p2, p4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 749
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 750
    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_44

    goto :goto_3c

    .line 769
    :pswitch_d
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 770
    const/4 v0, -0x1

    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_3c

    .line 764
    :pswitch_19
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 765
    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .line 766
    goto :goto_3c

    .line 756
    :pswitch_24
    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 757
    if-gez p6, :cond_30

    .line 758
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 760
    :cond_30
    invoke-virtual {p1, p6, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .line 761
    goto :goto_3c

    .line 752
    :pswitch_38
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 753
    nop

    .line 773
    :goto_3c
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    int-to-long v2, p8

    add-long/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_24
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o invalidateCache()V
    .registers 3

    monitor-enter p0

    .line 1282
    :try_start_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    .line 1283
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1284
    monitor-exit p0

    return-void

    .line 1281
    .end local p0    # "this":Ljava/util/SimpleTimeZone;
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o makeRulesCompatible()V
    .registers 6

    .line 1479
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    const/4 v1, -0x1

    const/16 v2, 0x1e

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_bc

    :pswitch_9
    goto :goto_2b

    .line 1494
    :pswitch_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v2, :cond_11

    .line 1495
    iput v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2b

    .line 1497
    :cond_11
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2b

    .line 1488
    :pswitch_17
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v0, v3, :cond_2b

    .line 1489
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2b

    .line 1481
    :pswitch_21
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1482
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1483
    nop

    .line 1502
    :cond_2b
    :goto_2b
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v0, :pswitch_data_c8

    :pswitch_30
    goto :goto_52

    .line 1517
    :pswitch_31
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v2, :cond_38

    .line 1518
    iput v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_52

    .line 1520
    :cond_38
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_52

    .line 1511
    :pswitch_3e
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v0, v3, :cond_52

    .line 1512
    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_52

    .line 1504
    :pswitch_48
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1505
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1506
    nop

    .line 1535
    :cond_52
    :goto_52
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    packed-switch v0, :pswitch_data_d4

    goto :goto_5f

    .line 1537
    :pswitch_58
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1540
    :goto_5f
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const v1, 0x5265c00

    if-gez v0, :cond_73

    .line 1541
    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1542
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_5f

    .line 1544
    :cond_73
    :goto_73
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-lt v0, v1, :cond_82

    .line 1545
    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1546
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_73

    .line 1549
    :cond_82
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    packed-switch v0, :pswitch_data_da

    goto :goto_9a

    .line 1551
    :pswitch_88
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1552
    goto :goto_9a

    .line 1554
    :pswitch_93
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1556
    :goto_9a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-gez v0, :cond_ab

    .line 1557
    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1558
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_9a

    .line 1560
    :cond_ab
    :goto_ab
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-lt v0, v1, :cond_ba

    .line 1561
    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1562
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_ab

    .line 1564
    :cond_ba
    return-void

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_21
        :pswitch_9
        :pswitch_17
        :pswitch_a
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_48
        :pswitch_30
        :pswitch_3e
        :pswitch_31
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x2
        :pswitch_58
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_93
        :pswitch_88
    .end packed-switch
.end method

.method private greylist-max-o packRules()[B
    .registers 4

    .line 1572
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 1573
    .local v0, "rules":[B
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1574
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1575
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1576
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1579
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1580
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1582
    return-object v0
.end method

.method private greylist-max-o packTimes()[I
    .registers 4

    .line 1608
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1609
    .local v0, "times":[I
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1610
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 1611
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1672
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1674
    iget v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1f

    .line 1678
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_f

    .line 1679
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1681
    :cond_f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_15

    .line 1682
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1687
    :cond_15
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1688
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_2b

    .line 1693
    :cond_1f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1694
    .local v0, "length":I
    new-array v2, v0, [B

    .line 1695
    .local v2, "rules":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 1696
    invoke-direct {p0, v2}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    .line 1699
    .end local v0    # "length":I
    .end local v2    # "rules":[B
    :goto_2b
    iget v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-lt v0, v1, :cond_38

    .line 1700
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1701
    .local v0, "times":[I
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1704
    .end local v0    # "times":[I
    :cond_38
    iput v1, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 1705
    return-void
.end method

.method private greylist-max-o unpackRules([B)V
    .registers 4
    .param p1, "rules"    # [B

    .line 1591
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1592
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1593
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1594
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1597
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_22

    .line 1598
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 1599
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 1601
    :cond_22
    return-void
.end method

.method private greylist-max-o unpackTimes([I)V
    .registers 3
    .param p1, "times"    # [I

    .line 1619
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1620
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1621
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1643
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packRules()[B

    move-result-object v0

    .line 1644
    .local v0, "rules":[B
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packTimes()[I

    move-result-object v1

    .line 1647
    .local v1, "times":[I
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->makeRulesCompatible()V

    .line 1650
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1653
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1654
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 1655
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1659
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    .line 1660
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1661
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 871
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 893
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 894
    return v0

    .line 896
    :cond_4
    instance-of v1, p1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 897
    return v2

    .line 900
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/SimpleTimeZone;

    .line 902
    .local v1, "that":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 903
    invoke-virtual {p0, v1}, Ljava/util/SimpleTimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    .line 902
    :goto_23
    return v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 828
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 25
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .line 607
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    const/4 v0, 0x1

    if-eq v7, v0, :cond_27

    if-nez v7, :cond_10

    goto :goto_27

    .line 608
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal era "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_27
    :goto_27
    move/from16 v1, p2

    .line 612
    .local v1, "y":I
    if-nez v7, :cond_2d

    .line 614
    rsub-int/lit8 v1, v1, 0x1

    .line 622
    :cond_2d
    const v2, 0x116bd2d2

    if-lt v1, v2, :cond_38

    .line 623
    rem-int/lit16 v2, v1, 0xaf0

    add-int/lit16 v1, v2, 0xaf0

    move v11, v1

    goto :goto_48

    .line 624
    :cond_38
    const v2, -0x116babfe

    if-gt v1, v2, :cond_47

    .line 628
    int-to-long v2, v1

    const-wide/16 v4, 0x1c

    invoke-static {v2, v3, v4, v5}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    move v11, v1

    goto :goto_48

    .line 624
    :cond_47
    move v11, v1

    .line 632
    .end local v1    # "y":I
    .local v11, "y":I
    :goto_48
    add-int/lit8 v12, p3, 0x1

    .line 635
    .local v12, "m":I
    sget-object v1, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    .line 636
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    .line 637
    .local v2, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v2, v11, v12, v8}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 638
    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    .line 639
    .local v3, "time":J
    iget v5, v6, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v5, v10, v5

    int-to-long v13, v5

    add-long/2addr v3, v13

    .line 647
    const-wide v13, -0xb1d069b5400L

    cmp-long v5, v3, v13

    if-gez v5, :cond_8f

    .line 648
    const-string v5, "julian"

    invoke-static {v5}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    .line 649
    sget-object v5, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v5}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    .line 650
    invoke-virtual {v2, v11, v12, v8}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    .line 651
    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v13

    move-object v15, v1

    .end local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    .local v15, "cal":Lsun/util/calendar/BaseCalendar;
    int-to-long v0, v10

    add-long/2addr v13, v0

    iget v0, v6, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v0, v0

    sub-long v3, v13, v0

    move-object v13, v2

    move-wide/from16 v16, v3

    goto :goto_93

    .line 647
    .end local v15    # "cal":Lsun/util/calendar/BaseCalendar;
    .restart local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_8f
    move-object v15, v1

    move-object v13, v2

    move-wide/from16 v16, v3

    .line 654
    .end local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v3    # "time":J
    .local v13, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v15    # "cal":Lsun/util/calendar/BaseCalendar;
    .local v16, "time":J
    :goto_93
    invoke-virtual {v13}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    if-ne v0, v11, :cond_d7

    .line 655
    invoke-virtual {v13}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    if-ne v0, v12, :cond_d4

    .line 656
    invoke-virtual {v13}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    if-ne v0, v8, :cond_d1

    const/4 v0, 0x1

    if-lt v9, v0, :cond_d1

    const/4 v0, 0x7

    if-gt v9, v0, :cond_d1

    if-ltz v10, :cond_d1

    const v0, 0x5265c00

    if-ge v10, v0, :cond_d1

    .line 665
    iget-boolean v0, v6, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_cc

    iget v0, v6, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v14, p2

    if-lt v14, v0, :cond_ce

    const/4 v0, 0x1

    if-eq v7, v0, :cond_c0

    goto :goto_ce

    .line 669
    :cond_c0
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v13

    move v3, v11

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v0

    return v0

    .line 665
    :cond_cc
    move/from16 v14, p2

    .line 666
    :cond_ce
    :goto_ce
    iget v0, v6, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0

    .line 656
    :cond_d1
    move/from16 v14, p2

    goto :goto_d9

    .line 655
    :cond_d4
    move/from16 v14, p2

    goto :goto_d9

    .line 654
    :cond_d7
    move/from16 v14, p2

    .line 662
    :goto_d9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getOffset(J)I
    .registers 4
    .param p1, "date"    # J

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/SimpleTimeZone;->getOffsets(J[I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getOffsets(J[I)I
    .registers 15
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .line 546
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 549
    .local v0, "offset":I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 550
    monitor-enter p0

    .line 551
    :try_start_8
    iget-wide v3, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f

    .line 552
    cmp-long v1, p1, v3

    if-ltz v1, :cond_1f

    iget-wide v3, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    cmp-long v1, p1, v3

    if-gez v1, :cond_1f

    .line 553
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v1

    .line 554
    monitor-exit p0

    goto :goto_5c

    .line 557
    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_59

    .line 558
    const-wide v3, -0xb1d069b5400L

    cmp-long v1, p1, v3

    if-ltz v1, :cond_2c

    .line 559
    sget-object v1, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_34

    :cond_2c
    const-string v1, "julian"

    invoke-static {v1}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    .line 560
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_34
    sget-object v3, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lsun/util/calendar/BaseCalendar$Date;

    .line 562
    .local v9, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    invoke-virtual {v1, v3, v4, v9}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 563
    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v10

    .line 564
    .local v10, "year":I
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-lt v10, v3, :cond_5c

    .line 566
    invoke-virtual {v9, v2, v2, v2, v2}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 567
    move-object v3, p0

    move-object v4, v1

    move-object v5, v9

    move v6, v10

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v0

    goto :goto_5c

    .line 557
    .end local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v9    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v10    # "year":I
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1

    .line 571
    :cond_5c
    :goto_5c
    if-eqz p3, :cond_67

    .line 572
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    aput v1, p3, v2

    .line 573
    const/4 v2, 0x1

    sub-int v1, v0, v1

    aput v1, p3, v2

    .line 575
    :cond_67
    return v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 785
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public whitelist test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 7
    .param p1, "other"    # Ljava/util/TimeZone;

    .line 914
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 915
    return v0

    .line 917
    :cond_4
    instance-of v1, p1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 918
    return v2

    .line 920
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/SimpleTimeZone;

    .line 921
    .local v1, "that":Ljava/util/SimpleTimeZone;
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v3, v4, :cond_70

    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v4, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v3, v4, :cond_70

    if-eqz v3, :cond_6f

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startTimeMode:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v4, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v3, v4, :cond_70

    :cond_6f
    goto :goto_71

    :cond_70
    move v0, v2

    :goto_71
    return v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .registers 3

    monitor-enter p0

    .line 880
    :try_start_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 880
    .end local p0    # "this":Ljava/util/SimpleTimeZone;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 862
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 852
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setDSTSavings(I)V
    .registers 5
    .param p1, "millisSavedDuringDST"    # I

    .line 808
    if-lez p1, :cond_5

    .line 812
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 813
    return-void

    .line 809
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal daylight saving value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setEndRule(III)V
    .registers 5
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endTime"    # I

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 496
    return-void
.end method

.method public whitelist test-api setEndRule(IIII)V
    .registers 6
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I

    .line 468
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 469
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 470
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 471
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 473
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 474
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 475
    return-void
.end method

.method public whitelist test-api setEndRule(IIIIZ)V
    .registers 8
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I
    .param p5, "after"    # Z

    .line 520
    if-eqz p5, :cond_7

    .line 521
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    goto :goto_c

    .line 523
    :cond_7
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 525
    :goto_c
    return-void
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 2
    .param p1, "offsetMillis"    # I

    .line 795
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 796
    return-void
.end method

.method public whitelist test-api setStartRule(III)V
    .registers 5
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startTime"    # I

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 414
    return-void
.end method

.method public whitelist test-api setStartRule(IIII)V
    .registers 6
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I

    .line 387
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 388
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 389
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 390
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 392
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 393
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 394
    return-void
.end method

.method public whitelist test-api setStartRule(IIIIZ)V
    .registers 8
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I
    .param p5, "after"    # Z

    .line 439
    if-eqz p5, :cond_7

    .line 440
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    goto :goto_c

    .line 442
    :cond_7
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 444
    :goto_c
    return-void
.end method

.method public whitelist test-api setStartYear(I)V
    .registers 2
    .param p1, "year"    # I

    .line 363
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 364
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 365
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",endTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 838
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
