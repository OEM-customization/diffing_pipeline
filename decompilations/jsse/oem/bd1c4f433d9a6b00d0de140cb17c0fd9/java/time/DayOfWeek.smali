.class public final enum Ljava/time/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/DayOfWeek;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/DayOfWeek;

.field private static final ENUMS:[Ljava/time/DayOfWeek;

.field public static final enum FRIDAY:Ljava/time/DayOfWeek;

.field public static final enum MONDAY:Ljava/time/DayOfWeek;

.field public static final enum SATURDAY:Ljava/time/DayOfWeek;

.field public static final enum SUNDAY:Ljava/time/DayOfWeek;

.field public static final enum THURSDAY:Ljava/time/DayOfWeek;

.field public static final enum TUESDAY:Ljava/time/DayOfWeek;

.field public static final enum WEDNESDAY:Ljava/time/DayOfWeek;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "MONDAY"

    invoke-direct {v0, v1, v3}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 115
    sput-object v0, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    .line 116
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "TUESDAY"

    invoke-direct {v0, v1, v4}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 120
    sput-object v0, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    .line 121
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "WEDNESDAY"

    invoke-direct {v0, v1, v5}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 125
    sput-object v0, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    .line 126
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "THURSDAY"

    invoke-direct {v0, v1, v6}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 130
    sput-object v0, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    .line 131
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "FRIDAY"

    invoke-direct {v0, v1, v7}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 135
    sput-object v0, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    .line 136
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "SATURDAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 140
    sput-object v0, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    .line 141
    new-instance v0, Ljava/time/DayOfWeek;

    const-string/jumbo v1, "SUNDAY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/time/DayOfWeek;-><init>(Ljava/lang/String;I)V

    .line 145
    sput-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/time/DayOfWeek;

    sget-object v1, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/DayOfWeek;->TUESDAY:Ljava/time/DayOfWeek;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    aput-object v1, v0, v5

    sget-object v1, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    aput-object v1, v0, v6

    sget-object v1, Ljava/time/DayOfWeek;->FRIDAY:Ljava/time/DayOfWeek;

    aput-object v1, v0, v7

    sget-object v1, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    .line 149
    invoke-static {}, Ljava/time/DayOfWeek;->values()[Ljava/time/DayOfWeek;

    move-result-object v0

    sput-object v0, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 188
    instance-of v1, p0, Ljava/time/DayOfWeek;

    if-eqz v1, :cond_7

    .line 189
    check-cast p0, Ljava/time/DayOfWeek;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 192
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;
    :try_end_10
    .catch Ljava/time/DateTimeException; {:try_start_7 .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    .line 193
    :catch_12
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain DayOfWeek from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string/jumbo v3, " of type "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(I)Ljava/time/DayOfWeek;
    .registers 4
    .param p0, "dayOfWeek"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v0, 0x7

    if-le p0, v0, :cond_20

    .line 165
    :cond_6
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value for DayOfWeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_20
    sget-object v0, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/DayOfWeek;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Ljava/time/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public static values()[Ljava/time/DayOfWeek;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Ljava/time/DayOfWeek;->$VALUES:[Ljava/time/DayOfWeek;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 454
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 315
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 316
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 318
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 227
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 345
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 346
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 347
    :cond_a
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    .line 348
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_28
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x0

    .line 252
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_b

    .line 253
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 255
    :cond_b
    if-eqz p1, :cond_11

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public minus(J)Ljava/time/DayOfWeek;
    .registers 6
    .param p1, "days"    # J

    .prologue
    .line 382
    const-wide/16 v0, 0x7

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public plus(J)Ljava/time/DayOfWeek;
    .registers 8
    .param p1, "days"    # J

    .prologue
    .line 366
    const-wide/16 v2, 0x7

    rem-long v2, p1, v2

    long-to-int v0, v2

    .line 367
    .local v0, "amount":I
    sget-object v1, Ljava/time/DayOfWeek;->ENUMS:[Ljava/time/DayOfWeek;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v2

    add-int/lit8 v3, v0, 0x7

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x7

    aget-object v1, v1, v2

    return-object v1
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
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
    .line 407
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 408
    sget-object v0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 410
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 282
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 283
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 285
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
