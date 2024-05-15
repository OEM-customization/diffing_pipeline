.class final Ljava/time/format/Parsed;
.super Ljava/lang/Object;
.source "Parsed.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# instance fields
.field greylist-max-o chrono:Ljava/time/chrono/Chronology;

.field private greylist-max-o date:Ljava/time/chrono/ChronoLocalDate;

.field greylist-max-o excessDays:Ljava/time/Period;

.field final greylist-max-o fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o leapSecond:Z

.field private greylist-max-o resolverStyle:Ljava/time/format/ResolverStyle;

.field private greylist-max-o time:Ljava/time/LocalTime;

.field greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

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

.method private greylist-max-o crossCheck()V
    .registers 3

    .line 623
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_7

    .line 624
    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 626
    :cond_7
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_25

    .line 627
    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 628
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_25

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 629
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->crossCheck(Ljava/time/temporal/TemporalAccessor;)V

    .line 632
    :cond_25
    return-void
.end method

.method private greylist-max-o crossCheck(Ljava/time/temporal/TemporalAccessor;)V
    .registers 13
    .param p1, "target"    # Ljava/time/temporal/TemporalAccessor;

    .line 635
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 638
    .local v2, "field":Ljava/time/temporal/TemporalField;
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 641
    :try_start_22
    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_26} :catch_6e

    .line 644
    .local v3, "val1":J
    nop

    .line 645
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 646
    .local v5, "val2":J
    cmp-long v7, v3, v5

    if-nez v7, :cond_39

    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_70

    .line 647
    :cond_39
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflict found: Field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " differs from "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " derived from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 642
    .end local v3    # "val1":J
    .end local v5    # "val2":J
    :catch_6e
    move-exception v3

    .line 643
    .local v3, "ex":Ljava/lang/RuntimeException;
    goto :goto_a

    .line 652
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_70
    :goto_70
    goto :goto_a

    .line 653
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;>;"
    :cond_71
    return-void
.end method

.method private greylist-max-o resolveDateFields()V
    .registers 4

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

.method private greylist-max-o resolveFields()V
    .registers 9

    .line 256
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 257
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 258
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    .line 262
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_da

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "changedCount":I
    :goto_12
    const/16 v1, 0x32

    if-ge v0, v1, :cond_c4

    .line 266
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 267
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalField;

    .line 268
    .local v4, "targetField":Ljava/time/temporal/TemporalField;
    iget-object v5, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    iget-object v6, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-interface {v4, v5, p0, v6}, Ljava/time/temporal/TemporalField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v5

    .line 269
    .local v5, "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    if-eqz v5, :cond_b6

    .line 270
    instance-of v1, v5, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_76

    .line 271
    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoZonedDateTime;

    .line 272
    .local v1, "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-nez v2, :cond_4e

    .line 273
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    iput-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    goto :goto_58

    .line 274
    :cond_4e
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/time/ZoneId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 277
    :goto_58
    invoke-interface {v1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    goto :goto_76

    .line 275
    :cond_5d
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    .end local v1    # "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    :cond_76
    :goto_76
    instance-of v1, v5, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v1, :cond_90

    .line 280
    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoLocalDateTime;

    .line 281
    .local v1, "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    sget-object v6, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v2, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 282
    invoke-interface {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 284
    goto :goto_12

    .line 286
    .end local v1    # "cldt":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    :cond_90
    instance-of v1, v5, Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_9e

    .line 287
    move-object v1, v5

    check-cast v1, Ljava/time/chrono/ChronoLocalDate;

    invoke-direct {p0, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    goto/16 :goto_12

    .line 291
    :cond_9e
    instance-of v1, v5, Ljava/time/LocalTime;

    if-eqz v1, :cond_ae

    .line 292
    move-object v1, v5

    check-cast v1, Ljava/time/LocalTime;

    sget-object v2, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v1, v2}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    goto/16 :goto_12

    .line 296
    :cond_ae
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_b6
    iget-object v6, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c2

    .line 299
    add-int/lit8 v0, v0, 0x1

    .line 300
    goto/16 :goto_12

    .line 302
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v4    # "targetField":Ljava/time/temporal/TemporalField;
    .end local v5    # "resolvedObject":Ljava/time/temporal/TemporalAccessor;
    :cond_c2
    goto/16 :goto_20

    .line 305
    :cond_c4
    if-eq v0, v1, :cond_d2

    .line 309
    if-lez v0, :cond_da

    .line 310
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveInstantFields()V

    .line 311
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveDateFields()V

    .line 312
    invoke-direct {p0}, Ljava/time/format/Parsed;->resolveTimeFields()V

    goto :goto_da

    .line 306
    :cond_d2
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    .end local v0    # "changedCount":I
    :cond_da
    :goto_da
    return-void
.end method

.method private greylist-max-o resolveFractional()V
    .registers 7

    .line 570
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v0, :cond_7d

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 571
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 572
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 573
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 574
    :cond_22
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 575
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

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

    .line 578
    .end local v0    # "nos":J
    goto :goto_7d

    .line 579
    :cond_5a
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_7d
    :goto_7d
    return-void
.end method

.method private greylist-max-o resolveInstant()V
    .registers 8

    .line 588
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_59

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_59

    .line 589
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v2, :cond_28

    .line 590
    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 591
    .local v0, "instant":J
    iget-object v2, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v0    # "instant":J
    goto :goto_59

    .line 593
    :cond_28
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 594
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-eqz v0, :cond_59

    .line 595
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 596
    .local v1, "offset":Ljava/time/ZoneOffset;
    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    iget-object v3, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoLocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/time/chrono/ChronoLocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/chrono/ChronoZonedDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 597
    .local v2, "instant":J
    iget-object v4, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v0    # "offsetSecs":Ljava/lang/Long;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    .end local v2    # "instant":J
    :cond_59
    :goto_59
    return-void
.end method

.method private greylist-max-o resolveInstantFields()V
    .registers 3

    .line 329
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 330
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v0, :cond_12

    .line 331
    invoke-direct {p0, v0}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    goto :goto_29

    .line 333
    :cond_12
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 334
    .local v0, "offsetSecs":Ljava/lang/Long;
    if-eqz v0, :cond_29

    .line 335
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 336
    .local v1, "offset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v1}, Ljava/time/format/Parsed;->resolveInstantFields0(Ljava/time/ZoneId;)V

    .line 340
    .end local v0    # "offsetSecs":Ljava/lang/Long;
    .end local v1    # "offset":Ljava/time/ZoneOffset;
    :cond_29
    :goto_29
    return-void
.end method

.method private greylist-max-o resolveInstantFields0(Ljava/time/ZoneId;)V
    .registers 8
    .param p1, "selectedZone"    # Ljava/time/ZoneId;

    .line 343
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    .line 344
    .local v0, "instant":Ljava/time/Instant;
    iget-object v1, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {v1, v0, p1}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

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

.method private greylist-max-o resolvePeriod()V
    .registers 3

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

.method private greylist-max-o resolveTime(JJJJ)V
    .registers 16
    .param p1, "hod"    # J
    .param p3, "moh"    # J
    .param p5, "som"    # J
    .param p7, "nos"    # J

    .line 537
    iget-object v0, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v0, v1, :cond_45

    .line 538
    const-wide v0, 0x34630b8a000L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    .line 539
    .local v0, "totalNanos":J
    const-wide v2, 0xdf8475800L

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 540
    const-wide/32 v2, 0x3b9aca00

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 541
    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 542
    const-wide v2, 0x4e94914f0000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 543
    .local v4, "excessDays":I
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    .line 544
    .local v2, "nod":J
    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    invoke-static {v4}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 545
    .end local v0    # "totalNanos":J
    .end local v2    # "nod":J
    .end local v4    # "excessDays":I
    goto :goto_87

    .line 546
    :cond_45
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, p3, p4}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 547
    .local v0, "mohVal":I
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, p7, p8}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v1

    .line 549
    .local v1, "nosVal":I
    iget-object v2, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v3, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v2, v3, :cond_72

    const-wide/16 v2, 0x18

    cmp-long v2, p1, v2

    if-nez v2, :cond_72

    if-nez v0, :cond_72

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_72

    if-nez v1, :cond_72

    .line 550
    sget-object v2, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    goto :goto_87

    .line 552
    :cond_72
    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, p1, p2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v2

    .line 553
    .local v2, "hodVal":I
    sget-object v3, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, p5, p6}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v3

    .line 554
    .local v3, "somVal":I
    invoke-static {v2, v0, v3, v1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v4

    sget-object v5, Ljava/time/Period;->ZERO:Ljava/time/Period;

    invoke-direct {p0, v4, v5}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V

    .line 557
    .end local v0    # "mohVal":I
    .end local v1    # "nosVal":I
    .end local v2    # "hodVal":I
    .end local v3    # "somVal":I
    :goto_87
    return-void
.end method

.method private greylist-max-o resolveTimeFields()V
    .registers 19

    .line 370
    move-object/from16 v9, p0

    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_45

    .line 372
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 373
    .local v3, "ch":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v0, v5, :cond_2c

    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v0, v5, :cond_31

    cmp-long v0, v3, v1

    if-eqz v0, :cond_31

    .line 374
    :cond_2c
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 376
    :cond_31
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v6, 0x18

    cmp-long v6, v3, v6

    if-nez v6, :cond_3d

    move-wide v6, v1

    goto :goto_3e

    :cond_3d
    move-wide v6, v3

    :goto_3e
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v9, v0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 378
    .end local v3    # "ch":J
    :cond_45
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0xc

    if-eqz v0, :cond_85

    .line 380
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 381
    .local v5, "ch":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq v0, v7, :cond_6f

    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v0, v7, :cond_74

    cmp-long v0, v5, v1

    if-eqz v0, :cond_74

    .line 382
    :cond_6f
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 384
    :cond_74
    sget-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    cmp-long v8, v5, v3

    if-nez v8, :cond_7d

    goto :goto_7e

    :cond_7d
    move-wide v1, v5

    :goto_7e
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v9, v0, v7, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 386
    .end local v5    # "ch":J
    :cond_85
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 387
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 388
    .local v0, "ap":J
    iget-object v2, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 389
    .local v5, "hap":J
    iget-object v2, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v2, v7, :cond_cf

    .line 390
    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v9, v2, v7, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    goto :goto_e6

    .line 392
    :cond_cf
    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 393
    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 394
    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    mul-long/2addr v3, v0

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v9, v2, v7, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 397
    .end local v0    # "ap":J
    .end local v5    # "hap":J
    :cond_e6
    :goto_e6
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3c

    if-eqz v0, :cond_14e

    .line 398
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 399
    .local v3, "nod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v5, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v5, :cond_10b

    .line 400
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 402
    :cond_10b
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide v6, 0x34630b8a000L

    div-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v9, v0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 403
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const-wide v6, 0xdf8475800L

    div-long v6, v3, v6

    rem-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v9, v0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 404
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const-wide/32 v6, 0x3b9aca00

    div-long v10, v3, v6

    rem-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v9, v0, v5, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 405
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v6, v3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v9, v0, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 407
    .end local v3    # "nod":J
    :cond_14e
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v3, 0xf4240

    if-eqz v0, :cond_18e

    .line 408
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 409
    .local v5, "cod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v7, :cond_174

    .line 410
    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 412
    :cond_174
    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v10, v5, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v9, v0, v7, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 413
    sget-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v10, v5, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v9, v0, v7, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 415
    .end local v5    # "cod":J
    :cond_18e
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-eqz v0, :cond_1cd

    .line 416
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 417
    .local v7, "lod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v10, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v10, :cond_1b3

    .line 418
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 420
    :cond_1b3
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v11, v7, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 421
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    rem-long v11, v7, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 423
    .end local v7    # "lod":J
    :cond_1cd
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21a

    .line 424
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 425
    .local v7, "sod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v10, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v10, :cond_1f0

    .line 426
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 428
    :cond_1f0
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const-wide/16 v11, 0xe10

    div-long v11, v7, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 429
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    div-long v11, v7, v1

    rem-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 430
    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    rem-long v11, v7, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 432
    .end local v7    # "sod":J
    :cond_21a
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 433
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 434
    .local v7, "mod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v10, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v10, :cond_23d

    .line 435
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 437
    :cond_23d
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    div-long v11, v7, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v9, v0, v10, v11}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 438
    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    sget-object v10, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    rem-long v1, v7, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v9, v0, v10, v1}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 442
    .end local v7    # "mod":J
    :cond_257
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    .line 443
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 444
    .local v0, "nos":J
    iget-object v2, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v2, v7, :cond_27a

    .line 445
    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 447
    :cond_27a
    iget-object v2, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ae

    .line 448
    iget-object v2, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 449
    .local v7, "cos":J
    iget-object v2, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v10, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v2, v10, :cond_29d

    .line 450
    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 452
    :cond_29d
    mul-long v10, v7, v5

    rem-long v5, v0, v5

    add-long v0, v10, v5

    .line 453
    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v9, v2, v5, v6}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 455
    .end local v7    # "cos":J
    :cond_2ae
    iget-object v2, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 456
    iget-object v2, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 457
    .local v5, "los":J
    iget-object v2, v9, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v7, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v2, v7, :cond_2d1

    .line 458
    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 460
    :cond_2d1
    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long v10, v5, v3

    rem-long v3, v0, v3

    add-long/2addr v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v9, v2, v7, v3}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 465
    .end local v0    # "nos":J
    .end local v5    # "los":J
    :cond_2e1
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 466
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 467
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 468
    .local v10, "hod":J
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 469
    .local v12, "moh":J
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 470
    .local v14, "som":J
    iget-object v0, v9, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 471
    .local v16, "nos":J
    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide v3, v12

    move-wide v5, v14

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 473
    .end local v10    # "hod":J
    .end local v12    # "moh":J
    .end local v14    # "som":J
    .end local v16    # "nos":J
    :cond_34b
    return-void
.end method

.method private greylist-max-o resolveTimeLenient()V
    .registers 14

    .line 480
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-nez v0, :cond_108

    .line 482
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_69

    .line 483
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 484
    .local v3, "los":J
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 486
    mul-long v5, v3, v1

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    rem-long/2addr v7, v1

    add-long/2addr v5, v7

    .line 487
    .local v5, "cos":J
    sget-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Ljava/time/format/Parsed;->updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V

    .line 488
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v5    # "cos":J
    goto :goto_8e

    .line 492
    :cond_59
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const-wide/32 v5, 0xf4240

    mul-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    .line 494
    .end local v3    # "los":J
    :cond_69
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 496
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v3, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 497
    .local v3, "cos":J
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v5, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 494
    .end local v3    # "cos":J
    :cond_8e
    :goto_8e
    nop

    .line 501
    :goto_8f
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Long;

    .line 502
    .local v9, "hod":Ljava/lang/Long;
    if-eqz v9, :cond_108

    .line 503
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Long;

    .line 504
    .local v10, "moh":Ljava/lang/Long;
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Long;

    .line 505
    .local v11, "som":Ljava/lang/Long;
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Long;

    .line 508
    .local v12, "nos":Ljava/lang/Long;
    if-nez v10, :cond_c3

    if-nez v11, :cond_c9

    if-nez v12, :cond_c9

    :cond_c3
    if-eqz v10, :cond_ca

    if-nez v11, :cond_ca

    if-eqz v12, :cond_ca

    .line 510
    :cond_c9
    return-void

    .line 514
    :cond_ca
    const-wide/16 v0, 0x0

    if-eqz v10, :cond_d4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v3, v2

    goto :goto_d5

    :cond_d4
    move-wide v3, v0

    .line 515
    .local v3, "mohVal":J
    :goto_d5
    if-eqz v11, :cond_dc

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_dd

    :cond_dc
    move-wide v5, v0

    .line 516
    .local v5, "somVal":J
    :goto_dd
    if-eqz v12, :cond_e3

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_e3
    move-wide v7, v0

    .line 517
    .local v7, "nosVal":J
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/time/format/Parsed;->resolveTime(JJJJ)V

    .line 518
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .end local v3    # "mohVal":J
    .end local v5    # "somVal":J
    .end local v7    # "nosVal":J
    .end local v9    # "hod":Ljava/lang/Long;
    .end local v10    # "moh":Ljava/lang/Long;
    .end local v11    # "som":Ljava/lang/Long;
    .end local v12    # "nos":Ljava/lang/Long;
    :cond_108
    iget-object v0, p0, Ljava/time/format/Parsed;->resolverStyle:Ljava/time/format/ResolverStyle;

    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v0, v1, :cond_14d

    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 527
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_120
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 528
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 529
    .local v2, "field":Ljava/time/temporal/TemporalField;
    instance-of v3, v2, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_14c

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isTimeBased()Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 530
    move-object v3, v2

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 532
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    :cond_14c
    goto :goto_120

    .line 534
    :cond_14d
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/LocalTime;Ljava/time/Period;)V
    .registers 7
    .param p1, "timeToSet"    # Ljava/time/LocalTime;
    .param p2, "periodToSet"    # Ljava/time/Period;

    .line 604
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_64

    .line 605
    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_45

    .line 608
    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {p2}, Ljava/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v0, p2}, Ljava/time/Period;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_42

    .line 609
    :cond_23
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: Fields resolved to different excess periods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_42
    :goto_42
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    goto :goto_68

    .line 606
    :cond_45
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: Fields resolved to different times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 614
    :cond_64
    iput-object p1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    .line 615
    iput-object p2, p0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    .line 617
    :goto_68
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/chrono/ChronoLocalDate;)V
    .registers 5
    .param p1, "cld"    # Ljava/time/chrono/ChronoLocalDate;

    .line 355
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_2e

    .line 356
    if-eqz p1, :cond_58

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_58

    .line 357
    :cond_d
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflict found: Fields resolved to two different dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_2e
    if-eqz p1, :cond_58

    .line 360
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-interface {p1}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 363
    iput-object p1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    goto :goto_58

    .line 361
    :cond_3f
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_58
    :goto_58
    return-void
.end method

.method private greylist-max-o updateCheckConflict(Ljava/time/temporal/TemporalField;Ljava/time/temporal/TemporalField;Ljava/lang/Long;)V
    .registers 9
    .param p1, "targetField"    # Ljava/time/temporal/TemporalField;
    .param p2, "changeField"    # Ljava/time/temporal/TemporalField;
    .param p3, "changeValue"    # Ljava/lang/Long;

    .line 318
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 319
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    goto :goto_4c

    .line 320
    :cond_17
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while resolving  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method greylist-max-o copy()Ljava/time/format/Parsed;
    .registers 4

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

.method public whitelist core-platform-api test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 191
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 193
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_14

    .line 194
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 196
    :cond_14
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_25

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 197
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v1, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 199
    :cond_25
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_36

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 200
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v1, p1}, Ljava/time/LocalTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    return-wide v1

    .line 202
    :cond_36
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-nez v1, :cond_3f

    .line 205
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v1

    return-wide v1

    .line 203
    :cond_3f
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
.end method

.method public whitelist core-platform-api test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 181
    iget-object v0, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_13

    .line 182
    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_13
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v0, :cond_1e

    .line 183
    invoke-virtual {v0, p1}, Ljava/time/LocalTime;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2d

    .line 186
    :cond_1e
    if-eqz p1, :cond_2b

    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-nez v0, :cond_2b

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1

    .line 184
    :cond_2d
    :goto_2d
    return v1
.end method

.method public whitelist core-platform-api test-api query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 211
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 212
    iget-object v0, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    return-object v0

    .line 213
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 214
    iget-object v0, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    return-object v0

    .line 215
    :cond_12
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_22

    .line 216
    iget-object v0, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_21

    invoke-static {v0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    :cond_21
    return-object v1

    .line 217
    :cond_22
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2b

    .line 218
    iget-object v0, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    return-object v0

    .line 219
    :cond_2b
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_44

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_38

    goto :goto_44

    .line 221
    :cond_38
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3f

    .line 222
    return-object v1

    .line 226
    :cond_3f
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 220
    :cond_44
    :goto_44
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o resolve(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

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

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 659
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/time/format/Parsed;->chrono:Ljava/time/chrono/Chronology;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v2, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    if-eqz v2, :cond_22

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/Parsed;->zone:Ljava/time/ZoneId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 663
    :cond_22
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-nez v1, :cond_2a

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_4a

    .line 664
    :cond_2a
    const-string v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v1, p0, Ljava/time/format/Parsed;->date:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v1, :cond_45

    .line 666
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    if-eqz v1, :cond_4a

    .line 668
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 671
    :cond_45
    iget-object v1, p0, Ljava/time/format/Parsed;->time:Ljava/time/LocalTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 674
    :cond_4a
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
