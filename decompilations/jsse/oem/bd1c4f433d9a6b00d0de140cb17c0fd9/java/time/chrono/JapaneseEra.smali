.class public final Ljava/time/chrono/JapaneseEra;
.super Ljava/lang/Object;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/time/chrono/Era;
.implements Ljava/io/Serializable;


# static fields
.field static final ERA_CONFIG:[Lsun/util/calendar/Era;

.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Ljava/time/chrono/JapaneseEra;

.field private static final KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

.field public static final MEIJI:Ljava/time/chrono/JapaneseEra;

.field private static final N_ERA_CONSTANTS:I

.field public static final SHOWA:Ljava/time/chrono/JapaneseEra;

.field public static final TAISHO:Ljava/time/chrono/JapaneseEra;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient eraValue:I

.field private final transient since:Ljava/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 111
    new-instance v3, Ljava/time/chrono/JapaneseEra;

    const/16 v4, 0x74c

    invoke-static {v4, v7, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v3, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    .line 116
    new-instance v3, Ljava/time/chrono/JapaneseEra;

    const/16 v4, 0x778

    const/4 v5, 0x7

    const/16 v6, 0x1e

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v3, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    .line 121
    new-instance v3, Ljava/time/chrono/JapaneseEra;

    const/16 v4, 0x786

    const/16 v5, 0xc

    const/16 v6, 0x19

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v3, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    .line 126
    new-instance v3, Ljava/time/chrono/JapaneseEra;

    const/16 v4, 0x7c5

    const/16 v5, 0x8

    invoke-static {v4, v7, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    invoke-direct {v3, v9, v4}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    sput-object v3, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    .line 130
    sget-object v3, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sput v3, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .line 141
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v3

    sput-object v3, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    .line 143
    sget-object v3, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v3, v3

    new-array v3, v3, [Ljava/time/chrono/JapaneseEra;

    sput-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    .line 144
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v4, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    aput-object v4, v3, v8

    .line 145
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v4, Ljava/time/chrono/JapaneseEra;->TAISHO:Ljava/time/chrono/JapaneseEra;

    aput-object v4, v3, v7

    .line 146
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v4, Ljava/time/chrono/JapaneseEra;->SHOWA:Ljava/time/chrono/JapaneseEra;

    aput-object v4, v3, v9

    .line 147
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v4, Ljava/time/chrono/JapaneseEra;->HEISEI:Ljava/time/chrono/JapaneseEra;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 148
    sget v1, Ljava/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    .local v1, "i":I
    :goto_75
    sget-object v3, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge v1, v3, :cond_a2

    .line 149
    sget-object v3, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 150
    .local v0, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v4

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    .line 151
    .local v2, "isoDate":Ljava/time/LocalDate;
    sget-object v3, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    new-instance v4, Ljava/time/chrono/JapaneseEra;

    add-int/lit8 v5, v1, -0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5, v2}, Ljava/time/chrono/JapaneseEra;-><init>(ILjava/time/LocalDate;)V

    aput-object v4, v3, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 98
    .end local v0    # "date":Lsun/util/calendar/CalendarDate;
    .end local v2    # "isoDate":Ljava/time/LocalDate;
    :cond_a2
    return-void
.end method

.method private constructor <init>(ILjava/time/LocalDate;)V
    .registers 3
    .param p1, "eraValue"    # I
    .param p2, "since"    # Ljava/time/LocalDate;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    .line 172
    iput-object p2, p0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    .line 173
    return-void
.end method

.method static from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;
    .registers 5
    .param p0, "date"    # Ljava/time/LocalDate;

    .prologue
    .line 247
    sget-object v2, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 248
    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_11
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_16
    if-lez v1, :cond_28

    .line 251
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v0, v2, v1

    .line 252
    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_25

    .line 253
    return-object v0

    .line 250
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 256
    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_28
    const/4 v2, 0x0

    return-object v2
.end method

.method public static of(I)Ljava/time/chrono/JapaneseEra;
    .registers 4
    .param p0, "japaneseEra"    # I

    .prologue
    .line 198
    sget-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    iget v0, v0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    if-lt p0, v0, :cond_d

    add-int/lit8 v0, p0, 0x2

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v1

    if-le v0, v1, :cond_27

    .line 199
    :cond_d
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_27
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static ordinal(I)I
    .registers 2
    .param p0, "eraValue"    # I

    .prologue
    .line 286
    add-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;
    .registers 4
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 269
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_5
    if-lez v1, :cond_1b

    .line 270
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v0, v2, v1

    .line 271
    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    iget-object v2, v0, Ljava/time/chrono/JapaneseEra;->since:Ljava/time/LocalDate;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_18

    .line 272
    sget-object v2, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v2, v2, v1

    return-object v2

    .line 269
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 275
    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 389
    .local v0, "eraValue":B
    invoke-static {v0}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
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
    .line 364
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;
    .registers 3
    .param p0, "privateEra"    # Lsun/util/calendar/Era;

    .prologue
    .line 260
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_19

    .line 261
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 262
    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    .line 260
    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 265
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/JapaneseEra;
    .registers 6
    .param p0, "japaneseEra"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v1, "japaneseEra"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 216
    sget-object v2, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_a
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 217
    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 218
    return-object v0

    .line 216
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 221
    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "japaneseEra is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static values()[Ljava/time/chrono/JapaneseEra;
    .registers 2

    .prologue
    .line 236
    sget-object v0, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    sget-object v1, Ljava/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljava/time/chrono/JapaneseEra;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 380
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method getAbbreviation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v0

    .line 341
    .local v0, "index":I
    if-nez v0, :cond_e

    .line 342
    const-string/jumbo v1, ""

    return-object v1

    .line 344
    :cond_e
    sget-object v1, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
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

.method getPrivateEra()Lsun/util/calendar/Era;
    .registers 3

    .prologue
    .line 182
    sget-object v0, Ljava/time/chrono/JapaneseEra;->ERA_CONFIG:[Lsun/util/calendar/Era;

    iget v1, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Ljava/time/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 332
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    .line 333
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 335
    :cond_d
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

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
    .line 384
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 385
    return-void
.end method
