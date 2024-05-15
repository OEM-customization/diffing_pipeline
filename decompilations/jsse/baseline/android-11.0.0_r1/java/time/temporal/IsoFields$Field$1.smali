.class final enum Ljava/time/temporal/IsoFields$Field$1;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4

    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$1;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 11
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

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

    move-result-wide v3

    sub-long v5, p2, v0

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public whitelist core-platform-api test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 293
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 9
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 326
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 329
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 330
    .local v0, "doy":I
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 331
    .local v1, "moy":I
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 332
    .local v2, "year":J
    # getter for: Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I
    invoke-static {}, Ljava/time/temporal/IsoFields$Field;->access$200()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x3

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v6, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    add-int/2addr v5, v6

    aget v4, v4, v5

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    .line 327
    .end local v0    # "doy":I
    .end local v1    # "moy":I
    .end local v2    # "year":J
    :cond_32
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 297
    sget-object v0, Ljava/time/temporal/IsoFields;->QUARTER_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 305
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 306
    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    # invokes: Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z
    invoke-static {p1}, Ljava/time/temporal/IsoFields$Field;->access$100(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 305
    :goto_21
    return v0
.end method

.method public whitelist core-platform-api test-api range()Ljava/time/temporal/ValueRange;
    .registers 7

    .line 301
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 11
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 310
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 313
    sget-object v0, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 314
    .local v0, "qoy":J
    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x5b

    if-nez v4, :cond_2e

    .line 315
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v7

    .line 316
    .local v7, "year":J
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v4, v7, v8}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {v2, v3, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_2d

    :cond_27
    const-wide/16 v4, 0x5a

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_2d
    return-object v2

    .line 317
    .end local v7    # "year":J
    :cond_2e
    const-wide/16 v7, 0x2

    cmp-long v4, v0, v7

    if-nez v4, :cond_39

    .line 318
    invoke-static {v2, v3, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 319
    :cond_39
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4b

    const-wide/16 v4, 0x4

    cmp-long v4, v0, v4

    if-nez v4, :cond_46

    goto :goto_4b

    .line 322
    :cond_46
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 320
    :cond_4b
    :goto_4b
    const-wide/16 v4, 0x5c

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 311
    .end local v0    # "qoy":J
    :cond_52
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 16
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 345
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 346
    .local v0, "yearLong":Ljava/lang/Long;
    sget-object v1, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 347
    .local v1, "qoyLong":Ljava/lang/Long;
    if-eqz v0, :cond_9b

    if-nez v1, :cond_16

    goto/16 :goto_9b

    .line 350
    :cond_16
    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 351
    .local v2, "y":I
    sget-object v3, Ljava/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 352
    .local v3, "doq":J
    # invokes: Ljava/time/temporal/IsoFields$Field;->ensureIso(Ljava/time/temporal/TemporalAccessor;)V
    invoke-static {p2}, Ljava/time/temporal/IsoFields$Field;->access$300(Ljava/time/temporal/TemporalAccessor;)V

    .line 354
    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    if-ne p3, v5, :cond_51

    .line 355
    invoke-static {v2, v8, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    .line 356
    .local v5, "date":Ljava/time/LocalDate;
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    goto :goto_89

    .line 358
    .end local v5    # "date":Ljava/time/LocalDate;
    :cond_51
    sget-object v5, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v5}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v11, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v5, v9, v10, v11}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    .line 359
    .local v5, "qoy":I
    add-int/lit8 v9, v5, -0x1

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v9, v8

    invoke-static {v2, v9, v8}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    .line 360
    .local v8, "date":Ljava/time/LocalDate;
    cmp-long v9, v3, v6

    if-ltz v9, :cond_74

    const-wide/16 v9, 0x5a

    cmp-long v9, v3, v9

    if-lez v9, :cond_87

    .line 361
    :cond_74
    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne p3, v9, :cond_80

    .line 362
    invoke-virtual {p0, v8}, Ljava/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v3, v4, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    goto :goto_87

    .line 364
    :cond_80
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$1;->range()Ljava/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v3, v4, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 367
    :cond_87
    :goto_87
    sub-long/2addr v3, v6

    move-object v5, v8

    .line 369
    .end local v8    # "date":Ljava/time/LocalDate;
    .local v5, "date":Ljava/time/LocalDate;
    :goto_89
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v6, Ljava/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-interface {p1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {v5, v3, v4}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6

    .line 348
    .end local v2    # "y":I
    .end local v3    # "doq":J
    .end local v5    # "date":Ljava/time/LocalDate;
    :cond_9b
    :goto_9b
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic whitelist core-platform-api test-api resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 4

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 376
    const-string v0, "DayOfQuarter"

    return-object v0
.end method
