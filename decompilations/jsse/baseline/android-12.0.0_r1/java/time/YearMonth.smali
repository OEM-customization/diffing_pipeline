.class public final Ljava/time/YearMonth;
.super Ljava/lang/Object;
.source "YearMonth.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable<",
        "Ljava/time/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final whitelist serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final greylist-max-o month:I

.field private final greylist-max-o year:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 135
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 136
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 137
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 135
    return-void
.end method

.method private constructor greylist-max-o <init>(II)V
    .registers 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Ljava/time/YearMonth;->year:I

    .line 301
    iput p2, p0, Ljava/time/YearMonth;->month:I

    .line 302
    return-void
.end method

.method public static whitelist test-api from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 246
    instance-of v0, p0, Ljava/time/YearMonth;

    if-eqz v0, :cond_8

    .line 247
    move-object v0, p0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    .line 249
    :cond_8
    const-string v0, "temporal"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    :try_start_d
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 252
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    move-object p0, v0

    .line 254
    :cond_1e
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0
    :try_end_2e
    .catch Ljava/time/DateTimeException; {:try_start_d .. :try_end_2e} :catch_2f

    return-object v0

    .line 255
    :catch_2f
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o getProlepticMonth()J
    .registers 5

    .line 494
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/YearMonth;->month:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api now()Ljava/time/YearMonth;
    .registers 1

    .line 163
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api now(Ljava/time/Clock;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "clock"    # Ljava/time/Clock;

    .line 193
    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    .line 194
    .local v0, "now":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api now(Ljava/time/ZoneId;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "zone"    # Ljava/time/ZoneId;

    .line 179
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api of(II)Ljava/time/YearMonth;
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I

    .line 220
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 221
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 222
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p0, p1}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static whitelist test-api of(ILjava/time/Month;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;

    .line 207
    const-string v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;
    .registers 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 274
    sget-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;
    .registers 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 288
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    sget-object v0, Ljava/time/YearMonth$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/YearMonth$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;
    .registers 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1240
    .local v0, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1241
    .local v1, "month":B
    invoke-static {v0, v1}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1230
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o with(II)Ljava/time/YearMonth;
    .registers 4
    .param p1, "newYear"    # I
    .param p2, "newMonth"    # I

    .line 313
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Ljava/time/YearMonth;->month:I

    if-ne v0, p2, :cond_9

    .line 314
    return-object p0

    .line 316
    :cond_9
    new-instance v0, Ljava/time/YearMonth;

    invoke-direct {v0, p1, p2}, Ljava/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1220
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .line 985
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 988
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 986
    :cond_17
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api atDay(I)Ljava/time/LocalDate;
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 1089
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api atEndOfMonth()Ljava/time/LocalDate;
    .registers 4

    .line 1107
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 125
    check-cast p1, Ljava/time/YearMonth;

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/time/YearMonth;)I
    .registers 5
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1122
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p1, Ljava/time/YearMonth;->year:I

    sub-int/2addr v0, v1

    .line 1123
    .local v0, "cmp":I
    if-nez v0, :cond_d

    .line 1124
    iget v1, p0, Ljava/time/YearMonth;->month:I

    iget v2, p1, Ljava/time/YearMonth;->month:I

    sub-int v0, v1, v2

    .line 1126
    :cond_d
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1161
    return v0

    .line 1163
    :cond_4
    instance-of v1, p1, Ljava/time/YearMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 1164
    move-object v1, p1

    check-cast v1, Ljava/time/YearMonth;

    .line 1165
    .local v1, "other":Ljava/time/YearMonth;
    iget v3, p0, Ljava/time/YearMonth;->year:I

    iget v4, v1, Ljava/time/YearMonth;->year:I

    if-ne v3, v4, :cond_19

    iget v3, p0, Ljava/time/YearMonth;->month:I

    iget v4, v1, Ljava/time/YearMonth;->month:I

    if-ne v3, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 1167
    .end local v1    # "other":Ljava/time/YearMonth;
    :cond_1b
    return v2
.end method

.method public whitelist test-api format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1066
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(Ljava/time/temporal/TemporalField;)I
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 452
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 480
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_46

    .line 481
    sget-object v0, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_4c

    .line 488
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

    .line 486
    :pswitch_2a
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ge v0, v1, :cond_2f

    const/4 v1, 0x0

    :cond_2f
    int-to-long v0, v1

    return-wide v0

    .line 485
    :pswitch_31
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    return-wide v0

    .line 484
    :pswitch_35
    iget v0, p0, Ljava/time/YearMonth;->year:I

    if-ge v0, v1, :cond_3b

    rsub-int/lit8 v0, v0, 0x1

    :cond_3b
    int-to-long v0, v0

    return-wide v0

    .line 483
    :pswitch_3d
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 482
    :pswitch_42
    iget v0, p0, Ljava/time/YearMonth;->month:I

    int-to-long v0, v0

    return-wide v0

    .line 490
    :cond_46
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3d
        :pswitch_35
        :pswitch_31
        :pswitch_2a
    .end packed-switch
.end method

.method public whitelist test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 537
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonthValue()I
    .registers 2

    .line 522
    iget v0, p0, Ljava/time/YearMonth;->month:I

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2

    .line 508
    iget v0, p0, Ljava/time/YearMonth;->year:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1177
    iget v0, p0, Ljava/time/YearMonth;->year:I

    iget v1, p0, Ljava/time/YearMonth;->month:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isAfter(Ljava/time/YearMonth;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1136
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isBefore(Ljava/time/YearMonth;)Z
    .registers 3
    .param p1, "other"    # Ljava/time/YearMonth;

    .line 1146
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isLeapYear()Z
    .registers 4

    .line 560
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 349
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    .line 350
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_1c

    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :cond_1c
    :goto_1c
    return v1

    .line 353
    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method

.method public whitelist test-api isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .registers 5
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 385
    instance-of v0, p1, Ljava/time/temporal/ChronoUnit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 386
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v0, :cond_20

    sget-object v0, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :cond_20
    :goto_20
    return v1

    .line 388
    :cond_21
    if-eqz p1, :cond_2a

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method public whitelist test-api isValidDay(I)Z
    .registers 4
    .param p1, "dayOfMonth"    # I

    .line 573
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v1

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api lengthOfMonth()I
    .registers 3

    .line 585
    invoke-virtual {p0}, Ljava/time/YearMonth;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->length(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api lengthOfYear()I
    .registers 2

    .line 596
    invoke-virtual {p0}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method

.method public whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 7
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 898
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .line 874
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api minusMonths(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "monthsToSubtract"    # J

    .line 924
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api minusYears(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "yearsToSubtract"    # J

    .line 911
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .registers 7
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 800
    instance-of v0, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v0, :cond_65

    .line 801
    sget-object v0, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 809
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :pswitch_29
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 806
    :pswitch_3a
    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 805
    :pswitch_45
    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 804
    :pswitch_50
    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 803
    :pswitch_5b
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 802
    :pswitch_60
    invoke-virtual {p0, p1, p2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0

    .line 811
    :cond_65
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5b
        :pswitch_50
        :pswitch_45
        :pswitch_3a
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .line 744
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api plusMonths(J)Ljava/time/YearMonth;
    .registers 11
    .param p1, "monthsToAdd"    # J

    .line 841
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 842
    return-object p0

    .line 844
    :cond_7
    iget v0, p0, Ljava/time/YearMonth;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Ljava/time/YearMonth;->month:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 845
    .local v0, "monthCount":J
    add-long v2, v0, p1

    .line 846
    .local v2, "calcMonths":J
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v5, 0xc

    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 847
    .local v4, "newYear":I
    invoke-static {v2, v3, v5}, Ljava/lang/Math;->floorMod(JI)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 848
    .local v5, "newMonth":I
    invoke-direct {p0, v4, v5}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v6

    return-object v6
.end method

.method public whitelist test-api plusYears(J)Ljava/time/YearMonth;
    .registers 6
    .param p1, "yearsToAdd"    # J

    .line 824
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 825
    return-object p0

    .line 827
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/YearMonth;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 828
    .local v0, "newYear":I
    iget v1, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, v0, v1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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

    .line 949
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 950
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 951
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 952
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 954
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 7
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 417
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_18

    .line 418
    invoke-virtual {p0}, Ljava/time/YearMonth;->getYear()I

    move-result v0

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_10

    const-wide/32 v3, 0x3b9aca00

    goto :goto_13

    :cond_10
    const-wide/32 v3, 0x3b9ac9ff

    :goto_13
    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 420
    :cond_18
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1190
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1191
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1192
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_29

    .line 1193
    iget v2, p0, Ljava/time/YearMonth;->year:I

    if-gez v2, :cond_1f

    .line 1194
    add-int/lit16 v2, v2, -0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1196
    :cond_1f
    add-int/lit16 v2, v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 1199
    :cond_29
    iget v2, p0, Ljava/time/YearMonth;->year:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1201
    :goto_2e
    iget v2, p0, Ljava/time/YearMonth;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_37

    const-string v2, "-0"

    goto :goto_39

    :cond_37
    const-string v2, "-"

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/time/YearMonth;->month:I

    .line 1202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1201
    return-object v2
.end method

.method public whitelist test-api until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .registers 10
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .line 1040
    invoke-static {p1}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    .line 1041
    .local v0, "end":Ljava/time/YearMonth;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_59

    .line 1042
    invoke-direct {v0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1043
    .local v1, "monthsUntil":J
    sget-object v3, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v4, p2

    check-cast v4, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5e

    .line 1051
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1049
    :pswitch_36
    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v3}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v5}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    return-wide v3

    .line 1048
    :pswitch_44
    const-wide/16 v3, 0x2ee0

    div-long v3, v1, v3

    return-wide v3

    .line 1047
    :pswitch_49
    const-wide/16 v3, 0x4b0

    div-long v3, v1, v3

    return-wide v3

    .line 1046
    :pswitch_4e
    const-wide/16 v3, 0x78

    div-long v3, v1, v3

    return-wide v3

    .line 1045
    :pswitch_53
    const-wide/16 v3, 0xc

    div-long v3, v1, v3

    return-wide v3

    .line 1044
    :pswitch_58
    return-wide v1

    .line 1053
    .end local v1    # "monthsUntil":J
    :cond_59
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v1

    return-wide v1

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;
    .registers 3
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .line 624
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0
.end method

.method public whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .line 677
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_67

    .line 678
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 679
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 680
    sget-object v1, Ljava/time/YearMonth$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_6e

    .line 687
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

    .line 685
    :pswitch_2d
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v3

    cmp-long v1, v3, p2

    if-nez v1, :cond_39

    move-object v1, p0

    goto :goto_40

    :cond_39
    iget v1, p0, Ljava/time/YearMonth;->year:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    :goto_40
    return-object v1

    .line 684
    :pswitch_41
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 683
    :pswitch_47
    iget v1, p0, Ljava/time/YearMonth;->year:I

    if-ge v1, v2, :cond_4f

    const-wide/16 v1, 0x1

    sub-long/2addr v1, p2

    goto :goto_50

    :cond_4f
    move-wide v1, p2

    :goto_50
    long-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 682
    :pswitch_56
    invoke-direct {p0}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {p0, v1, v2}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 681
    :pswitch_61
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/YearMonth;->withMonth(I)Ljava/time/YearMonth;

    move-result-object v1

    return-object v1

    .line 689
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_67
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/YearMonth;

    return-object v0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_61
        :pswitch_56
        :pswitch_47
        :pswitch_41
        :pswitch_2d
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .registers 4

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api withMonth(I)Ljava/time/YearMonth;
    .registers 5
    .param p1, "month"    # I

    .line 717
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 718
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-direct {p0, v0, p1}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api withYear(I)Ljava/time/YearMonth;
    .registers 5
    .param p1, "year"    # I

    .line 703
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 704
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-direct {p0, p1, v0}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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

    .line 1234
    iget v0, p0, Ljava/time/YearMonth;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1235
    iget v0, p0, Ljava/time/YearMonth;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1236
    return-void
.end method
