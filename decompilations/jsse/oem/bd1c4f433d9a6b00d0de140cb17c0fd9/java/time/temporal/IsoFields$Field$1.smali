.class final enum Ljava/time/temporal/IsoFields$Field$1;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$Field;)V

    .line 1
    return-void
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 12
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    .line 339
    .local v0, "curValue":J
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 340
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long v6, p2, v0

    add-long/2addr v4, v6

    invoke-interface {p1, v2, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 293
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 9
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 327
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_f
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 330
    .local v0, "doy":I
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 331
    .local v1, "moy":I
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 332
    .local v2, "year":J
    invoke-static {}, Ljava/time/temporal/IsoFields$Field;->-get0()[I

    move-result-object v5

    add-int/lit8 v4, v1, -0x1

    div-int/lit8 v6, v4, 0x3

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x4

    :goto_32
    add-int/2addr v4, v6

    aget v4, v5, v4

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    :cond_39
    const/4 v4, 0x0

    goto :goto_32
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 297
    sget-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 305
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 306
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_1d

    .line 306
    invoke-static {p1}, Ljava/time/temporal/IsoFields$Field;->-wrap0(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    .line 305
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .registers 7

    .prologue
    .line 301
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 12
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    const-wide/16 v8, 0x5b

    const-wide/16 v6, 0x1

    .line 310
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 311
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v5, "Unsupported field: DayOfQuarter"

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_13
    sget-object v4, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 314
    .local v0, "qoy":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_37

    .line 315
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 316
    .local v2, "year":J
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    :goto_2f
    return-object v4

    :cond_30
    const-wide/16 v4, 0x5a

    invoke-static {v6, v7, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    goto :goto_2f

    .line 317
    .end local v2    # "year":J
    :cond_37
    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    .line 318
    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 319
    :cond_42
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4e

    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_55

    .line 320
    :cond_4e
    const-wide/16 v4, 0x5c

    invoke-static {v6, v7, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 322
    :cond_55
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 346
    .local v6, "yearLong":Ljava/lang/Long;
    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 347
    .local v4, "qoyLong":Ljava/lang/Long;
    if-eqz v6, :cond_14

    if-nez v4, :cond_16

    .line 348
    :cond_14
    const/4 v7, 0x0

    return-object v7

    .line 350
    :cond_16
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 351
    .local v5, "y":I
    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 352
    .local v2, "doq":J
    invoke-static {p2}, Ljava/time/temporal/IsoFields$Field;->-wrap5(Ljava/time/temporal/TemporalAccessor;)V

    .line 354
    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p3, v7, :cond_65

    .line 355
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 356
    .local v0, "date":Ljava/time/LocalDate;
    const-wide/16 v8, 0x1

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    .line 369
    :goto_53
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    return-object v7

    .line 358
    .end local v0    # "date":Ljava/time/LocalDate;
    :cond_65
    sget-object v7, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v7}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 359
    .local v1, "qoy":I
    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 360
    .restart local v0    # "date":Ljava/time/LocalDate;
    const-wide/16 v8, 0x1

    cmp-long v7, v2, v8

    if-ltz v7, :cond_8c

    const-wide/16 v8, 0x5a

    cmp-long v7, v2, v8

    if-lez v7, :cond_97

    .line 361
    :cond_8c
    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p3, v7, :cond_9b

    .line 362
    invoke-virtual {p0, v0}, Ljava/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7, v2, v3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 367
    :cond_97
    :goto_97
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    goto :goto_53

    .line 364
    :cond_9b
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7, v2, v3, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_97
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 5

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    const-string/jumbo v0, "DayOfQuarter"

    return-object v0
.end method
