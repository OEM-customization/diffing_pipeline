.class abstract enum Ljava/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/IsoFields$Field;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/IsoFields$Field;

.field public static final enum greylist-max-o DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

.field private static final greylist-max-o QUARTER_DAYS:[I

.field public static final enum greylist-max-o QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum greylist-max-o WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

.field public static final enum greylist-max-o WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 290
    new-instance v0, Ljava/time/temporal/IsoFields$Field$1;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljava/time/temporal/IsoFields$Field;

    .line 379
    new-instance v1, Ljava/time/temporal/IsoFields$Field$2;

    const-string v3, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 417
    new-instance v3, Ljava/time/temporal/IsoFields$Field$3;

    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 509
    new-instance v5, Ljava/time/temporal/IsoFields$Field$4;

    const-string v7, "WEEK_BASED_YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    .line 289
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/time/temporal/IsoFields$Field;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    .line 573
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_40
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/time/temporal/IsoFields$1;

    .line 289
    invoke-direct {p0, p1, p2}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist access$100(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 2
    .param p0, "x0"    # Ljava/time/temporal/TemporalAccessor;

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200()[I
    .registers 1

    .line 289
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic blacklist access$300(Ljava/time/temporal/TemporalAccessor;)V
    .registers 1
    .param p0, "x0"    # Ljava/time/temporal/TemporalAccessor;

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->ensureIso(Ljava/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method static synthetic blacklist access$400(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .registers 2
    .param p0, "x0"    # Ljava/time/LocalDate;

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Ljava/time/LocalDate;)I
    .registers 2
    .param p0, "x0"    # Ljava/time/LocalDate;

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeek(Ljava/time/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$600(Ljava/time/LocalDate;)I
    .registers 2
    .param p0, "x0"    # Ljava/time/LocalDate;

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$700(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 289
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o ensureIso(Ljava/time/temporal/TemporalAccessor;)V
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 580
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->isIso(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 583
    return-void

    .line 581
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Resolve requires IsoChronology"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getWeek(Ljava/time/LocalDate;)I
    .registers 11
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 600
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    .line 601
    .local v0, "dow0":I
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 602
    .local v1, "doy0":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    .line 603
    .local v3, "doyThu0":I
    div-int/lit8 v4, v3, 0x7

    .line 604
    .local v4, "alignedWeek":I
    mul-int/lit8 v5, v4, 0x7

    sub-int v5, v3, v5

    .line 605
    .local v5, "firstThuDoy0":I
    add-int/lit8 v6, v5, -0x3

    .line 606
    .local v6, "firstMonDoy0":I
    const/4 v7, -0x3

    if-ge v6, v7, :cond_1e

    .line 607
    add-int/lit8 v6, v6, 0x7

    .line 609
    :cond_1e
    if-ge v1, v6, :cond_36

    .line 610
    const/16 v2, 0xb4

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v2

    const-wide/16 v7, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/time/LocalDate;->minusYears(J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-static {v2}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v7

    long-to-int v2, v7

    return v2

    .line 612
    :cond_36
    sub-int v8, v1, v6

    div-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v2

    .line 613
    .local v8, "week":I
    const/16 v9, 0x35

    if-ne v8, v9, :cond_4f

    .line 614
    if-eq v6, v7, :cond_4c

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4b

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v7

    if-eqz v7, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :cond_4c
    :goto_4c
    if-nez v2, :cond_4f

    .line 615
    const/4 v8, 0x1

    .line 618
    :cond_4f
    return v8
.end method

.method private static greylist-max-o getWeekBasedYear(Ljava/time/LocalDate;)I
    .registers 6
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 622
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    .line 623
    .local v0, "year":I
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v1

    .line 624
    .local v1, "doy":I
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1b

    .line 625
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v2

    .line 626
    .local v2, "dow":I
    sub-int v3, v1, v2

    const/4 v4, -0x2

    if-ge v3, v4, :cond_36

    .line 627
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 629
    .end local v2    # "dow":I
    :cond_1b
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_36

    .line 630
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v2

    .line 631
    .restart local v2    # "dow":I
    add-int/lit16 v3, v1, -0x16b

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v4

    sub-int v1, v3, v4

    .line 632
    sub-int v3, v1, v2

    if-ltz v3, :cond_37

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 629
    .end local v2    # "dow":I
    :cond_36
    :goto_36
    nop

    .line 636
    :cond_37
    :goto_37
    return v0
.end method

.method private static greylist-max-o getWeekRange(I)I
    .registers 4
    .param p0, "wby"    # I

    .line 591
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 593
    .local v0, "date":Ljava/time/LocalDate;
    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljava/time/DayOfWeek;->THURSDAY:Ljava/time/DayOfWeek;

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    sget-object v2, Ljava/time/DayOfWeek;->WEDNESDAY:Ljava/time/DayOfWeek;

    if-ne v1, v2, :cond_1c

    invoke-virtual {v0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1f

    .line 596
    :cond_1c
    const/16 v1, 0x34

    return v1

    .line 594
    :cond_1f
    :goto_1f
    const/16 v1, 0x35

    return v1
.end method

.method private static greylist-max-o getWeekRange(Ljava/time/LocalDate;)Ljava/time/temporal/ValueRange;
    .registers 6
    .param p0, "date"    # Ljava/time/LocalDate;

    .line 586
    invoke-static {p0}, Ljava/time/temporal/IsoFields$Field;->getWeekBasedYear(Ljava/time/LocalDate;)I

    move-result v0

    .line 587
    .local v0, "wby":I
    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o isIso(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 576
    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Field;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 289
    const-class v0, Ljava/time/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/IsoFields$Field;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/time/temporal/IsoFields$Field;
    .registers 1

    .line 289
    sget-object v0, Ljava/time/temporal/IsoFields$Field;->$VALUES:[Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Ljava/time/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api isDateBased()Z
    .registers 2

    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
    .registers 2

    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 569
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
