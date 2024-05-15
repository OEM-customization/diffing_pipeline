.class public final Ljava/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api ZERO:Ljava/time/Period;

.field private static final whitelist serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final greylist-max-o days:I

.field private final greylist-max-o months:I

.field private final greylist-max-o years:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 135
    new-instance v0, Ljava/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljava/time/Period;-><init>(III)V

    sput-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    .line 143
    nop

    .line 144
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v3, v0, v1

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v2

    .line 150
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    .line 149
    return-void
.end method

.method private constructor greylist-max-o <init>(III)V
    .registers 4
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput p1, p0, Ljava/time/Period;->years:I

    .line 407
    iput p2, p0, Ljava/time/Period;->months:I

    .line 408
    iput p3, p0, Ljava/time/Period;->days:I

    .line 409
    return-void
.end method

.method public static whitelist core-platform-api test-api between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .registers 3
    .param p0, "startDateInclusive"    # Ljava/time/LocalDate;
    .param p1, "endDateExclusive"    # Ljava/time/LocalDate;

    .line 380
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o create(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 392
    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_8

    .line 393
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0

    .line 395
    :cond_8
    new-instance v0, Ljava/time/Period;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 10
    .param p0, "amount"    # Ljava/time/temporal/TemporalAmount;

    .line 255
    instance-of v0, p0, Ljava/time/Period;

    if-eqz v0, :cond_8

    .line 256
    move-object v0, p0

    check-cast v0, Ljava/time/Period;

    return-object v0

    .line 258
    :cond_8
    instance-of v0, p0, Ljava/time/chrono/ChronoPeriod;

    if-eqz v0, :cond_33

    .line 259
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v1, p0

    check-cast v1, Ljava/time/chrono/ChronoPeriod;

    invoke-interface {v1}, Ljava/time/chrono/ChronoPeriod;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_33

    .line 260
    :cond_1c
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_33
    :goto_33
    const-string v0, "amount"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "years":I
    const/4 v1, 0x0

    .line 266
    .local v1, "months":I
    const/4 v2, 0x0

    .line 267
    .local v2, "days":I
    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalUnit;

    .line 268
    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v5

    .line 269
    .local v5, "unitAmount":J
    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_5c

    .line 270
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    goto :goto_6d

    .line 271
    :cond_5c
    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_65

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    goto :goto_6d

    .line 273
    :cond_65
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_6e

    .line 274
    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    .line 278
    .end local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :goto_6d
    goto :goto_43

    .line 276
    .restart local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .restart local v5    # "unitAmount":J
    :cond_6e
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 279
    .end local v4    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v5    # "unitAmount":J
    :cond_85
    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public static whitelist core-platform-api test-api of(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .line 231
    invoke-static {p0, p1, p2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofDays(I)Ljava/time/Period;
    .registers 2
    .param p0, "days"    # I

    .line 216
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofMonths(I)Ljava/time/Period;
    .registers 2
    .param p0, "months"    # I

    .line 189
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofWeeks(I)Ljava/time/Period;
    .registers 3
    .param p0, "weeks"    # I

    .line 203
    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api ofYears(I)Ljava/time/Period;
    .registers 2
    .param p0, "years"    # I

    .line 176
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api parse(Ljava/lang/CharSequence;)Ljava/time/Period;
    .registers 14
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 323
    const-string v0, "text"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    sget-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 325
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Text cannot be parsed to a Period"

    if-eqz v1, :cond_64

    .line 326
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v1, -0x1

    .line 327
    .local v1, "negate":I
    :cond_22
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "yearMatch":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 329
    .local v5, "monthMatch":Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "weekMatch":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "dayMatch":Ljava/lang/String;
    if-nez v4, :cond_3e

    if-nez v5, :cond_3e

    if-nez v7, :cond_3e

    if-eqz v6, :cond_64

    .line 333
    :cond_3e
    :try_start_3e
    invoke-static {p0, v4, v1}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    .line 334
    .local v8, "years":I
    invoke-static {p0, v5, v1}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v9

    .line 335
    .local v9, "months":I
    invoke-static {p0, v6, v1}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v10

    .line 336
    .local v10, "weeks":I
    invoke-static {p0, v7, v1}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    .line 337
    .local v11, "days":I
    const/4 v12, 0x7

    invoke-static {v10, v12}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->addExact(II)I

    move-result v12

    move v11, v12

    .line 338
    invoke-static {v8, v9, v11}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_5c} :catch_5d

    return-object v2

    .line 339
    .end local v8    # "years":I
    .end local v9    # "months":I
    .end local v10    # "weeks":I
    .end local v11    # "days":I
    :catch_5d
    move-exception v8

    .line 340
    .local v8, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/time/format/DateTimeParseException;

    invoke-direct {v9, v3, p0, v2, v8}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v9

    .line 344
    .end local v1    # "negate":I
    .end local v4    # "yearMatch":Ljava/lang/String;
    .end local v5    # "monthMatch":Ljava/lang/String;
    .end local v6    # "weekMatch":Ljava/lang/String;
    .end local v7    # "dayMatch":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :cond_64
    new-instance v1, Ljava/time/format/DateTimeParseException;

    invoke-direct {v1, v3, p0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method private static greylist-max-o parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .line 348
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 349
    return v0

    .line 351
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "val":I
    :try_start_8
    invoke-static {v1, p2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 354
    :catch_d
    move-exception v2

    .line 355
    .local v2, "ex":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v0, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v3
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/Period;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1070
    .local v0, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1071
    .local v1, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1072
    .local v2, "days":I
    invoke-static {v0, v1, v2}, Ljava/time/Period;->of(III)Ljava/time/Period;

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

    .line 1059
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 962
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 963
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 964
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_35

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_35

    .line 965
    :cond_1a
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chronology mismatch, expected: ISO, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 967
    :cond_35
    :goto_35
    return-void
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1049
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 888
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 889
    iget v0, p0, Ljava/time/Period;->months:I

    if-nez v0, :cond_13

    .line 890
    iget v0, p0, Ljava/time/Period;->years:I

    if-eqz v0, :cond_23

    .line 891
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_23

    .line 894
    :cond_13
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 895
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 896
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 899
    .end local v0    # "totalMonths":J
    :cond_23
    :goto_23
    iget v0, p0, Ljava/time/Period;->days:I

    if-eqz v0, :cond_2e

    .line 900
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 902
    :cond_2e
    return-object p1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 983
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 984
    return v0

    .line 986
    :cond_4
    instance-of v1, p1, Ljava/time/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 987
    move-object v1, p1

    check-cast v1, Ljava/time/Period;

    .line 988
    .local v1, "other":Ljava/time/Period;
    iget v3, p0, Ljava/time/Period;->years:I

    iget v4, v1, Ljava/time/Period;->years:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Ljava/time/Period;->months:I

    iget v4, v1, Ljava/time/Period;->months:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v1, Ljava/time/Period;->days:I

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0

    .line 992
    .end local v1    # "other":Ljava/time/Period;
    :cond_21
    return v2
.end method

.method public whitelist core-platform-api test-api get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 427
    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_a

    .line 428
    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 429
    :cond_a
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_14

    .line 430
    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 431
    :cond_14
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1e

    .line 432
    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 434
    :cond_1e
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 129
    invoke-virtual {p0}, Ljava/time/Period;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getChronology()Ljava/time/chrono/IsoChronology;
    .registers 2

    .line 467
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDays()I
    .registers 2

    .line 532
    iget v0, p0, Ljava/time/Period;->days:I

    return v0
.end method

.method public whitelist core-platform-api test-api getMonths()I
    .registers 2

    .line 521
    iget v0, p0, Ljava/time/Period;->months:I

    return v0
.end method

.method public whitelist core-platform-api test-api getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .line 452
    sget-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getYears()I
    .registers 2

    .line 506
    iget v0, p0, Ljava/time/Period;->years:I

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 1002
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api isNegative()Z
    .registers 2

    .line 490
    iget v0, p0, Ljava/time/Period;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/Period;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/time/Period;->days:I

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist core-platform-api test-api isZero()Z
    .registers 2

    .line 479
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 709
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 710
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    .line 711
    invoke-static {v1, v2}, Ljava/lang/Math;->subtractExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    .line 712
    invoke-static {v2, v3}, Ljava/lang/Math;->subtractExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    .line 713
    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    .line 710
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Period;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api minusDays(J)Ljava/time/Period;
    .registers 6
    .param p1, "daysToSubtract"    # J

    .line 764
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusMonths(J)Ljava/time/Period;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 747
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api minusYears(J)Ljava/time/Period;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 730
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist core-platform-api test-api multipliedBy(I)Ljava/time/Period;
    .registers 5
    .param p1, "scalar"    # I

    .line 783
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_1f

    .line 786
    :cond_8
    iget v0, p0, Ljava/time/Period;->years:I

    .line 787
    invoke-static {v0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    .line 788
    invoke-static {v1, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    .line 789
    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    .line 786
    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0

    .line 784
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api negated()Ljava/time/Period;
    .registers 2

    .line 806
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api negated()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 129
    invoke-virtual {p0}, Ljava/time/Period;->negated()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api normalized()Ljava/time/Period;
    .registers 9

    .line 828
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 829
    .local v0, "totalMonths":J
    const-wide/16 v2, 0xc

    div-long v4, v0, v2

    .line 830
    .local v4, "splitYears":J
    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 831
    .local v2, "splitMonths":I
    iget v3, p0, Ljava/time/Period;->years:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_17

    iget v3, p0, Ljava/time/Period;->months:I

    if-ne v2, v3, :cond_17

    .line 832
    return-object p0

    .line 834
    :cond_17
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    iget v6, p0, Ljava/time/Period;->days:I

    invoke-static {v3, v2, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic whitelist core-platform-api test-api normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 129
    invoke-virtual {p0}, Ljava/time/Period;->normalized()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 620
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 621
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    .line 622
    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    .line 623
    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    .line 624
    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 621
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Ljava/time/Period;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api plusDays(J)Ljava/time/Period;
    .registers 7
    .param p1, "daysToAdd"    # J

    .line 681
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 682
    return-object p0

    .line 684
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusMonths(J)Ljava/time/Period;
    .registers 6
    .param p1, "monthsToAdd"    # J

    .line 661
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 662
    return-object p0

    .line 664
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api plusYears(J)Ljava/time/Period;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 641
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 642
    return-object p0

    .line 644
    :cond_7
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    iget v1, p0, Ljava/time/Period;->months:I

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 941
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 942
    iget v0, p0, Ljava/time/Period;->months:I

    if-nez v0, :cond_13

    .line 943
    iget v0, p0, Ljava/time/Period;->years:I

    if-eqz v0, :cond_23

    .line 944
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_23

    .line 947
    :cond_13
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 948
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_23

    .line 949
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 952
    .end local v0    # "totalMonths":J
    :cond_23
    :goto_23
    iget v0, p0, Ljava/time/Period;->days:I

    if-eqz v0, :cond_2e

    .line 953
    int-to-long v0, v0

    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 955
    :cond_2e
    return-object p1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 1016
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_7

    .line 1017
    const-string v0, "P0D"

    return-object v0

    .line 1019
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    iget v1, p0, Ljava/time/Period;->years:I

    if-eqz v1, :cond_1d

    .line 1022
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1024
    :cond_1d
    iget v1, p0, Ljava/time/Period;->months:I

    if-eqz v1, :cond_29

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    :cond_29
    iget v1, p0, Ljava/time/Period;->days:I

    if-eqz v1, :cond_35

    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api toTotalMonths()J
    .registers 5

    .line 848
    iget v0, p0, Ljava/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist core-platform-api test-api withDays(I)Ljava/time/Period;
    .registers 4
    .param p1, "days"    # I

    .line 592
    iget v0, p0, Ljava/time/Period;->days:I

    if-ne p1, v0, :cond_5

    .line 593
    return-object p0

    .line 595
    :cond_5
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->months:I

    invoke-static {v0, v1, p1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api withMonths(I)Ljava/time/Period;
    .registers 4
    .param p1, "months"    # I

    .line 574
    iget v0, p0, Ljava/time/Period;->months:I

    if-ne p1, v0, :cond_5

    .line 575
    return-object p0

    .line 577
    :cond_5
    iget v0, p0, Ljava/time/Period;->years:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {v0, p1, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api withYears(I)Ljava/time/Period;
    .registers 4
    .param p1, "years"    # I

    .line 552
    iget v0, p0, Ljava/time/Period;->years:I

    if-ne p1, v0, :cond_5

    .line 553
    return-object p0

    .line 555
    :cond_5
    iget v0, p0, Ljava/time/Period;->months:I

    iget v1, p0, Ljava/time/Period;->days:I

    invoke-static {p1, v0, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;

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

    .line 1063
    iget v0, p0, Ljava/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1064
    iget v0, p0, Ljava/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1065
    iget v0, p0, Ljava/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1066
    return-void
.end method
