.class public final Ljava/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 5
    .param p0, "ordinal"    # I
    .param p1, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string/jumbo v1, "dayOfWeek"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 349
    .local v0, "dowValue":I
    if-ltz p0, :cond_13

    .line 350
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;

    invoke-direct {v1, v2, v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;-><init>(BII)V

    return-object v1

    .line 358
    :cond_13
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$3;-><init>(BII)V

    return-object v1
.end method

.method public static firstDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$0:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 166
    return-object v0
.end method

.method public static firstDayOfNextMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$1:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 209
    return-object v0
.end method

.method public static firstDayOfNextYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$2:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 270
    return-object v0
.end method

.method public static firstDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$3:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 230
    return-object v0
.end method

.method public static firstInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_10273(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 251
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_10953(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    const-wide/16 v2, 0x1

    .line 270
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_15151(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 13
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    const-wide/16 v8, 0x1

    .line 351
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v3, v8, v9}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    .line 352
    .local v2, "temp":Ljava/time/temporal/Temporal;
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 353
    .local v0, "curDow":I
    sub-int v3, p0, v0

    add-int/lit8 v3, v3, 0x7

    rem-int/lit8 v1, v3, 0x7

    .line 354
    .local v1, "dowDiff":I
    int-to-long v4, v1

    int-to-long v6, p1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    .line 355
    int-to-long v4, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_15513(IILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 13
    .param p0, "dowValue"    # I
    .param p1, "ordinal"    # I
    .param p2, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 359
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p2, v4}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-interface {p2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    .line 360
    .local v2, "temp":Ljava/time/temporal/Temporal;
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 361
    .local v0, "curDow":I
    sub-int v1, p0, v0

    .line 362
    .local v1, "daysDiff":I
    if-nez v1, :cond_2e

    const/4 v1, 0x0

    .line 363
    :cond_1b
    :goto_1b
    int-to-long v4, v1

    neg-int v3, p1

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 364
    int-to-long v4, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    return-object v3

    .line 362
    :cond_2e
    if-lez v1, :cond_1b

    add-int/lit8 v1, v1, -0x7

    goto :goto_1b
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_17076(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 389
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 390
    .local v0, "calDow":I
    sub-int v1, v0, p0

    .line 391
    .local v1, "daysDiff":I
    if-ltz v1, :cond_14

    rsub-int/lit8 v2, v1, 0x7

    :goto_c
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_14
    neg-int v2, v1

    goto :goto_c
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_18421(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 415
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 416
    .local v0, "calDow":I
    if-ne v0, p0, :cond_9

    .line 417
    return-object p1

    .line 419
    :cond_9
    sub-int v1, v0, p0

    .line 420
    .local v1, "daysDiff":I
    if-ltz v1, :cond_17

    rsub-int/lit8 v2, v1, 0x7

    :goto_f
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_17
    neg-int v2, v1

    goto :goto_f
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_19758(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 443
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 444
    .local v0, "calDow":I
    sub-int v1, p0, v0

    .line 445
    .local v1, "daysDiff":I
    if-ltz v1, :cond_14

    rsub-int/lit8 v2, v1, 0x7

    :goto_c
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_14
    neg-int v2, v1

    goto :goto_c
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_21123(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p0, "dowValue"    # I
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 469
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 470
    .local v0, "calDow":I
    if-ne v0, p0, :cond_9

    .line 471
    return-object p1

    .line 473
    :cond_9
    sub-int v1, p0, v0

    .line 474
    .local v1, "daysDiff":I
    if-ltz v1, :cond_17

    rsub-int/lit8 v2, v1, 0x7

    :goto_f
    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2

    :cond_17
    neg-int v2, v1

    goto :goto_f
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_6256(Ljava/util/function/UnaryOperator;Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 142
    .local p0, "dateBasedAdjuster":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/time/LocalDate;>;"
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 143
    .local v0, "input":Ljava/time/LocalDate;
    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    .line 144
    .local v1, "output":Ljava/time/LocalDate;
    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_7152(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 166
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_8020(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 189
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_8763(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    const-wide/16 v2, 0x1

    .line 209
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalAdjusters_9532(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 230
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public static lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$4:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 189
    return-object v0
.end method

.method public static lastDayOfYear()Ljava/time/temporal/TemporalAdjuster;
    .registers 1

    .prologue
    sget-object v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;->$INST$5:Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30;

    .line 251
    return-object v0
.end method

.method public static lastInMonth(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 311
    const/4 v0, -0x1

    invoke-static {v0, p0}, Ljava/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method public static next(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 4
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 388
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;-><init>(BI)V

    return-object v1
.end method

.method public static nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 4
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 414
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;-><init>(BI)V

    return-object v1
.end method

.method public static ofDateAdjuster(Ljava/util/function/UnaryOperator;)Ljava/time/temporal/TemporalAdjuster;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<",
            "Ljava/time/LocalDate;",
            ">;)",
            "Ljava/time/temporal/TemporalAdjuster;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "dateBasedAdjuster":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/time/LocalDate;>;"
    const-string/jumbo v0, "dateBasedAdjuster"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;

    invoke-direct {v0, p0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static previous(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 4
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 442
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;-><init>(BI)V

    return-object v1
.end method

.method public static previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;
    .registers 4
    .param p0, "dayOfWeek"    # Ljava/time/DayOfWeek;

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 468
    .local v0, "dowValue":I
    new-instance v1, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;-><init>(BI)V

    return-object v1
.end method
