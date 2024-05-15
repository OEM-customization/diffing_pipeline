.class Ljava/time/temporal/WeekFields$ComputedDayOfField;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/WeekFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputedDayOfField"
.end annotation


# static fields
.field private static final DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

.field private static final WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final name:Ljava/lang/String;

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;

.field private final weekDef:Ljava/time/temporal/WeekFields;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x34

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    .line 753
    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    .line 754
    const-wide/16 v4, 0x4

    const-wide/16 v6, 0x6

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    sput-object v4, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    .line 755
    const-wide/16 v6, 0x36

    move-wide v4, v8

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    .line 756
    const-wide/16 v6, 0x35

    move-wide v4, v8

    invoke-static/range {v2 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    .line 666
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "weekDef"    # Ljava/time/temporal/WeekFields;
    .param p3, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p4, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "range"    # Ljava/time/temporal/ValueRange;

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    .line 747
    iput-object p2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    .line 748
    iput-object p3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 749
    iput-object p4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 750
    iput-object p5, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    .line 751
    return-void
.end method

.method private computeWeek(II)I
    .registers 5
    .param p1, "offset"    # I
    .param p2, "day"    # I

    .prologue
    .line 889
    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private localizedDayOfWeek(I)I
    .registers 5
    .param p1, "isoDow"    # I

    .prologue
    .line 782
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    .line 783
    .local v0, "sow":I
    sub-int v1, p1, v0

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 776
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v2}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    .line 777
    .local v1, "sow":I
    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 778
    .local v0, "isoDow":I
    sub-int v2, v0, v1

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .registers 12
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 807
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v1

    .line 808
    .local v1, "dow":I
    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    .line 809
    .local v6, "year":I
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 810
    .local v2, "doy":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    .line 811
    .local v4, "offset":I
    invoke-direct {p0, v4, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v5

    .line 812
    .local v5, "week":I
    if-nez v5, :cond_1d

    .line 814
    add-int/lit8 v8, v6, -0x1

    return v8

    .line 818
    :cond_1d
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    .line 819
    .local v0, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    .line 820
    .local v7, "yearLen":I
    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v4, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 821
    .local v3, "newYearWeek":I
    if-lt v5, v3, :cond_38

    .line 822
    add-int/lit8 v8, v6, 0x1

    return v8

    .line 825
    :cond_38
    return v6
.end method

.method private localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 787
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v1

    .line 788
    .local v1, "dow":I
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 789
    .local v0, "dom":I
    invoke-direct {p0, v0, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 790
    .local v2, "offset":I
    invoke-direct {p0, v2, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    return-wide v4
.end method

.method private localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I
    .registers 13
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 838
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 839
    .local v2, "dow":I
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 840
    .local v3, "doy":I
    invoke-direct {p0, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    .line 841
    .local v5, "offset":I
    invoke-direct {p0, v5, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    .line 842
    .local v6, "week":I
    if-nez v6, :cond_28

    .line 845
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 846
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    int-to-long v8, v3

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 847
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    return v8

    .line 848
    .end local v0    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_28
    const/16 v8, 0x32

    if-le v6, v8, :cond_48

    .line 851
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 852
    .local v1, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    .line 853
    .local v7, "yearLen":I
    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v5, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 854
    .local v4, "newYearWeek":I
    if-lt v6, v4, :cond_48

    .line 856
    sub-int v8, v6, v4

    add-int/lit8 v6, v8, 0x1

    .line 859
    .end local v1    # "dayRange":Ljava/time/temporal/ValueRange;
    .end local v4    # "newYearWeek":I
    .end local v7    # "yearLen":I
    :cond_48
    return v6
.end method

.method private localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J
    .registers 8
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 795
    .local v0, "dow":I
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 796
    .local v1, "doy":I
    invoke-direct {p0, v1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 797
    .local v2, "offset":I
    invoke-direct {p0, v2, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    return-wide v4
.end method

.method static ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .prologue
    .line 676
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "DayOfWeek"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->DAY_OF_WEEK_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 14
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "yowby"    # I
    .param p3, "wowby"    # I
    .param p4, "dow"    # I

    .prologue
    const/4 v6, 0x1

    .line 726
    invoke-interface {p1, p2, v6, v6}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 727
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 728
    .local v2, "ldow":I
    invoke-direct {p0, v6, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v4

    .line 731
    .local v4, "offset":I
    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->lengthOfYear()I

    move-result v5

    .line 732
    .local v5, "yearLen":I
    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v6}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v5

    invoke-direct {p0, v4, v6}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    .line 733
    .local v3, "newYearWeek":I
    add-int/lit8 v6, v3, -0x1

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 735
    neg-int v6, v4

    add-int/lit8 v7, p4, -0x1

    add-int/2addr v6, v7

    add-int/lit8 v7, p3, -0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v1, v6, v7

    .line 736
    .local v1, "days":I
    int-to-long v6, v1

    sget-object v8, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v6

    return-object v6
.end method

.method static ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .prologue
    .line 712
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekBasedYear"

    sget-object v3, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .prologue
    .line 685
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfMonth"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_MONTH_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .prologue
    .line 703
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfWeekBasedYear"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_WEEK_BASED_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method static ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;
    .registers 7
    .param p0, "weekDef"    # Ljava/time/temporal/WeekFields;

    .prologue
    .line 694
    new-instance v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;

    const-string/jumbo v1, "WeekOfYear"

    sget-object v3, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ljava/time/temporal/WeekFields$ComputedDayOfField;-><init>(Ljava/lang/String;Ljava/time/temporal/WeekFields;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    return-object v0
.end method

.method private rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 11
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    .line 1114
    .local v0, "dow":I
    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v2

    .line 1115
    .local v2, "offset":I
    invoke-interface {p1, p2}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 1116
    .local v1, "fieldRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-direct {p0, v2, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v4, v3

    .line 1117
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-direct {p0, v2, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v3

    int-to-long v6, v3

    .line 1116
    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v3

    return-object v3
.end method

.method private rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 14
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1126
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1127
    sget-object v8, Ljava/time/temporal/WeekFields$ComputedDayOfField;->WEEK_OF_YEAR_RANGE:Ljava/time/temporal/ValueRange;

    return-object v8

    .line 1129
    :cond_b
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v2

    .line 1130
    .local v2, "dow":I
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 1131
    .local v3, "doy":I
    invoke-direct {p0, v3, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->startOfWeekOffset(II)I

    move-result v5

    .line 1132
    .local v5, "offset":I
    invoke-direct {p0, v5, v3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v6

    .line 1133
    .local v6, "week":I
    if-nez v6, :cond_35

    .line 1136
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1137
    .local v0, "date":Ljava/time/chrono/ChronoLocalDate;
    add-int/lit8 v8, v3, 0x7

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1138
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    .line 1141
    .end local v0    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_35
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 1142
    .local v1, "dayRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v7, v8

    .line 1143
    .local v7, "yearLen":I
    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v8}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {p0, v5, v8}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->computeWeek(II)I

    move-result v4

    .line 1145
    .local v4, "newYearWeek":I
    if-lt v6, v4, :cond_67

    .line 1147
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1148
    .restart local v0    # "date":Ljava/time/chrono/ChronoLocalDate;
    sub-int v8, v7, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x7

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v0, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 1149
    invoke-direct {p0, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8

    .line 1151
    .end local v0    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_67
    const-wide/16 v8, 0x1

    add-int/lit8 v10, v4, -0x1

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v8

    return-object v8
.end method

.method private resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 19
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "localDow"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "I",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {v9}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v10

    .line 1008
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    .line 1007
    invoke-virtual {v10, v12, v13, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    .line 1010
    .local v8, "yowby":I
    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v9, :cond_6a

    .line 1011
    const/4 v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v8, v9, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 1012
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1013
    .local v6, "wowby":J
    const-wide/16 v10, 0x1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 1014
    .local v4, "weeks":J
    sget-object v9, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 1023
    .end local v4    # "weeks":J
    .end local v6    # "wowby":J
    :cond_4f
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    return-object v2

    .line 1016
    .end local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    :cond_6a
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {v9}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v10

    .line 1017
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v9}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v9

    .line 1016
    invoke-virtual {v10, v12, v13, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 1018
    .local v3, "wowby":I
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v8, v3, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 1019
    .restart local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v9, :cond_4f

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    if-eq v9, v8, :cond_4f

    .line 1020
    new-instance v9, Ljava/time/DateTimeException;

    const-string/jumbo v10, "Strict mode rejected resolved date as it is in a different week-based-year"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 24
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "month"    # J
    .param p6, "wom"    # J
    .param p8, "localDow"    # I
    .param p9, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v9, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p9

    if-ne v0, v9, :cond_52

    .line 961
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v9, v10}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v9

    const-wide/16 v10, 0x1

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v10

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v9, v10, v11, v12}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 962
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 963
    .local v6, "weeks":J
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v3, p8, v9

    .line 964
    .local v3, "days":I
    const-wide/16 v10, 0x7

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v10

    int-to-long v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 976
    .end local v6    # "weeks":J
    :cond_3f
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v9, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    return-object v2

    .line 966
    .end local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    .end local v3    # "days":I
    :cond_52
    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    .line 967
    .local v4, "monthValid":I
    const/4 v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v4, v9}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 968
    .restart local v2    # "date":Ljava/time/chrono/ChronoLocalDate;
    iget-object v9, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, p6

    invoke-virtual {v9, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v8

    .line 969
    .local v8, "womInt":I
    int-to-long v10, v8

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v5, v10

    .line 970
    .local v5, "weeks":I
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v9

    sub-int v3, p8, v9

    .line 971
    .restart local v3    # "days":I
    mul-int/lit8 v9, v5, 0x7

    add-int/2addr v9, v3

    int-to-long v10, v9

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v10, v11, v9}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 972
    sget-object v9, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p9

    if-ne v0, v9, :cond_3f

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v9}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v10

    cmp-long v9, v10, p4

    if-eqz v9, :cond_3f

    .line 973
    new-instance v9, Ljava/time/DateTimeException;

    const-string/jumbo v10, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 20
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "year"    # I
    .param p4, "woy"    # J
    .param p6, "localDow"    # I
    .param p7, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "IJI",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-interface {p2, p3, v8, v9}, Ljava/time/chrono/Chronology;->date(III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 986
    .local v2, "date":Ljava/time/chrono/ChronoLocalDate;
    sget-object v8, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p7

    if-ne v0, v8, :cond_3b

    .line 987
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v8

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v6

    .line 988
    .local v6, "weeks":J
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int v3, p6, v8

    .line 989
    .local v3, "days":I
    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v8

    int-to-long v10, v3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 999
    .end local v6    # "weeks":J
    :cond_2d
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    return-object v2

    .line 991
    .end local v3    # "days":I
    :cond_3b
    iget-object v8, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v5

    .line 992
    .local v5, "womInt":I
    int-to-long v8, v5

    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v4, v8

    .line 993
    .local v4, "weeks":I
    invoke-direct {p0, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v8

    sub-int v3, p6, v8

    .line 994
    .restart local v3    # "days":I
    mul-int/lit8 v8, v4, 0x7

    add-int/2addr v8, v3

    int-to-long v8, v8

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v2, v8, v9, v10}, Ljava/time/chrono/ChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 995
    sget-object v8, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p7

    if-ne v0, v8, :cond_2d

    sget-object v8, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v8}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2d

    .line 996
    new-instance v8, Ljava/time/DateTimeException;

    const-string/jumbo v9, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private startOfWeekOffset(II)I
    .registers 7
    .param p1, "day"    # I
    .param p2, "dow"    # I

    .prologue
    .line 871
    sub-int v2, p1, p2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    .line 872
    .local v1, "weekStart":I
    neg-int v0, v1

    .line 873
    .local v0, "offset":I
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v3}, Ljava/time/temporal/WeekFields;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-le v2, v3, :cond_14

    .line 875
    rsub-int/lit8 v0, v1, 0x7

    .line 877
    :cond_14
    return v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 12
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    invoke-virtual {v4, p2, p3, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 897
    .local v2, "newVal":I
    invoke-interface {p1, p0}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    .line 898
    .local v0, "currentVal":I
    if-ne v2, v0, :cond_d

    .line 899
    return-object p1

    .line 902
    :cond_d
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_31

    .line 905
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get0(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    .line 906
    .local v1, "idow":I
    iget-object v4, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    .line 907
    .local v3, "wowby":I
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v4

    long-to-int v5, p2

    invoke-direct {p0, v4, v5, v3, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYear(Ljava/time/chrono/Chronology;III)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 910
    .end local v1    # "idow":I
    .end local v3    # "wowby":I
    :cond_31
    sub-int v4, v2, v0

    int-to-long v4, v4

    iget-object v6, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    invoke-interface {p1, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v4

    return-object v4
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1033
    const-string/jumbo v2, "locale"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1034
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_27

    .line 1037
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1036
    invoke-static {v2}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 1039
    .local v0, "dateTimePatternGenerator":Landroid/icu/text/DateTimePatternGenerator;
    const/4 v2, 0x4

    .line 1038
    invoke-virtual {v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_24

    .end local v1    # "icuName":Ljava/lang/String;
    :goto_23
    return-object v1

    .restart local v1    # "icuName":Ljava/lang/String;
    :cond_24
    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    goto :goto_23

    .line 1042
    .end local v0    # "dateTimePatternGenerator":Landroid/icu/text/DateTimePatternGenerator;
    .end local v1    # "icuName":Ljava/lang/String;
    :cond_27
    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    return-object v2
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 760
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_c

    .line 761
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 762
    :cond_c
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_17

    .line 763
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfMonth(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 764
    :cond_17
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_22

    .line 765
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfYear(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 766
    :cond_22
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    .line 767
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 768
    :cond_2e
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3a

    .line 769
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 771
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 1052
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    .prologue
    .line 1057
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1073
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1074
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_10

    .line 1075
    const/4 v0, 0x1

    return v0

    .line 1076
    :cond_10
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_1d

    .line 1077
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1078
    :cond_1d
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_2a

    .line 1079
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1080
    :cond_2a
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_37

    .line 1081
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1082
    :cond_37
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_44

    .line 1083
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 1086
    :cond_44
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 5
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 1091
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_9

    .line 1092
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    return-object v0

    .line 1093
    :cond_9
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_16

    .line 1094
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1095
    :cond_16
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_23

    .line 1096
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-direct {p0, p1, v0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeByWeek(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_23
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-ne v0, v1, :cond_2e

    .line 1098
    invoke-direct {p0, p1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeWeekOfWeekBasedYear(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1099
    :cond_2e
    iget-object v0, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v0, v1, :cond_3b

    .line 1100
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 1102
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unreachable, rangeUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 34
    .param p2, "partialTemporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/temporal/TemporalAccessor;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 918
    .local v28, "value":J
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toIntExact(J)I

    move-result v26

    .line 922
    .local v26, "newValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_55

    .line 923
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->range:Ljava/time/temporal/ValueRange;

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    invoke-virtual {v4, v0, v1, v2}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v22

    .line 924
    .local v22, "checkedValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v4}, Ljava/time/temporal/WeekFields;->getFirstDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/DayOfWeek;->getValue()I

    move-result v27

    .line 925
    .local v27, "startDow":I
    add-int/lit8 v4, v27, -0x1

    add-int/lit8 v5, v22, -0x1

    add-int/2addr v4, v5

    const/4 v5, 0x7

    invoke-static {v4, v5}, Ljava/lang/Math;->floorMod(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 926
    .local v24, "isoDow":J
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const/4 v4, 0x0

    return-object v4

    .line 932
    .end local v22    # "checkedValue":I
    .end local v24    # "isoDow":J
    .end local v27    # "startDow":I
    :cond_55
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 933
    const/4 v4, 0x0

    return-object v4

    .line 935
    :cond_61
    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v23

    .line 936
    .local v23, "isoDow":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->localizedDayOfWeek(I)I

    move-result v12

    .line 939
    .local v12, "dow":I
    invoke-static/range {p2 .. p2}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v6

    .line 940
    .local v6, "chrono":Ljava/time/chrono/Chronology;
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 941
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v7

    .line 942
    .local v7, "year":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_cd

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 943
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 944
    .local v8, "month":J
    move/from16 v0, v26

    int-to-long v10, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v13, p3

    invoke-direct/range {v4 .. v13}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoM(Ljava/util/Map;Ljava/time/chrono/Chronology;IJJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 946
    .end local v8    # "month":J
    :cond_cd
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_126

    .line 947
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    move-object/from16 v21, p3

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWoY(Ljava/util/Map;Ljava/time/chrono/Chronology;IJILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 949
    .end local v7    # "year":I
    :cond_eb
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    if-eq v4, v5, :cond_fb

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-ne v4, v5, :cond_126

    .line 950
    :cond_fb
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get1(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 949
    if-eqz v4, :cond_126

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-static {v4}, Ljava/time/temporal/WeekFields;->-get2(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 949
    if-eqz v4, :cond_126

    .line 952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v6, v12, v2}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolveWBY(Ljava/util/Map;Ljava/time/chrono/Chronology;ILjava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 954
    :cond_126
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/temporal/TemporalAccessor;
    .registers 5

    .prologue
    .line 914
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->resolve(Ljava/util/Map;Ljava/time/temporal/TemporalAccessor;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/temporal/WeekFields$ComputedDayOfField;->weekDef:Ljava/time/temporal/WeekFields;

    invoke-virtual {v1}, Ljava/time/temporal/WeekFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
