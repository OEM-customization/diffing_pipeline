.class public final Ljava/time/chrono/JapaneseEra;
.super Ljava/lang/Object;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/time/chrono/Era;
.implements Ljava/io/Serializable;


# static fields
.field static final greylist-max-o ERA_CONFIG:[Lsun/util/calendar/Era;

.field static final greylist-max-o ERA_OFFSET:I = 0x2

.field public static final whitelist test-api HEISEI:Ljava/time/chrono/JapaneseEra;

.field private static final greylist-max-o KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api MEIJI:Ljava/time/chrono/JapaneseEra;

.field private static final greylist-max-o N_ERA_CONSTANTS:I

.field public static final whitelist test-api REIWA:Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api SHOWA:Ljava/time/chrono/JapaneseEra;

.field public static final whitelist test-api TAISHO:Ljava/time/chrono/JapaneseEra;

.field private static final whitelist serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient greylist-max-o eraValue:I

.field private final transient greylist-max-o since:Ljava/time/LocalDate;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 10

    .line 137
    new-instance v0, Ljava/time/chrono/JapaneseEra;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    .line 142
    new-instance v1, Ljava/time/chrono/JapaneseEra;

    const/16 v3, 0x778

    const/4 v4, 0x7

    const/16 v5, 0x1e

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v1, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    .line 147
    new-instance v3, Ljava/time/chrono/JapaneseEra;

    const/16 v5, 0x786

    const/16 v6, 0xc

    const/16 v7, 0x19

    invoke-static {v5, v6, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v3, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    .line 152
    new-instance v5, Ljava/time/chrono/JapaneseEra;

    const/16 v6, 0x7c5

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v5, v7, v6}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v5, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    .line 159
    new-instance v6, Ljava/time/chrono/JapaneseEra;

    const/16 v8, 0x7e3

    const/4 v9, 0x5

    invoke-static {v8, v9, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v6, v9, v8}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v6, Ljava/time/chrono/JapaneseEra;->REIWA:Ljava/time/chrono/JapaneseEra;

    .line 163
    invoke-virtual {v6}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v8

    add-int/2addr v8, v7

    sput v8, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .line 174
    sget-object v8, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v8

    sput-object v8, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    .line 176
    array-length v8, v8

    new-array v8, v8, [Ljava/time/chrono/JapaneseEra;

    sput-object v8, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    .line 177
    aput-object v0, v8, v4

    .line 178
    aput-object v1, v8, v2

    .line 179
    aput-object v3, v8, v7

    .line 180
    aput-object v5, v8, v9

    .line 181
    const/4 v0, 0x4

    aput-object v6, v8, v0

    .line 182
    sget v0, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .local v0, "i":I
    :goto_71
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v3, v1

    if-ge v0, v3, :cond_9b

    .line 183
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 184
    .local v1, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v3

    .line 185
    .local v3, "isoDate":Ljava/time/LocalDate;
    sget-object v4, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    new-instance v5, Ljava/time/chrono/JapaneseEra;

    add-int/lit8 v6, v0, -0x2

    add-int/2addr v6, v2

    invoke-direct {v5, v6, v3}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    aput-object v5, v4, v0

    .line 182
    .end local v1    # "date":Lsun/util/calendar/CalendarDate;
    .end local v3    # "isoDate":Ljava/time/LocalDate;
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 187
    .end local v0    # "i":I
    :cond_9b
    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/time/LocalDate;)V
    .registers 3
    .param p1, "eraValue"    # I
    .param p2, "since"    # Ljava/time/LocalDate;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    .line 206
    iput-object p2, p0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    .line 207
    return-void
.end method

.method static greylist-max-o from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;
    .registers 4
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 311
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 314
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-lez v0, :cond_1f

    .line 315
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    .line 316
    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v1, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_1c

    .line 317
    return-object v1

    .line 314
    .end local v1    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 320
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0

    .line 312
    :cond_21
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api of(I)Ljava/time/chrono/JapaneseEra;
    .registers 4
    .param p0, "japaneseEra"    # I

    .line 240
    sget-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    iget v0, v0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    if-lt p0, v0, :cond_14

    add-int/lit8 v0, p0, 0x2

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v2, v1

    if-gt v0, v2, :cond_14

    .line 243
    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0

    .line 241
    :cond_14
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o ordinal(I)I
    .registers 2
    .param p0, "eraValue"    # I

    .line 350
    add-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static greylist-max-o privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;
    .registers 4
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .line 333
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-lez v0, :cond_1b

    .line 334
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    .line 335
    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v1, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_18

    .line 336
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    return-object v2

    .line 333
    .end local v1    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 339
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 449
    .local v0, "eraValue":B
    invoke-static {v0}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "privateEra"    # Lsun/util/calendar/Era;

    .line 324
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_19

    .line 325
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 326
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    .line 324
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 329
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .registers 6
    .param p0, "japaneseEra"    # Ljava/lang/String;

    .line 257
    const-string v0, "japaneseEra"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 259
    .local v3, "era":Ljava/time/chrono/JapaneseEra;
    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 260
    return-object v3

    .line 258
    .end local v3    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 263
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "japaneseEra is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api values()[Ljava/time/chrono/JapaneseEra;
    .registers 2

    .line 278
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 440
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o getAbbreviation()Ljava/lang/String;
    .registers 3

    .line 404
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "style"    # Ljava/time/format/TextStyle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 291
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    sget v1, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_21

    .line 292
    const-string v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Ljava/time/format/TextStyle;->asNormal()Ljava/time/format/TextStyle;

    move-result-object v0

    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    .line 296
    :cond_21
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 297
    invoke-virtual {v0, v1, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 298
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    .line 299
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 300
    sget-object v1, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    if-ne p0, v1, :cond_3d

    sget-object v1, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    goto :goto_3f

    :cond_3d
    iget-object v1, p0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method greylist-max-o getName()Ljava/lang/String;
    .registers 3

    .line 408
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPrivateEra()Lsun/util/calendar/Era;
    .registers 3

    .line 216
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    iget v1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 365
    iget v0, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public whitelist test-api range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 396
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 397
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 399
    :cond_d
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 413
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

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

    .line 444
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 445
    return-void
.end method
