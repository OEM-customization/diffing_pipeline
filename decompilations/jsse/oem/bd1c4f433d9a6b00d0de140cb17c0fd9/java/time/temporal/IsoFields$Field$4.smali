.class final enum Ljava/time/temporal/IsoFields$Field$4;
.super Ljava/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjava/time/temporal/IsoFields$Field;)V

    .line 1
    return-void
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
    .line 536
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 537
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v7, "Unsupported field: WeekBasedYear"

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 539
    :cond_f
    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Field$4;->range()Ljava/time/temporal/ValueRange;

    move-result-object v6

    sget-object v7, Ljava/time/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Ljava/time/temporal/IsoFields$Field;

    invoke-virtual {v6, p2, p3, v7}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    .line 540
    .local v3, "newWby":I
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 541
    .local v0, "date":Ljava/time/LocalDate;
    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v6}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    .line 542
    .local v2, "dow":I
    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-wrap3(Ljava/time/LocalDate;)I

    move-result v5

    .line 543
    .local v5, "week":I
    const/16 v6, 0x35

    if-ne v5, v6, :cond_35

    invoke-static {v3}, Ljava/time/temporal/IsoFields$Field;->-wrap2(I)I

    move-result v6

    const/16 v7, 0x34

    if-ne v6, v7, :cond_35

    .line 544
    const/16 v5, 0x34

    .line 546
    :cond_35
    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v3, v6, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    .line 547
    .local v4, "resolved":Ljava/time/LocalDate;
    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v6}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    mul-int/lit8 v7, v7, 0x7

    add-int v1, v6, v7

    .line 548
    .local v1, "days":I
    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v4

    .line 549
    invoke-interface {p1, v4}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v6

    return-object v6
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 512
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Ljava/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 529
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_f
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljava/time/temporal/IsoFields$Field;->-wrap1(Ljava/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .prologue
    .line 516
    sget-object v0, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 524
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Ljava/time/temporal/IsoFields$Field;->-wrap0(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .registers 2

    .prologue
    .line 520
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 553
    const-string/jumbo v0, "WeekBasedYear"

    return-object v0
.end method
