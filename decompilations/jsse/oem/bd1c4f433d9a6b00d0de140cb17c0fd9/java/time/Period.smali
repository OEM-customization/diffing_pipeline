.class public final Ljava/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Ljava/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_UNITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZERO:Ljava/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 135
    new-instance v0, Ljava/time/Period;

    invoke-direct {v0, v2, v2, v2}, Ljava/time/Period;-><init>(III)V

    sput-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    .line 144
    const-string/jumbo v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 143
    sput-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 149
    sput-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    .line 129
    return-void
.end method

.method private constructor <init>(III)V
    .registers 4
    .param p1, "years"    # I
    .param p2, "months"    # I
    .param p3, "days"    # I

    .prologue
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

.method public static between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .registers 3
    .param p0, "startDateInclusive"    # Ljava/time/LocalDate;
    .param p1, "endDateExclusive"    # Ljava/time/LocalDate;

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static create(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .prologue
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

.method public static from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 11
    .param p0, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 255
    instance-of v7, p0, Ljava/time/Period;

    if-eqz v7, :cond_7

    .line 256
    check-cast p0, Ljava/time/Period;

    .end local p0    # "amount":Ljava/time/temporal/TemporalAmount;
    return-object p0

    .line 258
    .restart local p0    # "amount":Ljava/time/temporal/TemporalAmount;
    :cond_7
    instance-of v7, p0, Ljava/time/chrono/ChronoPeriod;

    if-eqz v7, :cond_34

    .line 259
    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v7, p0

    check-cast v7, Ljava/time/chrono/ChronoPeriod;

    invoke-interface {v7}, Ljava/time/chrono/ChronoPeriod;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 260
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Period requires ISO chronology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :cond_34
    const-string/jumbo v7, "amount"

    invoke-static {p0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, "years":I
    const/4 v1, 0x0

    .line 266
    .local v1, "months":I
    const/4 v0, 0x0

    .line 267
    .local v0, "days":I
    invoke-interface {p0}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "unit$iterator":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalUnit;

    .line 268
    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    invoke-interface {p0, v2}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    .line 269
    .local v4, "unitAmount":J
    sget-object v7, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_5e

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v6

    goto :goto_45

    .line 271
    :cond_5e
    sget-object v7, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_67

    .line 272
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    goto :goto_45

    .line 273
    :cond_67
    sget-object v7, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v7, :cond_70

    .line 274
    invoke-static {v4, v5}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    goto :goto_45

    .line 276
    :cond_70
    new-instance v7, Ljava/time/DateTimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 279
    .end local v2    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v4    # "unitAmount":J
    :cond_8a
    invoke-static {v6, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v7

    return-object v7
.end method

.method public static of(III)Ljava/time/Period;
    .registers 4
    .param p0, "years"    # I
    .param p1, "months"    # I
    .param p2, "days"    # I

    .prologue
    .line 231
    invoke-static {p0, p1, p2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Ljava/time/Period;
    .registers 2
    .param p0, "days"    # I

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-static {v0, v0, p0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Ljava/time/Period;
    .registers 2
    .param p0, "months"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {v0, p0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Ljava/time/Period;
    .registers 3
    .param p0, "weeks"    # I

    .prologue
    const/4 v1, 0x0

    .line 203
    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-static {v1, v1, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Ljava/time/Period;
    .registers 2
    .param p0, "years"    # I

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-static {p0, v0, v0}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Period;
    .registers 15
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v13, 0x0

    .line 323
    const-string/jumbo v11, "text"

    invoke-static {p0, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    sget-object v11, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 325
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 326
    const-string/jumbo v11, "-"

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_58

    const/4 v6, -0x1

    .line 327
    .local v6, "negate":I
    :goto_22
    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, "yearMatch":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "monthMatch":Ljava/lang/String;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "weekMatch":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "dayMatch":Ljava/lang/String;
    if-nez v9, :cond_3a

    if-eqz v4, :cond_5a

    .line 333
    :cond_3a
    :try_start_3a
    invoke-static {p0, v9, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v10

    .line 334
    .local v10, "years":I
    invoke-static {p0, v4, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v5

    .line 335
    .local v5, "months":I
    invoke-static {p0, v7, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v8

    .line 336
    .local v8, "weeks":I
    invoke-static {p0, v0, v6}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    .line 337
    .local v1, "days":I
    const/4 v11, 0x7

    invoke-static {v8, v11}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 338
    invoke-static {v10, v5, v1}, Ljava/time/Period;->create(III)Ljava/time/Period;
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_56} :catch_67

    move-result-object v11

    return-object v11

    .line 326
    .end local v0    # "dayMatch":Ljava/lang/String;
    .end local v1    # "days":I
    .end local v4    # "monthMatch":Ljava/lang/String;
    .end local v5    # "months":I
    .end local v6    # "negate":I
    .end local v7    # "weekMatch":Ljava/lang/String;
    .end local v8    # "weeks":I
    .end local v9    # "yearMatch":Ljava/lang/String;
    .end local v10    # "years":I
    :cond_58
    const/4 v6, 0x1

    .restart local v6    # "negate":I
    goto :goto_22

    .line 331
    .restart local v0    # "dayMatch":Ljava/lang/String;
    .restart local v4    # "monthMatch":Ljava/lang/String;
    .restart local v7    # "weekMatch":Ljava/lang/String;
    .restart local v9    # "yearMatch":Ljava/lang/String;
    :cond_5a
    if-nez v0, :cond_3a

    if-nez v7, :cond_3a

    .line 344
    .end local v0    # "dayMatch":Ljava/lang/String;
    .end local v4    # "monthMatch":Ljava/lang/String;
    .end local v6    # "negate":I
    .end local v7    # "weekMatch":Ljava/lang/String;
    .end local v9    # "yearMatch":Ljava/lang/String;
    :cond_5e
    new-instance v11, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v11

    .line 339
    .restart local v0    # "dayMatch":Ljava/lang/String;
    .restart local v4    # "monthMatch":Ljava/lang/String;
    .restart local v6    # "negate":I
    .restart local v7    # "weekMatch":Ljava/lang/String;
    .restart local v9    # "yearMatch":Ljava/lang/String;
    :catch_67
    move-exception v2

    .line 340
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v12, "Text cannot be parsed to a Period"

    invoke-direct {v11, v12, p0, v13, v2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v11
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .registers 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "negate"    # I

    .prologue
    const/4 v4, 0x0

    .line 348
    if-nez p1, :cond_4

    .line 349
    return v4

    .line 351
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .local v1, "val":I
    :try_start_8
    invoke-static {v1, p2}, Ljava/lang/Math;->multiplyExact(II)I
    :try_end_b
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    return v2

    .line 354
    :catch_d
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/time/format/DateTimeParseException;

    const-string/jumbo v3, "Text cannot be parsed to a Period"

    invoke-direct {v2, v3, p0, v4, v0}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Period;
    .registers 5
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1070
    .local v2, "years":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1071
    .local v1, "months":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1072
    .local v0, "days":I
    invoke-static {v2, v1, v0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 1059
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Ljava/time/temporal/TemporalAccessor;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 962
    const-string/jumbo v1, "temporal"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 963
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 964
    .local v0, "temporalChrono":Ljava/time/chrono/Chronology;
    if-eqz v0, :cond_38

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 965
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Chronology mismatch, expected: ISO, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 967
    :cond_38
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1049
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 888
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 889
    iget v2, p0, Ljava/time/Period;->months:I

    if-nez v2, :cond_22

    .line 890
    iget v2, p0, Ljava/time/Period;->years:I

    if-eqz v2, :cond_14

    .line 891
    iget v2, p0, Ljava/time/Period;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 899
    :cond_14
    :goto_14
    iget v2, p0, Ljava/time/Period;->days:I

    if-eqz v2, :cond_21

    .line 900
    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 902
    :cond_21
    return-object p1

    .line 894
    :cond_22
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 895
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    .line 896
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_14
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 983
    if-ne p0, p1, :cond_5

    .line 984
    return v1

    .line 986
    :cond_5
    instance-of v3, p1, Ljava/time/Period;

    if-eqz v3, :cond_23

    move-object v0, p1

    .line 987
    check-cast v0, Ljava/time/Period;

    .line 988
    .local v0, "other":Ljava/time/Period;
    iget v3, p0, Ljava/time/Period;->years:I

    iget v4, v0, Ljava/time/Period;->years:I

    if-ne v3, v4, :cond_21

    .line 989
    iget v3, p0, Ljava/time/Period;->months:I

    iget v4, v0, Ljava/time/Period;->months:I

    if-ne v3, v4, :cond_21

    .line 990
    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    if-ne v3, v4, :cond_1f

    .line 988
    :goto_1e
    return v1

    :cond_1f
    move v1, v2

    .line 990
    goto :goto_1e

    :cond_21
    move v1, v2

    .line 988
    goto :goto_1e

    .line 992
    .end local v0    # "other":Ljava/time/Period;
    :cond_23
    return v2
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
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

    const-string/jumbo v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .prologue
    .line 455
    invoke-virtual {p0}, Ljava/time/Period;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/IsoChronology;
    .registers 2

    .prologue
    .line 467
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .registers 2

    .prologue
    .line 532
    iget v0, p0, Ljava/time/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .registers 2

    .prologue
    .line 521
    iget v0, p0, Ljava/time/Period;->months:I

    return v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Ljava/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public getYears()I
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Ljava/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
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

.method public isNegative()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 490
    iget v2, p0, Ljava/time/Period;->years:I

    if-ltz v2, :cond_a

    iget v2, p0, Ljava/time/Period;->months:I

    if-gez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget v2, p0, Ljava/time/Period;->days:I

    if-ltz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 479
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 709
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 711
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    invoke-static {v1, v2}, Ljava/lang/Math;->subtractExact(II)I

    move-result v1

    .line 712
    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    invoke-static {v2, v3}, Ljava/lang/Math;->subtractExact(II)I

    move-result v2

    .line 713
    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    invoke-static {v3, v4}, Ljava/lang/Math;->subtractExact(II)I

    move-result v3

    .line 710
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 3

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Ljava/time/Period;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/Period;
    .registers 8
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 764
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_15
.end method

.method public minusMonths(J)Ljava/time/Period;
    .registers 8
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 747
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_15
.end method

.method public minusYears(J)Ljava/time/Period;
    .registers 8
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 730
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v0

    goto :goto_15
.end method

.method public multipliedBy(I)Ljava/time/Period;
    .registers 5
    .param p1, "scalar"    # I

    .prologue
    .line 783
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq p0, v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 784
    :cond_7
    return-object p0

    .line 787
    :cond_8
    iget v0, p0, Ljava/time/Period;->years:I

    invoke-static {v0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    .line 788
    iget v1, p0, Ljava/time/Period;->months:I

    invoke-static {v1, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    .line 789
    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v2, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    .line 786
    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .registers 3

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public negated()Ljava/time/Period;
    .registers 2

    .prologue
    .line 806
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .prologue
    .line 792
    invoke-virtual {p0}, Ljava/time/Period;->negated()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Ljava/time/Period;
    .registers 9

    .prologue
    const-wide/16 v6, 0xc

    .line 828
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v4

    .line 829
    .local v4, "totalMonths":J
    div-long v2, v4, v6

    .line 830
    .local v2, "splitYears":J
    rem-long v6, v4, v6

    long-to-int v0, v6

    .line 831
    .local v0, "splitMonths":I
    iget v1, p0, Ljava/time/Period;->years:I

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-nez v1, :cond_17

    iget v1, p0, Ljava/time/Period;->months:I

    if-ne v0, v1, :cond_17

    .line 832
    return-object p0

    .line 834
    :cond_17
    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v6, p0, Ljava/time/Period;->days:I

    invoke-static {v1, v0, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic normalized()Ljava/time/chrono/ChronoPeriod;
    .registers 2

    .prologue
    .line 809
    invoke-virtual {p0}, Ljava/time/Period;->normalized()Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .registers 7
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 620
    invoke-static {p1}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    .line 622
    .local v0, "isoAmount":Ljava/time/Period;
    iget v1, p0, Ljava/time/Period;->years:I

    iget v2, v0, Ljava/time/Period;->years:I

    invoke-static {v1, v2}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    .line 623
    iget v2, p0, Ljava/time/Period;->months:I

    iget v3, v0, Ljava/time/Period;->months:I

    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 624
    iget v3, p0, Ljava/time/Period;->days:I

    iget v4, v0, Ljava/time/Period;->days:I

    invoke-static {v3, v4}, Ljava/lang/Math;->addExact(II)I

    move-result v3

    .line 621
    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .registers 3

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Ljava/time/Period;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/Period;
    .registers 8
    .param p1, "daysToAdd"    # J

    .prologue
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

.method public plusMonths(J)Ljava/time/Period;
    .registers 8
    .param p1, "monthsToAdd"    # J

    .prologue
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

    int-to-long v2, v1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget v2, p0, Ljava/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljava/time/Period;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .prologue
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

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 7
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 941
    invoke-direct {p0, p1}, Ljava/time/Period;->validateChrono(Ljava/time/temporal/TemporalAccessor;)V

    .line 942
    iget v2, p0, Ljava/time/Period;->months:I

    if-nez v2, :cond_22

    .line 943
    iget v2, p0, Ljava/time/Period;->years:I

    if-eqz v2, :cond_14

    .line 944
    iget v2, p0, Ljava/time/Period;->years:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 952
    :cond_14
    :goto_14
    iget v2, p0, Ljava/time/Period;->days:I

    if-eqz v2, :cond_21

    .line 953
    iget v2, p0, Ljava/time/Period;->days:I

    int-to-long v2, v2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    .line 955
    :cond_21
    return-object p1

    .line 947
    :cond_22
    invoke-virtual {p0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v0

    .line 948
    .local v0, "totalMonths":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    .line 949
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object p1

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1016
    sget-object v1, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne p0, v1, :cond_8

    .line 1017
    const-string/jumbo v1, "P0D"

    return-object v1

    .line 1019
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    iget v1, p0, Ljava/time/Period;->years:I

    if-eqz v1, :cond_21

    .line 1022
    iget v1, p0, Ljava/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1024
    :cond_21
    iget v1, p0, Ljava/time/Period;->months:I

    if-eqz v1, :cond_30

    .line 1025
    iget v1, p0, Ljava/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    :cond_30
    iget v1, p0, Ljava/time/Period;->days:I

    if-eqz v1, :cond_3f

    .line 1028
    iget v1, p0, Ljava/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1030
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTotalMonths()J
    .registers 5

    .prologue
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

.method public withDays(I)Ljava/time/Period;
    .registers 4
    .param p1, "days"    # I

    .prologue
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

.method public withMonths(I)Ljava/time/Period;
    .registers 4
    .param p1, "months"    # I

    .prologue
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

.method public withYears(I)Ljava/time/Period;
    .registers 4
    .param p1, "years"    # I

    .prologue
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

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
