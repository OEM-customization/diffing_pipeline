.class public Ljava/util/Calendar$Builder;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final NFIELDS:I = 0x12

.field private static final WEEK_YEAR:I = 0x11


# instance fields
.field private fields:[I

.field private firstDayOfWeek:I

.field private instant:J

.field private lenient:Z

.field private locale:Ljava/util/Locale;

.field private maxFieldIndex:I

.field private minimalDaysInFirstWeek:I

.field private nextStamp:I

.field private type:Ljava/lang/String;

.field private zone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1091
    return-void
.end method

.method private allocateFields()V
    .registers 2

    .prologue
    .line 1547
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-nez v0, :cond_10

    .line 1548
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    .line 1549
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    .line 1550
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    .line 1552
    :cond_10
    return-void
.end method

.method private internalSet(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1555
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    aput v1, v0, p1

    .line 1556
    iget v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-gez v0, :cond_17

    .line 1557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stamp counter overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :cond_17
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 1560
    iget v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-le p1, v0, :cond_27

    const/16 v0, 0x11

    if-ge p1, v0, :cond_27

    .line 1561
    iput p1, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    .line 1563
    :cond_27
    return-void
.end method

.method private isInstantSet()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1566
    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isSet(I)Z
    .registers 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1570
    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v1, :cond_c

    iget-object v1, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v1, v1, p1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private isValidWeekParameter(I)Z
    .registers 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 1574
    if-lez p1, :cond_7

    const/4 v1, 0x7

    if-gt p1, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method


# virtual methods
.method public build()Ljava/util/Calendar;
    .registers 13

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x1

    .line 1457
    iget-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    if-nez v7, :cond_d

    .line 1458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1460
    :cond_d
    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    if-nez v7, :cond_17

    .line 1461
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1464
    :cond_17
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v7, :cond_26

    .line 1465
    iget-object v7, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    const-string/jumbo v8, "ca"

    invoke-virtual {v7, v8}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1467
    :cond_26
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v7, :cond_2f

    .line 1478
    const-string/jumbo v7, "gregory"

    iput-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1481
    :cond_2f
    iget-object v7, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    const-string/jumbo v8, "gregory"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 1483
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v8, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v7, v8, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    .line 1505
    .local v0, "cal":Ljava/util/Calendar;
    :goto_43
    iget-boolean v7, p0, Ljava/util/Calendar$Builder;->lenient:Z

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 1506
    iget v7, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    if-eqz v7, :cond_56

    .line 1507
    iget v7, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1508
    iget v7, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1510
    :cond_56
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 1511
    iget-wide v8, p0, Ljava/util/Calendar$Builder;->instant:J

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1512
    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    .line 1513
    return-object v0

    .line 1481
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_65
    const-string/jumbo v8, "iso8601"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1486
    new-instance v2, Ljava/util/GregorianCalendar;

    iget-object v7, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v8, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v2, v7, v8, v10}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    .line 1488
    .local v2, "gcal":Ljava/util/GregorianCalendar;
    new-instance v7, Ljava/util/Date;

    const-wide/high16 v8, -0x8000000000000000L

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1490
    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v8}, Ljava/util/Calendar$Builder;->setWeekDefinition(II)Ljava/util/Calendar$Builder;

    .line 1491
    move-object v0, v2

    .line 1492
    .restart local v0    # "cal":Ljava/util/Calendar;
    goto :goto_43

    .line 1503
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "gcal":Ljava/util/GregorianCalendar;
    :cond_88
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown calendar type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1516
    .restart local v0    # "cal":Ljava/util/Calendar;
    :cond_a4
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v7, :cond_12a

    .line 1517
    invoke-direct {p0, v11}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 1518
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v7, v7, v11

    iget-object v8, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v8, v8, v10

    if-le v7, v8, :cond_df

    const/4 v5, 0x1

    .line 1519
    .local v5, "weekDate":Z
    :goto_b9
    if-eqz v5, :cond_e3

    invoke-virtual {v0}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_e3

    .line 1520
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "week date is unsupported by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1518
    .end local v5    # "weekDate":Z
    :cond_df
    const/4 v5, 0x0

    .restart local v5    # "weekDate":Z
    goto :goto_b9

    .line 1517
    .end local v5    # "weekDate":Z
    :cond_e1
    const/4 v5, 0x0

    .restart local v5    # "weekDate":Z
    goto :goto_b9

    .line 1525
    :cond_e3
    const/4 v4, 0x2

    .local v4, "stamp":I
    :goto_e4
    iget v7, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ge v4, v7, :cond_102

    .line 1526
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_e9
    iget v7, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-gt v3, v7, :cond_fc

    .line 1527
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v7, v7, v3

    if-ne v7, v4, :cond_ff

    .line 1528
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    add-int/lit8 v8, v3, 0x12

    aget v7, v7, v8

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 1525
    :cond_fc
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    .line 1526
    :cond_ff
    add-int/lit8 v3, v3, 0x1

    goto :goto_e9

    .line 1534
    .end local v3    # "index":I
    :cond_102
    if-eqz v5, :cond_127

    .line 1535
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_12b

    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x15

    aget v6, v7, v8

    .line 1536
    .local v6, "weekOfYear":I
    :goto_111
    const/4 v7, 0x7

    invoke-direct {p0, v7}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 1537
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x19

    aget v1, v7, v8

    .line 1538
    .local v1, "dayOfWeek":I
    :goto_11e
    iget-object v7, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v8, 0x23

    aget v7, v7, v8

    invoke-virtual {v0, v7, v6, v1}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 1540
    .end local v1    # "dayOfWeek":I
    .end local v6    # "weekOfYear":I
    :cond_127
    invoke-virtual {v0}, Ljava/util/Calendar;->complete()V

    .line 1543
    .end local v4    # "stamp":I
    .end local v5    # "weekDate":Z
    :cond_12a
    return-object v0

    .line 1535
    .restart local v4    # "stamp":I
    .restart local v5    # "weekDate":Z
    :cond_12b
    const/4 v6, 0x1

    .restart local v6    # "weekOfYear":I
    goto :goto_111

    .line 1537
    :cond_12d
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .restart local v1    # "dayOfWeek":I
    goto :goto_11e
.end method

.method public set(II)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 1153
    if-ltz p1, :cond_6

    const/16 v0, 0x11

    if-lt p1, v0, :cond_f

    .line 1154
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "field is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_f
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "instant has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_1e
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1160
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1161
    return-object p0
.end method

.method public setCalendarType(Ljava/lang/String;)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1349
    const-string/jumbo v0, "gregorian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1350
    const-string/jumbo p1, "gregory"

    .line 1352
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getAvailableCalendarTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1353
    const-string/jumbo v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1352
    if-eqz v0, :cond_3b

    .line 1354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_3b
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 1357
    iput-object p1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1363
    :cond_41
    return-object p0

    .line 1359
    :cond_42
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calendar type override"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDate(III)Ljava/util/Calendar$Builder;
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1228
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    aput p1, v0, v2

    aput v3, v0, v3

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    aput p3, v0, v4

    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFields([I)Ljava/util/Calendar$Builder;
    .registers 8
    .param p1, "fieldValuePairs"    # [I

    .prologue
    .line 1190
    array-length v3, p1

    .line 1191
    .local v3, "len":I
    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_b

    .line 1192
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1194
    :cond_b
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1195
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "instant has been set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1197
    :cond_1a
    iget v4, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    if-gez v4, :cond_2a

    .line 1198
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "stamp counter overflow"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1200
    :cond_2a
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1201
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2f
    if-ge v2, v3, :cond_4c

    .line 1202
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget v0, p1, v2

    .line 1204
    .local v0, "field":I
    if-ltz v0, :cond_3b

    const/16 v4, 0x11

    if-lt v0, v4, :cond_44

    .line 1205
    :cond_3b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "field is invalid"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1207
    :cond_44
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    aget v4, p1, v1

    invoke-direct {p0, v0, v4}, Ljava/util/Calendar$Builder;->internalSet(II)V

    goto :goto_2f

    .line 1209
    .end local v0    # "field":I
    :cond_4c
    return-object p0
.end method

.method public setInstant(J)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # J

    .prologue
    .line 1107
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v0, :cond_a

    .line 1108
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1110
    :cond_a
    iput-wide p1, p0, Ljava/util/Calendar$Builder;->instant:J

    .line 1111
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    .line 1112
    return-object p0
.end method

.method public setInstant(Ljava/util/Date;)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # Ljava/util/Date;

    .prologue
    .line 1131
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLenient(Z)Ljava/util/Calendar$Builder;
    .registers 2
    .param p1, "lenient"    # Z

    .prologue
    .line 1325
    iput-boolean p1, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1326
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1387
    if-nez p1, :cond_8

    .line 1388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1390
    :cond_8
    iput-object p1, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1391
    return-object p0
.end method

.method public setTimeOfDay(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 1245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOfDay(IIII)Ljava/util/Calendar$Builder;
    .registers 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millis"    # I

    .prologue
    .line 1266
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 1267
    const/16 v1, 0xd

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p3, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p4, v0, v1

    .line 1266
    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 1307
    if-nez p1, :cond_8

    .line 1308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1310
    :cond_8
    iput-object p1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1311
    return-object p0
.end method

.method public setWeekDate(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1288
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1289
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1290
    const/4 v0, 0x7

    invoke-direct {p0, v0, p3}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1291
    return-object p0
.end method

.method public setWeekDefinition(II)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "firstDayOfWeek"    # I
    .param p2, "minimalDaysInFirstWeek"    # I

    .prologue
    .line 1413
    invoke-direct {p0, p1}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1414
    invoke-direct {p0, p2}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1413
    if-eqz v0, :cond_14

    .line 1415
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1417
    :cond_14
    iput p1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    .line 1418
    iput p2, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    .line 1419
    return-object p0
.end method
