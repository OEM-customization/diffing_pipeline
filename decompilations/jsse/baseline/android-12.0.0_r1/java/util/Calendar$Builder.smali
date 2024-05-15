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
.field private static final greylist-max-o NFIELDS:I = 0x12

.field private static final greylist-max-o WEEK_YEAR:I = 0x11


# instance fields
.field private greylist-max-o fields:[I

.field private greylist-max-o firstDayOfWeek:I

.field private greylist-max-o instant:J

.field private greylist-max-o lenient:Z

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o maxFieldIndex:I

.field private greylist-max-o minimalDaysInFirstWeek:I

.field private greylist-max-o nextStamp:I

.field private greylist-max-o type:Ljava/lang/String;

.field private greylist-max-o zone:Ljava/util/TimeZone;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 1090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1091
    return-void
.end method

.method private greylist-max-o allocateFields()V
    .registers 2

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

.method private greylist-max-o internalSet(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1555
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    aput v1, v0, p1

    .line 1556
    if-ltz v2, :cond_1b

    .line 1559
    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 1560
    iget v0, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-le p1, v0, :cond_1a

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1a

    .line 1561
    iput p1, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    .line 1563
    :cond_1a
    return-void

    .line 1557
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stamp counter overflow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isInstantSet()Z
    .registers 3

    .line 1566
    iget v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private greylist-max-o isSet(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 1570
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v0, :cond_a

    aget v0, v0, p1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o isValidWeekParameter(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 1574
    if-lez p1, :cond_7

    const/4 v0, 0x7

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist test-api build()Ljava/util/Calendar;
    .registers 8

    .line 1457
    iget-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    if-nez v0, :cond_a

    .line 1458
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1460
    :cond_a
    iget-object v0, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    if-nez v0, :cond_14

    .line 1461
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1464
    :cond_14
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 1465
    iget-object v0, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1467
    :cond_22
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    const-string v1, "gregory"

    if-nez v0, :cond_2a

    .line 1478
    iput-object v1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    .line 1481
    :cond_2a
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_12e

    :cond_36
    goto :goto_48

    :sswitch_37
    const-string v1, "iso8601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v2, v5

    goto :goto_48

    :sswitch_41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v2, v4

    :goto_48
    packed-switch v2, :pswitch_data_138

    .line 1503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1486
    :pswitch_64
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v2, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    .line 1488
    .local v0, "gcal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1490
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar$Builder;->setWeekDefinition(II)Ljava/util/Calendar$Builder;

    .line 1491
    move-object v1, v0

    .line 1492
    .local v1, "cal":Ljava/util/Calendar;
    goto :goto_89

    .line 1483
    .end local v0    # "gcal":Ljava/util/GregorianCalendar;
    .end local v1    # "cal":Ljava/util/Calendar;
    :pswitch_7e
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    iget-object v2, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V

    move-object v1, v0

    .line 1484
    .restart local v1    # "cal":Ljava/util/Calendar;
    nop

    .line 1505
    :goto_89
    iget-boolean v0, p0, Ljava/util/Calendar$Builder;->lenient:Z

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 1506
    iget v0, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    if-eqz v0, :cond_9a

    .line 1507
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1508
    iget v0, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1510
    :cond_9a
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 1511
    iget-wide v2, p0, Ljava/util/Calendar$Builder;->instant:J

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1512
    invoke-virtual {v1}, Ljava/util/Calendar;->complete()V

    .line 1513
    return-object v1

    .line 1516
    :cond_a9
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-eqz v0, :cond_12d

    .line 1517
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v0, v2, v0

    aget v2, v2, v5

    if-le v0, v2, :cond_be

    move v4, v5

    :cond_be
    move v0, v4

    .line 1519
    .local v0, "weekDate":Z
    if-eqz v0, :cond_e1

    invoke-virtual {v1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v2

    if-eqz v2, :cond_c8

    goto :goto_e1

    .line 1520
    :cond_c8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "week date is unsupported by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1525
    :cond_e1
    :goto_e1
    const/4 v2, 0x2

    .local v2, "stamp":I
    :goto_e2
    iget v3, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    if-ge v2, v3, :cond_ff

    .line 1526
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_e7
    iget v4, p0, Ljava/util/Calendar$Builder;->maxFieldIndex:I

    if-gt v3, v4, :cond_fc

    .line 1527
    iget-object v4, p0, Ljava/util/Calendar$Builder;->fields:[I

    aget v6, v4, v3

    if-ne v6, v2, :cond_f9

    .line 1528
    add-int/lit8 v6, v3, 0x12

    aget v4, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1529
    goto :goto_fc

    .line 1526
    :cond_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_e7

    .line 1525
    .end local v3    # "index":I
    :cond_fc
    :goto_fc
    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    .line 1534
    .end local v2    # "stamp":I
    :cond_ff
    if-eqz v0, :cond_12a

    .line 1535
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_10e

    iget-object v2, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v3, 0x15

    aget v5, v2, v3

    :cond_10e
    move v2, v5

    .line 1536
    .local v2, "weekOfYear":I
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Ljava/util/Calendar$Builder;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 1537
    iget-object v3, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v4, 0x19

    aget v3, v3, v4

    goto :goto_121

    :cond_11d
    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 1538
    .local v3, "dayOfWeek":I
    :goto_121
    iget-object v4, p0, Ljava/util/Calendar$Builder;->fields:[I

    const/16 v5, 0x23

    aget v4, v4, v5

    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 1540
    .end local v2    # "weekOfYear":I
    .end local v3    # "dayOfWeek":I
    :cond_12a
    invoke-virtual {v1}, Ljava/util/Calendar;->complete()V

    .line 1543
    .end local v0    # "weekDate":Z
    :cond_12d
    return-object v1

    :sswitch_data_12e
    .sparse-switch
        0x10ea1509 -> :sswitch_41
        0x7ce21384 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_64
    .end packed-switch
.end method

.method public whitelist test-api set(II)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1153
    if-ltz p1, :cond_1b

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1b

    .line 1156
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1159
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1160
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1161
    return-object p0

    .line 1157
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "instant has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "field is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setCalendarType(Ljava/lang/String;)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .line 1349
    const-string v0, "gregorian"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1350
    const-string p1, "gregory"

    .line 1352
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getAvailableCalendarTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1353
    const-string v0, "iso8601"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_34

    .line 1354
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown calendar type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_34
    :goto_34
    iget-object v0, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 1357
    iput-object p1, p0, Ljava/util/Calendar$Builder;->type:Ljava/lang/String;

    goto :goto_41

    .line 1359
    :cond_3b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1363
    :goto_41
    return-object p0

    .line 1360
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calendar type override"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDate(III)Ljava/util/Calendar$Builder;
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 1228
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    aput p1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x5

    aput v2, v0, v1

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api setFields([I)Ljava/util/Calendar$Builder;
    .registers 7
    .param p1, "fieldValuePairs"    # [I

    .line 1190
    array-length v0, p1

    .line 1191
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_44

    .line 1194
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->isInstantSet()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 1197
    iget v1, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    if-ltz v1, :cond_34

    .line 1200
    invoke-direct {p0}, Ljava/util/Calendar$Builder;->allocateFields()V

    .line 1201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_33

    .line 1202
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget v1, p1, v1

    .line 1204
    .local v1, "field":I
    if-ltz v1, :cond_2b

    const/16 v3, 0x11

    if-ge v1, v3, :cond_2b

    .line 1207
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Ljava/util/Calendar$Builder;->internalSet(II)V

    .line 1208
    .end local v1    # "field":I
    move v1, v3

    goto :goto_16

    .line 1205
    .end local v3    # "i":I
    .restart local v1    # "field":I
    .restart local v2    # "i":I
    :cond_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "field is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1209
    .end local v1    # "field":I
    .end local v2    # "i":I
    :cond_33
    return-object p0

    .line 1198
    :cond_34
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "stamp counter overflow"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1195
    :cond_3c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "instant has been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1192
    :cond_44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public whitelist test-api setInstant(J)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # J

    .line 1107
    iget-object v0, p0, Ljava/util/Calendar$Builder;->fields:[I

    if-nez v0, :cond_a

    .line 1110
    iput-wide p1, p0, Ljava/util/Calendar$Builder;->instant:J

    .line 1111
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/Calendar$Builder;->nextStamp:I

    .line 1112
    return-object p0

    .line 1108
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInstant(Ljava/util/Date;)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "instant"    # Ljava/util/Date;

    .line 1131
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar$Builder;->setInstant(J)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setLenient(Z)Ljava/util/Calendar$Builder;
    .registers 2
    .param p1, "lenient"    # Z

    .line 1325
    iput-boolean p1, p0, Ljava/util/Calendar$Builder;->lenient:Z

    .line 1326
    return-object p0
.end method

.method public whitelist test-api setLocale(Ljava/util/Locale;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1387
    if-eqz p1, :cond_5

    .line 1390
    iput-object p1, p0, Ljava/util/Calendar$Builder;->locale:Ljava/util/Locale;

    .line 1391
    return-object p0

    .line 1388
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setTimeOfDay(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 1245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/Calendar$Builder;->setTimeOfDay(IIII)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setTimeOfDay(IIII)Ljava/util/Calendar$Builder;
    .registers 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "millis"    # I

    .line 1266
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar$Builder;->setFields([I)Ljava/util/Calendar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)Ljava/util/Calendar$Builder;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 1307
    if-eqz p1, :cond_5

    .line 1310
    iput-object p1, p0, Ljava/util/Calendar$Builder;->zone:Ljava/util/TimeZone;

    .line 1311
    return-object p0

    .line 1308
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setWeekDate(III)Ljava/util/Calendar$Builder;
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

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

.method public whitelist test-api setWeekDefinition(II)Ljava/util/Calendar$Builder;
    .registers 4
    .param p1, "firstDayOfWeek"    # I
    .param p2, "minimalDaysInFirstWeek"    # I

    .line 1413
    invoke-direct {p0, p1}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1414
    invoke-direct {p0, p2}, Ljava/util/Calendar$Builder;->isValidWeekParameter(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1417
    iput p1, p0, Ljava/util/Calendar$Builder;->firstDayOfWeek:I

    .line 1418
    iput p2, p0, Ljava/util/Calendar$Builder;->minimalDaysInFirstWeek:I

    .line 1419
    return-object p0

    .line 1415
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
