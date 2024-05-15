.class final Ljava/time/format/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# instance fields
.field chrono:Ljava/time/chrono/Chronology;

.field private date:Ljava/time/chrono/ChronoLocalDate;

.field excessDays:Ljava/time/Period;

.field final fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field leapSecond:Z

.field private resolverStyle:Ljava/time/format/ResolverStyle;

.field private time:Ljava/time/LocalTime;

.field zone:Ljava/time/ZoneId;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    .line 157
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 163
    return-void
.end method

.method private crossCheck()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_9

    .line 624
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 626
    :cond_9
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_29

    .line 627
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 628
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 629
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 632
    :cond_29
    return-void
.end method

.method private crossCheck(Ljava/time/temporal/TemporalAccessor;)V
    .registers 13
    .param p1, "target"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 635
    iget-object v8, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    .line 636
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 637
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 638
    .local v2, "field":Ljava/time/temporal/TemporalField;
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 641
    :try_start_22
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_25} :catch_7a

    move-result-wide v4

    .line 645
    .local v4, "val1":J
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 646
    .local v6, "val2":J
    cmp-long v8, v4, v6

    if-eqz v8, :cond_7c

    .line 647
    new-instance v8, Ljava/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Conflict found: Field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 648
    const-string/jumbo v10, " differs from "

    .line 647
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 648
    const-string/jumbo v10, " "

    .line 647
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 648
    const-string/jumbo v10, " derived from "

    .line 647
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 642
    .end local v4    # "val1":J
    .end local v6    # "val2":J
    :catch_7a
    move-exception v1

    .local v1, "ex":Ljava/lang/RuntimeException;
    goto :goto_a

    .line 650
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "val1":J
    .restart local v6    # "val2":J
    :cond_7c
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 653
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v4    # "val1":J
    .end local v6    # "val2":J
    :cond_80
    return-void
.end method

.method private resolveDateFields()V
    .registers 4

    .prologue
    .line 351
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v0, v1, v2}, Ljava/time/chrono/Chronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 352
    return-void
.end method

.method private resolveFields()V
    .registers 11

    .prologue
    const/16 v9, 0x32

    .line 256
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 257
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 258
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    .line 262
    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_da

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "changedCount":I
    :goto_14
    if-ge v0, v9, :cond_c4

    .line 266
    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 267
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/time/temporal/TemporalField;

    .line 268
    .local v6, "targetField":Ljava/time/temporal/TemporalField;
    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v8, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v6, v7, p0, v8}, Ljava/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    .line 269
    .local v5, "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    if-eqz v5, :cond_b8

    .line 270
    instance-of v7, v5, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v7, :cond_51

    move-object v2, v5

    .line 271
    check-cast v2, Ljava/time/chrono/ChronoZonedDateTime;

    .line 272
    .local v2, "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-nez v7, :cond_6b

    .line 273
    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v7

    iput-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    .line 277
    :cond_4d
    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    .line 279
    .end local v2    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_51
    instance-of v7, v5, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v7, :cond_93

    move-object v1, v5

    .line 280
    check-cast v1, Ljava/time/chrono/ChronoLocalDateTime;

    .line 281
    .local v1, "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    sget-object v8, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v7, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 282
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    goto :goto_14

    .line 274
    .end local v1    # "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    .restart local v2    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_6b
    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v2}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 275
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 286
    .end local v2    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_93
    instance-of v7, v5, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v7, :cond_a0

    .line 287
    check-cast v5, Ljava/time/chrono/ChronoLocalDate;

    .end local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    invoke-direct {p0, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    goto/16 :goto_14

    .line 291
    .restart local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    :cond_a0
    instance-of v7, v5, Ljava/time/LocalTime;

    if-eqz v7, :cond_af

    .line 292
    check-cast v5, Ljava/time/LocalTime;

    .end local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    sget-object v7, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v5, v7}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    goto/16 :goto_14

    .line 296
    .restart local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    :cond_af
    new-instance v7, Ljava/time/DateTimeException;

    const-string/jumbo v8, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    :cond_b8
    iget-object v7, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 300
    goto/16 :goto_14

    .line 305
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    .end local v6    # "targetField":Ljava/time/temporal/TemporalField;
    :cond_c4
    if-ne v0, v9, :cond_cf

    .line 306
    new-instance v7, Ljava/time/DateTimeException;

    const-string/jumbo v8, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_cf
    if-lez v0, :cond_da

    .line 310
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 311
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 312
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    .line 315
    .end local v0    # "changedCount":I
    :cond_da
    return-void
.end method

.method private resolveFractional()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 570
    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v2, :cond_5b

    .line 571
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 572
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 571
    if-nez v2, :cond_24

    .line 573
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 570
    if-eqz v2, :cond_5b

    .line 574
    :cond_24
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 575
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 576
    .local v0, "nos":J
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    .end local v0    # "nos":J
    :cond_5b
    :goto_5b
    return-void

    .line 579
    :cond_5c
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b
.end method

.method private resolveInstant()V
    .registers 8

    .prologue
    .line 588
    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v4, :cond_2b

    iget-object v4, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v4, :cond_2b

    .line 589
    iget-object v4, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v4, :cond_2c

    .line 590
    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v5, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v4

    iget-object v5, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 591
    .local v0, "instant":J
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v0    # "instant":J
    :cond_2b
    :goto_2b
    return-void

    .line 593
    :cond_2c
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 594
    .local v3, "offsetSecs":Ljava/lang/Long;
    if-eqz v3, :cond_2b

    .line 595
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    .line 596
    .local v2, "offset":Ljava/time/ZoneOffset;
    iget-object v4, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v5, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 597
    .restart local v0    # "instant":J
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b
.end method

.method private resolveInstantFields()V
    .registers 5

    .prologue
    .line 329
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 330
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v2, :cond_14

    .line 331
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    .line 340
    :cond_13
    :goto_13
    return-void

    .line 333
    :cond_14
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 334
    .local v1, "offsetSecs":Ljava/lang/Long;
    if-eqz v1, :cond_13

    .line 335
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 336
    .local v0, "offset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    goto :goto_13
.end method

.method private resolveInstantFields0(Ljava/time/ZoneId;)V
    .registers 8
    .param p1, "selectedZone"    # Ljava/time/ZoneId;

    .prologue
    .line 343
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    .line 344
    .local v0, "instant":Ljava/time/Instant;
    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v2, v0, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    .line 345
    .local v1, "zdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 346
    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 347
    return-void
.end method

.method private resolvePeriod()V
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 562
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 563
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    iput-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 565
    :cond_1e
    return-void
.end method

.method private resolveTime(JJJJ)V
    .registers 24
    .param p1, "hod"    # J
    .param p3, "moh"    # J
    .param p5, "som"    # J
    .param p7, "nos"    # J

    .prologue
    .line 537
    iget-object v9, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v12, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v9, v12, :cond_52

    .line 538
    const-wide v12, 0x34630b8a000L

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v10

    .line 539
    .local v10, "totalNanos":J
    const-wide v12, 0xdf8475800L

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    .line 540
    const-wide/32 v12, 0x3b9aca00

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    .line 541
    move-wide/from16 v0, p7

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    .line 542
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v12

    long-to-int v2, v12

    .line 543
    .local v2, "excessDays":I
    const-wide v12, 0x4e94914f0000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    .line 544
    .local v6, "nod":J
    invoke-static {v6, v7}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v9

    invoke-static {v2}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v12

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 557
    .end local v2    # "excessDays":I
    .end local v6    # "nod":J
    .end local v10    # "totalNanos":J
    :goto_51
    return-void

    .line 546
    :cond_52
    sget-object v9, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 547
    .local v4, "mohVal":I
    sget-object v9, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p7

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 549
    .local v5, "nosVal":I
    iget-object v9, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v12, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v9, v12, :cond_83

    const-wide/16 v12, 0x18

    cmp-long v9, p1, v12

    if-nez v9, :cond_83

    if-nez v4, :cond_83

    const-wide/16 v12, 0x0

    cmp-long v9, p5, v12

    if-nez v9, :cond_83

    if-nez v5, :cond_83

    .line 550
    sget-object v9, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v12

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_51

    .line 552
    :cond_83
    sget-object v9, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 553
    .local v3, "hodVal":I
    sget-object v9, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v8

    .line 554
    .local v8, "somVal":I
    invoke-static {v3, v4, v8, v5}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v9

    sget-object v12, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v9, v12}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_51
.end method

.method private resolveTimeFields()V
    .registers 39

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 373
    .local v16, "ch":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_39

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-eqz v4, :cond_39

    .line 374
    :cond_32
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 376
    :cond_39
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x18

    cmp-long v34, v16, v34

    if-nez v34, :cond_45

    const-wide/16 v16, 0x0

    .end local v16    # "ch":J
    :cond_45
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 378
    :cond_50
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 381
    .restart local v16    # "ch":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_82

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_89

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-eqz v4, :cond_89

    .line 382
    :cond_82
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 384
    :cond_89
    sget-object v4, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    cmp-long v34, v16, v34

    if-nez v34, :cond_95

    const-wide/16 v16, 0x0

    .end local v16    # "ch":J
    :cond_95
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 386
    :cond_a0
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 388
    .local v14, "ap":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 389
    .local v22, "hap":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v4, v5, :cond_40c

    .line 390
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    move-wide/from16 v0, v34

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 397
    .end local v14    # "ap":J
    .end local v22    # "hap":J
    :cond_ff
    :goto_ff
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 399
    .local v30, "nod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_12a

    .line 400
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 402
    :cond_12a
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide v34, 0x34630b8a000L

    div-long v34, v30, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 403
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide v34, 0xdf8475800L

    div-long v34, v30, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 404
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0x3b9aca00

    div-long v34, v30, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 405
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0x3b9aca00

    rem-long v34, v30, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 407
    .end local v30    # "nod":J
    :cond_186
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 409
    .local v18, "cod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_1b1

    .line 410
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 412
    :cond_1b1
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    div-long v34, v18, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 413
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    rem-long v34, v18, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 415
    .end local v18    # "cod":J
    :cond_1d9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22a

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 417
    .local v24, "lod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_204

    .line 418
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 420
    :cond_204
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3e8

    div-long v34, v24, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 421
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3e8

    rem-long v34, v24, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 423
    .end local v24    # "lod":J
    :cond_22a
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_292

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 425
    .local v32, "sod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_255

    .line 426
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 428
    :cond_255
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xe10

    div-long v34, v32, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 429
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    div-long v34, v32, v34

    const-wide/16 v36, 0x3c

    rem-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 430
    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    rem-long v34, v32, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 432
    .end local v32    # "sod":J
    :cond_292
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e3

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 434
    .local v28, "mod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_2bd

    .line 435
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 437
    :cond_2bd
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    div-long v34, v28, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 438
    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0x3c

    rem-long v34, v28, v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 442
    .end local v28    # "mod":J
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_396

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 444
    .local v12, "nos":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_30c

    .line 445
    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v12, v13}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 447
    :cond_30c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_350

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 449
    .local v20, "cos":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_337

    .line 450
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 452
    :cond_337
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v20

    const-wide/16 v34, 0x3e8

    rem-long v34, v12, v34

    add-long v12, v4, v34

    .line 453
    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 455
    .end local v20    # "cos":J
    :cond_350
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_396

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 457
    .local v26, "los":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v4, v5, :cond_37b

    .line 458
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 460
    :cond_37b
    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v34, 0xf4240

    mul-long v34, v34, v26

    const-wide/32 v36, 0xf4240

    rem-long v36, v12, v36

    add-long v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 465
    .end local v12    # "nos":J
    .end local v26    # "los":J
    :cond_396
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40b

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40b

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 465
    if-eqz v4, :cond_40b

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 465
    if-eqz v4, :cond_40b

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 468
    .local v6, "hod":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 469
    .local v8, "moh":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 470
    .local v10, "som":J
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .restart local v12    # "nos":J
    move-object/from16 v5, p0

    .line 471
    invoke-direct/range {v5 .. v13}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 473
    .end local v6    # "hod":J
    .end local v8    # "moh":J
    .end local v10    # "som":J
    .end local v12    # "nos":J
    :cond_40b
    return-void

    .line 392
    .restart local v14    # "ap":J
    .restart local v22    # "hap":J
    :cond_40c
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 393
    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 394
    sget-object v4, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v34, 0xc

    mul-long v34, v34, v14

    add-long v34, v34, v22

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v5, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    goto/16 :goto_ff
.end method

.method private resolveTimeLenient()V
    .registers 27

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v3, :cond_130

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 484
    .local v18, "los":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 486
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v22, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    rem-long v22, v22, v24

    add-long v12, v4, v22

    .line 487
    .local v12, "cos":J
    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .end local v12    # "cos":J
    .end local v18    # "los":J
    :cond_71
    :goto_71
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 502
    .local v16, "hod":Ljava/lang/Long;
    if-eqz v16, :cond_130

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 504
    .local v17, "moh":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    .line 505
    .local v21, "som":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 508
    .local v20, "nos":Ljava/lang/Long;
    if-nez v17, :cond_eb

    if-nez v21, :cond_a9

    if-eqz v20, :cond_eb

    .line 510
    :cond_a9
    return-void

    .line 492
    .end local v16    # "hod":Ljava/lang/Long;
    .end local v17    # "moh":Ljava/lang/Long;
    .end local v20    # "nos":Ljava/lang/Long;
    .end local v21    # "som":Ljava/lang/Long;
    .restart local v18    # "los":J
    :cond_aa
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v22, 0xf4240

    mul-long v22, v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 494
    .end local v18    # "los":J
    :cond_bd
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 497
    .restart local v12    # "cos":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 509
    .end local v12    # "cos":J
    .restart local v16    # "hod":Ljava/lang/Long;
    .restart local v17    # "moh":Ljava/lang/Long;
    .restart local v20    # "nos":Ljava/lang/Long;
    .restart local v21    # "som":Ljava/lang/Long;
    :cond_eb
    if-eqz v17, :cond_f1

    if-nez v21, :cond_f1

    if-nez v20, :cond_a9

    .line 514
    :cond_f1
    if-eqz v17, :cond_17a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 515
    .local v6, "mohVal":J
    :goto_f7
    if-eqz v21, :cond_17e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 516
    .local v8, "somVal":J
    :goto_fd
    if-eqz v20, :cond_182

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 517
    .local v10, "nosVal":J
    :goto_103
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v4, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .end local v6    # "mohVal":J
    .end local v8    # "somVal":J
    .end local v10    # "nosVal":J
    .end local v16    # "hod":Ljava/lang/Long;
    .end local v17    # "moh":Ljava/lang/Long;
    .end local v20    # "nos":Ljava/lang/Long;
    .end local v21    # "som":Ljava/lang/Long;
    :cond_130
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v3, v4, :cond_186

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_186

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "entry$iterator":Ljava/util/Iterator;
    :cond_14e
    :goto_14e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_186

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 528
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/time/temporal/TemporalField;

    .line 529
    .local v15, "field":Ljava/time/temporal/TemporalField;
    instance-of v3, v15, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_14e

    invoke-interface {v15}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 530
    check-cast v15, Ljava/time/temporal/ChronoField;

    .end local v15    # "field":Ljava/time/temporal/TemporalField;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    goto :goto_14e

    .line 514
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v14    # "entry$iterator":Ljava/util/Iterator;
    .restart local v16    # "hod":Ljava/lang/Long;
    .restart local v17    # "moh":Ljava/lang/Long;
    .restart local v20    # "nos":Ljava/lang/Long;
    .restart local v21    # "som":Ljava/lang/Long;
    :cond_17a
    const-wide/16 v6, 0x0

    .restart local v6    # "mohVal":J
    goto/16 :goto_f7

    .line 515
    :cond_17e
    const-wide/16 v8, 0x0

    .restart local v8    # "somVal":J
    goto/16 :goto_fd

    .line 516
    :cond_182
    const-wide/16 v10, 0x0

    .restart local v10    # "nosVal":J
    goto/16 :goto_103

    .line 534
    .end local v6    # "mohVal":J
    .end local v8    # "somVal":J
    .end local v10    # "nosVal":J
    .end local v16    # "hod":Ljava/lang/Long;
    .end local v17    # "moh":Ljava/lang/Long;
    .end local v20    # "nos":Ljava/lang/Long;
    .end local v21    # "som":Ljava/lang/Long;
    :cond_186
    return-void
.end method

.method private updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V
    .registers 6
    .param p1, "timeToSet"    # Ljava/time/LocalTime;
    .param p2, "periodToSet"    # Ljava/time/Period;

    .prologue
    .line 604
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_73

    .line 605
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 606
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to different times: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_33
    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_70

    invoke-virtual {p2}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0, p2}, Ljava/time/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 609
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to different excess periods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_70
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 617
    :goto_72
    return-void

    .line 614
    :cond_73
    iput-object p1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    .line 615
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    goto :goto_72
.end method

.method private updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V
    .registers 5
    .param p1, "cld"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 355
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_35

    .line 356
    if-eqz p1, :cond_61

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 357
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Conflict found: Fields resolved to two different dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_35
    if-eqz p1, :cond_61

    .line 360
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 361
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_5f
    iput-object p1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    .line 365
    :cond_61
    return-void
.end method

.method private updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V
    .registers 10
    .param p1, "targetField"    # Ljava/time/temporal/TemporalField;
    .param p2, "changeField"    # Ljava/time/temporal/TemporalField;
    .param p3, "changeValue"    # Ljava/lang/Long;

    .prologue
    .line 318
    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 319
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5c

    .line 320
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, " differs from "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    const-string/jumbo v3, " "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 322
    const-string/jumbo v3, " while resolving  "

    .line 320
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_5c
    return-void
.end method


# virtual methods
.method copy()Ljava/time/format/Parsed;
    .registers 4

    .prologue
    .line 170
    new-instance v0, Ljava/time/format/Parsed;

    invoke-direct {v0}, Ljava/time/format/Parsed;-><init>()V

    .line 171
    .local v0, "cloned":Ljava/time/format/Parsed;
    iget-object v1, v0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    iput-object v1, v0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    .line 173
    iget-object v1, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    iput-object v1, v0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    .line 174
    iget-boolean v1, p0, Ljava/time/format/Parsed;->leapSecond:Z

    iput-boolean v1, v0, Ljava/time/format/Parsed;->leapSecond:Z

    .line 175
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 191
    const-string/jumbo v1, "field"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 193
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_15

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 196
    :cond_15
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_28

    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 197
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 199
    :cond_28
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 200
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 202
    :cond_3b
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_59

    .line 203
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_59
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 181
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 182
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    .line 181
    if-nez v0, :cond_20

    .line 183
    :cond_14
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    .line 181
    if-eqz v0, :cond_22

    .line 184
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_22
    if-eqz p1, :cond_2d

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_2d

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    const/4 v0, 0x0

    .line 211
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_a

    .line 212
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-object v0

    .line 213
    :cond_a
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_13

    .line 214
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    return-object v0

    .line 215
    :cond_13
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_24

    .line 216
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_23

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-static {v0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    :cond_23
    return-object v0

    .line 217
    :cond_24
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_2d

    .line 218
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    return-object v0

    .line 219
    :cond_2d
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-eq p1, v1, :cond_39

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_3e

    .line 220
    :cond_39
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 221
    :cond_3e
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    if-ne p1, v1, :cond_45

    .line 222
    return-object v0

    .line 226
    :cond_45
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set",
            "<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p2, :cond_b

    .line 241
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 243
    :cond_b
    iput-object p1, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 244
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFields()V

    .line 245
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeLenient()V

    .line 246
    invoke-direct {p0}, Ljava/time/format/Parsed;->crossCheck()V

    .line 247
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolvePeriod()V

    .line 248
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveFractional()V

    .line 249
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstant()V

    .line 250
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2c

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 659
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v1, :cond_25

    .line 661
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 663
    :cond_25
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-nez v1, :cond_2d

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_4b

    .line 664
    :cond_2d
    const-string/jumbo v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_50

    .line 666
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_4b

    .line 668
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 674
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 671
    :cond_50
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4b
.end method
