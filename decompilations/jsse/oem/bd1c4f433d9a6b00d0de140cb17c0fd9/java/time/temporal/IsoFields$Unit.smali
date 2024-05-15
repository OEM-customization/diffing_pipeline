.class final enum Ljava/time/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Ljava/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/IsoFields$Unit;",
        ">;",
        "Ljava/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/IsoFields$Unit;

.field private static final synthetic -java-time-temporal-IsoFields$UnitSwitchesValues:[I

.field public static final enum QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;


# instance fields
.field private final duration:Ljava/time/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic -getjava-time-temporal-IsoFields$UnitSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->-java-time-temporal-IsoFields$UnitSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->-java-time-temporal-IsoFields$UnitSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/time/temporal/IsoFields$Unit;->values()[Ljava/time/temporal/IsoFields$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    invoke-virtual {v1}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->-java-time-temporal-IsoFields$UnitSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    new-instance v0, Ljava/time/temporal/IsoFields$Unit;

    const-string/jumbo v1, "WEEK_BASED_YEARS"

    .line 649
    const-string/jumbo v2, "WeekBasedYears"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 646
    invoke-direct {v0, v1, v6, v2, v3}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 649
    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 650
    new-instance v0, Ljava/time/temporal/IsoFields$Unit;

    const-string/jumbo v1, "QUARTER_YEARS"

    .line 653
    const-string/jumbo v2, "QuarterYears"

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v3

    .line 650
    invoke-direct {v0, v1, v7, v2, v3}, Ljava/time/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V

    .line 653
    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    .line 644
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/temporal/IsoFields$Unit;

    sget-object v1, Ljava/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljava/time/temporal/IsoFields$Unit;

    aput-object v1, v0, v6

    sget-object v1, Ljava/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljava/time/temporal/IsoFields$Unit;

    aput-object v1, v0, v7

    sput-object v0, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/Duration;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Ljava/time/Duration;

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 659
    iput-object p3, p0, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    .line 660
    iput-object p4, p0, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    .line 661
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/IsoFields$Unit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 644
    const-class v0, Ljava/time/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/IsoFields$Unit;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/IsoFields$Unit;
    .registers 1

    .prologue
    .line 644
    sget-object v0, Ljava/time/temporal/IsoFields$Unit;->$VALUES:[Ljava/time/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 10
    .param p2, "amount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    const-wide/16 v4, 0x100

    .line 691
    invoke-static {}, Ljava/time/temporal/IsoFields$Unit;->-getjava-time-temporal-IsoFields$UnitSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 700
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :pswitch_18
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 694
    sget-object v1, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {p1, v1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    .line 693
    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 697
    :pswitch_2a
    div-long v0, p2, v4

    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    .line 698
    rem-long v2, p2, v4

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    .line 697
    invoke-interface {v0, v2, v3, v1}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    .line 691
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_18
    .end packed-switch
.end method

.method public between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J
    .registers 7
    .param p1, "temporal1Inclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "temporal2Exclusive"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 707
    invoke-interface {p1, p2, p0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0

    .line 709
    :cond_f
    invoke-static {}, Ljava/time/temporal/IsoFields$Unit;->-getjava-time-temporal-IsoFields$UnitSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :pswitch_25
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {p2, v0}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    .line 712
    sget-object v2, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {p1, v2}, Ljava/time/temporal/Temporal;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    .line 711
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0

    .line 714
    :pswitch_36
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, v0}, Ljava/time/temporal/Temporal;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    .line 709
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_36
        :pswitch_25
    .end packed-switch
.end method

.method public getDuration()Ljava/time/Duration;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Ljava/time/temporal/IsoFields$Unit;->duration:Ljava/time/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public isDurationEstimated()Z
    .registers 2

    .prologue
    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/Temporal;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 685
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/Temporal;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Ljava/time/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
