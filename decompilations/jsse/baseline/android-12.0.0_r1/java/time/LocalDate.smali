.class public final Ljava/time/LocalDate;
.super Ljava/lang/Object;
.source "LocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field static final greylist-max-o DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final greylist-max-o DAYS_PER_CYCLE:I = 0x23ab1

.field public static final whitelist test-api MAX:Ljava/time/LocalDate;

.field public static final whitelist test-api MIN:Ljava/time/LocalDate;

.field private static final whitelist serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final greylist-max-o day:S

.field private final greylist-max-o month:S

.field private final greylist-max-o year:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 138
    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    .line 143
    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    return-void
.end method

.method private constructor greylist-max-o <init>(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Ljava/time/LocalDate;->year:I

    .line 464
    int-to-short v0, p2

    iput-short v0, p0, Ljava/time/LocalDate;->month:S

    .line 465
    int-to-short v0, p3

    iput-short v0, p0, Ljava/time/LocalDate;->day:S

    .line 466
    return-void
.end method

.method private static greylist-max-o create(III)Ljava/time/LocalDate;
    .registers 9
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 408
    const/16 v0, 0x1c

    if-le p2, v0, :cond_67

    .line 409
    const/16 v1, 0x1f

    .line 410
    .local v1, "dom":I
    const/16 v2, 0x1d

    sparse-switch p1, :sswitch_data_6e

    goto :goto_1b

    .line 418
    :sswitch_c
    const/16 v1, 0x1e

    goto :goto_1b

    .line 412
    :sswitch_f
    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_19

    move v0, v2

    :cond_19
    move v1, v0

    .line 413
    nop

    .line 421
    :goto_1b
    if-le p2, v1, :cond_67

    .line 422
    if-ne p2, v2, :cond_3b

    .line 423
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'February 29\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_3b
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    .end local v1    # "dom":I
    :cond_67
    new-instance v0, Ljava/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    nop

    :sswitch_data_6e
    .sparse-switch
        0x2 -> :sswitch_f
        0x4 -> :sswitch_c
        0x6 -> :sswitch_c
        0x9 -> :sswitch_c
        0xb -> :sswitch_c
    .end sparse-switch
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 358
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    .line 360
    .local v0, "date":Ljava/time/LocalDate;
    if-eqz v0, :cond_12

    .line 364
    return-object v0

    .line 361
    :cond_12
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o get0(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 659
    sget-object v0, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_7c

    .line 674
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :pswitch_26
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1

    .line 671
    :pswitch_2d
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0

    .line 669
    :pswitch_30
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :pswitch_38
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0

    .line 667
    :pswitch_3b
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 665
    :pswitch_44
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :pswitch_4c
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 661
    :pswitch_55
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 660
    :pswitch_5c
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 670
    :pswitch_65
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_6a

    goto :goto_6c

    :cond_6a
    rsub-int/lit8 v0, v0, 0x1

    :goto_6c
    return v0

    .line 666
    :pswitch_6d
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v1

    return v0

    .line 664
    :pswitch_74
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0

    .line 663
    :pswitch_79
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_79
        :pswitch_74
        :pswitch_6d
        :pswitch_65
        :pswitch_5c
        :pswitch_55
        :pswitch_4c
        :pswitch_44
        :pswitch_3b
        :pswitch_38
        :pswitch_30
        :pswitch_2d
        :pswitch_26
    .end packed-switch
.end method

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 678
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private greylist-max-o monthsUntil(Ljava/time/LocalDate;)J
    .registers 10
    .param p1, "end"    # Ljava/time/LocalDate;

    .line 1618
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1619
    .local v0, "packed1":J
    invoke-direct {p1}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long/2addr v4, v2

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1620
    .local v4, "packed2":J
    sub-long v6, v4, v0

    div-long/2addr v6, v2

    return-wide v6
.end method

.method public static whitelist test-api now()Ljava/time/LocalDate;
    .registers 1

    .line 186
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/LocalDate;
    .registers 8
    .param p0, "clock"    # Ljava/time/Clock;

    .line 216
    const-string v0, "clock"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    .line 219
    .local v0, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 220
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 221
    .local v2, "epochSec":J
    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v4

    .line 222
    .local v4, "epochDay":J
    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 202
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(III)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .line 260
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 261
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 262
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 263
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(ILjava/time/Month;I)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I

    .line 240
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 241
    const-string v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 243
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofEpochDay(J)Ljava/time/LocalDate;
    .registers 23
    .param p0, "epochDay"    # J

    .line 308
    const-wide/32 v0, 0xafaa8

    add-long v0, p0, v0

    .line 310
    .local v0, "zeroDay":J
    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    .line 311
    const-wide/16 v2, 0x0

    .line 312
    .local v2, "adjust":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x1

    const-wide/32 v9, 0x23ab1

    const-wide/16 v11, 0x190

    if-gez v6, :cond_20

    .line 314
    add-long v13, v0, v7

    div-long/2addr v13, v9

    sub-long/2addr v13, v7

    .line 315
    .local v13, "adjustCycles":J
    mul-long v2, v13, v11

    .line 316
    neg-long v7, v13

    mul-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 318
    .end local v13    # "adjustCycles":J
    :cond_20
    mul-long v6, v0, v11

    const-wide/16 v13, 0x24f

    add-long/2addr v6, v13

    div-long/2addr v6, v9

    .line 319
    .local v6, "yearEst":J
    const-wide/16 v8, 0x16d

    mul-long v13, v6, v8

    const-wide/16 v15, 0x4

    div-long v17, v6, v15

    add-long v13, v13, v17

    const-wide/16 v17, 0x64

    div-long v19, v6, v17

    sub-long v13, v13, v19

    div-long v19, v6, v11

    add-long v13, v13, v19

    sub-long v13, v0, v13

    .line 320
    .local v13, "doyEst":J
    cmp-long v4, v13, v4

    if-gez v4, :cond_4f

    .line 322
    const-wide/16 v4, 0x1

    sub-long/2addr v6, v4

    .line 323
    mul-long/2addr v8, v6

    div-long v4, v6, v15

    add-long/2addr v8, v4

    div-long v4, v6, v17

    sub-long/2addr v8, v4

    div-long v4, v6, v11

    add-long/2addr v8, v4

    sub-long v13, v0, v8

    .line 325
    :cond_4f
    add-long/2addr v6, v2

    .line 326
    long-to-int v4, v13

    .line 329
    .local v4, "marchDoy0":I
    mul-int/lit8 v5, v4, 0x5

    add-int/lit8 v5, v5, 0x2

    div-int/lit16 v5, v5, 0x99

    .line 330
    .local v5, "marchMonth0":I
    add-int/lit8 v8, v5, 0x2

    rem-int/lit8 v8, v8, 0xc

    add-int/lit8 v8, v8, 0x1

    .line 331
    .local v8, "month":I
    mul-int/lit16 v9, v5, 0x132

    add-int/lit8 v9, v9, 0x5

    div-int/lit8 v9, v9, 0xa

    sub-int v9, v4, v9

    add-int/lit8 v9, v9, 0x1

    .line 332
    .local v9, "dom":I
    div-int/lit8 v10, v5, 0xa

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 335
    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v10

    .line 336
    .local v10, "year":I
    new-instance v11, Ljava/time/LocalDate;

    invoke-direct {v11, v10, v8, v9}, Ljava/time/LocalDate;-><init>(III)V

    return-object v11
.end method

.method public static whitelist test-api ofYearDay(II)Ljava/time/LocalDate;
    .registers 8
    .param p0, "year"    # I
    .param p1, "dayOfYear"    # I

    .line 280
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 281
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 282
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    .line 283
    .local v0, "leap":Z
    const/16 v1, 0x16e

    if-ne p1, v1, :cond_36

    if-eqz v0, :cond_1a

    goto :goto_36

    .line 284
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_36
    :goto_36
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    .line 287
    .local v1, "moy":Ljava/time/Month;
    invoke-virtual {v1, v0}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Ljava/time/Month;->length(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 288
    .local v2, "monthEnd":I
    if-le p1, v2, :cond_53

    .line 289
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v1

    .line 291
    :cond_53
    invoke-virtual {v1, v0}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    .line 292
    .local v3, "dom":I
    new-instance v4, Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/Month;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v3}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 379
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 393
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    sget-object v0, Ljava/time/LocalDate$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/LocalDate$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2070
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2071
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2072
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    .line 2073
    .local v2, "dayOfMonth":I
    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    return-object v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 2060
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o resolvePreviousValid(III)Ljava/time/LocalDate;
    .registers 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .line 441
    sparse-switch p1, :sswitch_data_24

    goto :goto_1e

    .line 449
    :sswitch_4
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1e

    .line 443
    :sswitch_b
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x1d

    goto :goto_19

    :cond_17
    const/16 v0, 0x1c

    :goto_19
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 444
    nop

    .line 452
    :goto_1e
    new-instance v0, Ljava/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_4
        0x6 -> :sswitch_4
        0x9 -> :sswitch_4
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 2050
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 1544
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atStartOfDay()Ljava/time/LocalDateTime;
    .registers 2

    .line 1782
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .registers 6
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1806
    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1809
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1810
    .local v0, "ldt":Ljava/time/LocalDateTime;
    instance-of v1, p1, Ljava/time/ZoneOffset;

    if-nez v1, :cond_23

    .line 1811
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 1812
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1813
    .local v2, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1814
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1817
    .end local v1    # "rules":Ljava/time/zone/ZoneRules;
    .end local v2    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_23
    invoke-static {v0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api atTime(II)Ljava/time/LocalDateTime;
    .registers 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 1718
    invoke-static {p1, p2}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(III)Ljava/time/LocalDateTime;
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .line 1737
    invoke-static {p1, p2, p3}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(IIII)Ljava/time/LocalDateTime;
    .registers 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .line 1756
    invoke-static {p1, p2, p3, p4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .registers 3
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 1700
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atTime(Ljava/time/OffsetTime;)Ljava/time/OffsetDateTime;
    .registers 4
    .param p1, "time"    # Ljava/time/OffsetTime;

    .line 1769
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 131
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1860
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_c

    .line 1861
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    return v0

    .line 1863
    :cond_c
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method greylist-max-o compareTo0(Ljava/time/LocalDate;)I
    .registers 5
    .param p1, "otherDate"    # Ljava/time/LocalDate;

    .line 1867
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget v1, p1, Ljava/time/LocalDate;->year:I

    sub-int/2addr v0, v1

    .line 1868
    .local v0, "cmp":I
    if-nez v0, :cond_15

    .line 1869
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p1, Ljava/time/LocalDate;->month:S

    sub-int v0, v1, v2

    .line 1870
    if-nez v0, :cond_15

    .line 1871
    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    iget-short v2, p1, Ljava/time/LocalDate;->day:S

    sub-int v0, v1, v2

    .line 1874
    :cond_15
    return v0
.end method

.method greylist-max-o daysUntil(Ljava/time/LocalDate;)J
    .registers 6
    .param p1, "end"    # Ljava/time/LocalDate;

    .line 1614
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1979
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1980
    return v0

    .line 1982
    :cond_4
    instance-of v1, p1, Ljava/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1983
    move-object v1, p1

    check-cast v1, Ljava/time/LocalDate;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 1985
    :cond_15
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1684
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1685
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 615
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_9

    .line 616
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 618
    :cond_9
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 131
    invoke-virtual {p0}, Ljava/time/LocalDate;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/IsoChronology;
    .registers 2

    .line 694
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public whitelist test-api getDayOfMonth()I
    .registers 2

    .line 771
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0
.end method

.method public whitelist test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 5

    .line 799
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    .line 800
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getDayOfYear()I
    .registers 3

    .line 782
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api getEra()Ljava/time/chrono/Era;
    .registers 2

    .line 717
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 646
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_1c

    .line 647
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 648
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 650
    :cond_d
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_16

    .line 651
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 653
    :cond_16
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 655
    :cond_1c
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 760
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 745
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 731
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 1995
    iget v0, p0, Ljava/time/LocalDate;->year:I

    .line 1996
    .local v0, "yearValue":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    .line 1997
    .local v1, "monthValue":I
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    .line 1998
    .local v2, "dayValue":I
    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v4, v0, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    xor-int/2addr v3, v4

    return v3
.end method

.method public whitelist test-api isAfter(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1900
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 1901
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1903
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1929
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 1930
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1932
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isEqual(Ljava/time/chrono/ChronoLocalDate;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1958
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_11

    .line 1959
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 1961
    :cond_11
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 824
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 506
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 3
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 540
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 2

    .line 837
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    sparse-switch v0, :sswitch_data_18

    .line 846
    const/16 v0, 0x1f

    return v0

    .line 844
    :sswitch_8
    const/16 v0, 0x1e

    return v0

    .line 839
    :sswitch_b
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    goto :goto_16

    :cond_14
    const/16 v0, 0x1c

    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_b
        0x4 -> :sswitch_8
        0x6 -> :sswitch_8
        0x9 -> :sswitch_8
        0xb -> :sswitch_8
    .end sparse-switch
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 2

    .line 859
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1400
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .registers 6
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 1371
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_19

    .line 1372
    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1373
    .local v0, "periodToSubtract":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->minusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1375
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_19
    const-string v0, "amountToSubtract"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusDays(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 1487
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 1449
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusWeeks(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "weeksToSubtract"    # J

    .line 1468
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 1425
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .registers 8
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1229
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_6f

    .line 1230
    move-object v0, p3

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1231
    .local v0, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 1241
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1239
    :pswitch_29
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1238
    :pswitch_3a
    const/16 v1, 0x3e8

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1237
    :pswitch_45
    const/16 v1, 0x64

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1236
    :pswitch_50
    const/16 v1, 0xa

    invoke-static {p1, p2, v1}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1235
    :pswitch_5b
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1234
    :pswitch_60
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1233
    :pswitch_65
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1232
    :pswitch_6a
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1243
    .end local v0    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_6f
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .registers 6
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 1138
    instance-of v0, p1, Ljava/time/Period;

    if-eqz v0, :cond_19

    .line 1139
    move-object v0, p1

    check-cast v0, Ljava/time/Period;

    .line 1140
    .local v0, "periodToAdd":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1142
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_19
    const-string v0, "amountToAdd"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1143
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusDays(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "daysToAdd"    # J

    .line 1341
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1342
    return-object p0

    .line 1344
    :cond_7
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1345
    .local v0, "mjDay":J
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/LocalDate;
    .registers 11
    .param p1, "monthsToAdd"    # J

    .line 1296
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1297
    return-object p0

    .line 1299
    :cond_7
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1300
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 1301
    .local v2, "calcMonths":J
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 1302
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorMod(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1303
    .local v5, "newMonth":I
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api plusWeeks(J)Ljava/time/LocalDate;
    .registers 5
    .param p1, "weeksToAdd"    # J

    .line 1322
    const/4 v0, 0x7

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plusYears(J)Ljava/time/LocalDate;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 1268
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1269
    return-object p0

    .line 1271
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 1272
    .local v0, "newYear":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1512
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1513
    return-object p0

    .line 1515
    :cond_7
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 569
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_74

    .line 570
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 571
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 572
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_7a

    .line 579
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 577
    :pswitch_1f
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_29

    const-wide/32 v4, 0x3b9aca00

    goto :goto_2c

    :cond_29
    const-wide/32 v4, 0x3b9ac9ff

    :goto_2c
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 575
    :pswitch_31
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    sget-object v4, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v1, v4, :cond_42

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-nez v1, :cond_42

    const-wide/16 v4, 0x4

    goto :goto_44

    :cond_42
    const-wide/16 v4, 0x5

    :goto_44
    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 574
    :pswitch_49
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 573
    :pswitch_53
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 581
    :cond_5d
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_74
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_49
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method public whitelist test-api toEpochDay()J
    .registers 13

    .line 1823
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    .line 1824
    .local v0, "y":J
    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    int-to-long v2, v2

    .line 1825
    .local v2, "m":J
    const-wide/16 v4, 0x0

    .line 1826
    .local v4, "total":J
    const-wide/16 v6, 0x16d

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 1827
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_28

    .line 1828
    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v8, v0

    const-wide/16 v10, 0x190

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_37

    .line 1830
    :cond_28
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long v8, v0, v8

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 1832
    :goto_37
    const-wide/16 v6, 0x16f

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 1833
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 1834
    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-lez v6, :cond_57

    .line 1835
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 1836
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-nez v8, :cond_57

    .line 1837
    sub-long/2addr v4, v6

    .line 1840
    :cond_57
    const-wide/32 v6, 0xafaa8

    sub-long v6, v4, v6

    return-wide v6
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 2011
    iget v0, p0, Ljava/time/LocalDate;->year:I

    .line 2012
    .local v0, "yearValue":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    .line 2013
    .local v1, "monthValue":I
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    .line 2014
    .local v2, "dayValue":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2015
    .local v3, "absYear":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2016
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_2b

    .line 2017
    if-gez v0, :cond_21

    .line 2018
    add-int/lit16 v6, v0, -0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2020
    :cond_21
    add-int/lit16 v6, v0, 0x2710

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 2023
    :cond_2b
    const/16 v6, 0x270f

    if-le v0, v6, :cond_34

    .line 2024
    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2026
    :cond_34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2028
    :goto_37
    const-string v6, "-0"

    const-string v7, "-"

    if-ge v1, v5, :cond_3f

    move-object v8, v6

    goto :goto_40

    :cond_3f
    move-object v8, v7

    :goto_40
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2030
    if-ge v2, v5, :cond_49

    goto :goto_4a

    :cond_49
    move-object v6, v7

    :goto_4a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2032
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2028
    return-object v5
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 8
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1596
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1597
    .local v0, "end":Ljava/time/LocalDate;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_6d

    .line 1598
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v2, p2

    check-cast v2, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_72

    .line 1608
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1606
    :pswitch_2d
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 1605
    :pswitch_3b
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x2ee0

    div-long/2addr v1, v3

    return-wide v1

    .line 1604
    :pswitch_43
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x4b0

    div-long/2addr v1, v3

    return-wide v1

    .line 1603
    :pswitch_4b
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x78

    div-long/2addr v1, v3

    return-wide v1

    .line 1602
    :pswitch_53
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0xc

    div-long/2addr v1, v3

    return-wide v1

    .line 1601
    :pswitch_5b
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1600
    :pswitch_60
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    const-wide/16 v3, 0x7

    div-long/2addr v1, v3

    return-wide v1

    .line 1599
    :pswitch_68
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v1

    return-wide v1

    .line 1610
    :cond_6d
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_68
        :pswitch_60
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_2d
    .end packed-switch
.end method

.method public whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;
    .registers 11
    .param p1, "endDateExclusive"    # Ljava/time/chrono/ChronoLocalDate;

    .line 1657
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1658
    .local v0, "end":Ljava/time/LocalDate;
    invoke-direct {v0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1659
    .local v1, "totalMonths":J
    iget-short v3, v0, Ljava/time/LocalDate;->day:S

    iget-short v4, p0, Ljava/time/LocalDate;->day:S

    sub-int/2addr v3, v4

    .line 1660
    .local v3, "days":I
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    const-wide/16 v7, 0x1

    if-lez v6, :cond_2c

    if-gez v3, :cond_2c

    .line 1661
    sub-long/2addr v1, v7

    .line 1662
    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v4

    .line 1663
    .local v4, "calcDate":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 1664
    .end local v4    # "calcDate":Ljava/time/LocalDate;
    :cond_2b
    goto :goto_38

    :cond_2c
    cmp-long v4, v1, v4

    if-gez v4, :cond_2b

    if-lez v3, :cond_2b

    .line 1665
    add-long/2addr v1, v7

    .line 1666
    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1668
    :goto_38
    const-wide/16 v4, 0xc

    div-long v6, v1, v4

    .line 1669
    .local v6, "years":J
    rem-long v4, v1, v4

    long-to-int v4, v4

    .line 1670
    .local v4, "months":I
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    invoke-static {v5, v4, v3}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic whitelist test-api until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 903
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_8

    .line 904
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    .line 906
    :cond_8
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 1015
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_bc

    .line 1016
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 1017
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1018
    sget-object v1, Ljava/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_c4

    .line 1033
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1031
    :pswitch_2d
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_39

    move-object v1, p0

    goto :goto_40

    :cond_39
    iget v1, p0, Ljava/time/LocalDate;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    :goto_40
    return-object v1

    .line 1030
    :pswitch_41
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1028
    :pswitch_47
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1027
    :pswitch_52
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1026
    :pswitch_58
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1024
    :pswitch_65
    invoke-static {p2, p3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1021
    :pswitch_6a
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1020
    :pswitch_77
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1019
    :pswitch_84
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1029
    :pswitch_94
    iget v1, p0, Ljava/time/LocalDate;->year:I

    if-lt v1, v2, :cond_9a

    move-wide v1, p2

    goto :goto_9d

    :cond_9a
    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    :goto_9d
    long-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1025
    :pswitch_a3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1023
    :pswitch_b0
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1022
    :pswitch_b6
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1035
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_bc
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b0
        :pswitch_a3
        :pswitch_94
        :pswitch_84
        :pswitch_77
        :pswitch_6a
        :pswitch_65
        :pswitch_58
        :pswitch_52
        :pswitch_47
        :pswitch_41
        :pswitch_2d
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 131
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4

    .line 131
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withDayOfMonth(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1090
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    if-ne v0, p1, :cond_5

    .line 1091
    return-object p0

    .line 1093
    :cond_5
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withDayOfYear(I)Ljava/time/LocalDate;
    .registers 3
    .param p1, "dayOfYear"    # I

    .line 1109
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 1110
    return-object p0

    .line 1112
    :cond_7
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-static {v0, p1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withMonth(I)Ljava/time/LocalDate;
    .registers 5
    .param p1, "month"    # I

    .line 1070
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    if-ne v0, p1, :cond_5

    .line 1071
    return-object p0

    .line 1073
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1074
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/LocalDate;
    .registers 5
    .param p1, "year"    # I

    .line 1051
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-ne v0, p1, :cond_5

    .line 1052
    return-object p0

    .line 1054
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1055
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2064
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2065
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2066
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2067
    return-void
.end method
