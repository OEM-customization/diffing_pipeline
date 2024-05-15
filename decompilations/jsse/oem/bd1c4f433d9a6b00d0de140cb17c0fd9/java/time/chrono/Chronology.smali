.class public interface abstract Ljava/time/chrono/Chronology;
.super Ljava/lang/Object;
.source "Chronology.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/chrono/Chronology;",
        ">;"
    }
.end annotation


# direct methods
.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 178
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 180
    .local v0, "obj":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_13

    .end local v0    # "obj":Ljava/time/chrono/Chronology;
    :goto_12
    return-object v0

    .restart local v0    # "obj":Ljava/time/chrono/Chronology;
    :cond_13
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    goto :goto_12
.end method

.method public static getAvailableChronologies()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Ljava/time/chrono/AbstractChronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->of(Ljava/lang/String;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 225
    invoke-static {p0}, Ljava/time/chrono/AbstractChronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 708
    check-cast p1, Ljava/time/chrono/Chronology;

    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    return v0
.end method

.method public abstract compareTo(Ljava/time/chrono/Chronology;)I
.end method

.method public abstract date(III)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 312
    invoke-interface {p0, p1, p2}, Ljava/time/chrono/Chronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3, p4}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public abstract dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .prologue
    .line 386
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .prologue
    .line 424
    const-string/jumbo v0, "clock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 425
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 406
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/chrono/Chronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 343
    invoke-interface {p0, p1, p2}, Ljava/time/chrono/Chronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-interface {p0, v0, p3}, Ljava/time/chrono/Chronology;->dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract eraOf(I)Ljava/time/chrono/Era;
.end method

.method public abstract eras()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendarType()Ljava/lang/String;
.end method

.method public getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 634
    new-instance v0, Ljava/time/chrono/Chronology$1;

    invoke-direct {v0, p0}, Ljava/time/chrono/Chronology$1;-><init>(Ljava/time/chrono/Chronology;)V

    .line 652
    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isLeapYear(J)Z
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    :try_start_0
    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-static {p1}, Ljava/time/LocalTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    :try_end_b
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 473
    :catch_d
    move-exception v0

    .line 474
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ChronoLocalDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public period(III)Ljava/time/chrono/ChronoPeriod;
    .registers 5
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .prologue
    .line 705
    new-instance v0, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/Chronology;III)V

    return-object v0
.end method

.method public abstract prolepticYear(Ljava/time/chrono/Era;I)I
.end method

.method public abstract range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
.end method

.method public abstract resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-static {p0, p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofInstant(Ljava/time/chrono/Chronology;Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 10
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<+",
            "Ljava/time/chrono/ChronoLocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    :try_start_0
    invoke-static {p1}, Ljava/time/ZoneId;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    :try_end_3
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_3} :catch_1c

    move-result-object v4

    .line 506
    .local v4, "zone":Ljava/time/ZoneId;
    :try_start_4
    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v3

    .line 507
    .local v3, "instant":Ljava/time/Instant;
    invoke-interface {p0, v3, v4}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    :try_end_b
    .catch Ljava/time/DateTimeException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v5

    return-object v5

    .line 509
    .end local v3    # "instant":Ljava/time/Instant;
    :catch_d
    move-exception v2

    .line 510
    .local v2, "ex1":Ljava/time/DateTimeException;
    :try_start_e
    invoke-interface {p0, p1}, Ljava/time/chrono/Chronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    invoke-static {p0, v5}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v0

    .line 511
    .local v0, "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ofBest(Ljava/time/chrono/ChronoLocalDateTimeImpl;Ljava/time/ZoneId;Ljava/time/ZoneOffset;)Ljava/time/chrono/ChronoZonedDateTime;
    :try_end_1a
    .catch Ljava/time/DateTimeException; {:try_start_e .. :try_end_1a} :catch_1c

    move-result-object v5

    return-object v5

    .line 513
    .end local v0    # "cldt":Ljava/time/chrono/ChronoLocalDateTimeImpl;, "Ljava/time/chrono/ChronoLocalDateTimeImpl<*>;"
    .end local v2    # "ex1":Ljava/time/DateTimeException;
    .end local v4    # "zone":Ljava/time/ZoneId;
    :catch_1c
    move-exception v1

    .line 514
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
