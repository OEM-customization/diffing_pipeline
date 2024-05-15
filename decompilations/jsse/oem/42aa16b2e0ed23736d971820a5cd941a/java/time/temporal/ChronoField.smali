.class public final enum Ljava/time/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/temporal/ChronoField;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api EPOCH_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api ERA:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api NANO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist core-platform-api test-api YEAR_OF_ERA:Ljava/time/temporal/ChronoField;


# instance fields
.field private final greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final greylist-max-o displayNameKey:Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 32

    .line 122
    new-instance v7, Ljava/time/temporal/ChronoField;

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v7, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 138
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide v1, 0x4e94914effffL

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "NANO_OF_DAY"

    const/4 v14, 0x1

    const-string v15, "NanoOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 158
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v1, 0xf423f

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MICRO_OF_SECOND"

    const/4 v3, 0x2

    const-string v4, "MicroOfSecond"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 177
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide v1, 0x141dd75fffL

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MICRO_OF_DAY"

    const/4 v14, 0x3

    const-string v15, "MicroOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 197
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3e7

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MILLI_OF_SECOND"

    const/4 v3, 0x4

    const-string v4, "MilliOfSecond"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 216
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v1, 0x5265bff

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MILLI_OF_DAY"

    const/4 v14, 0x5

    const-string v15, "MilliOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 226
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3b

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v20, "SECOND_OF_MINUTE"

    const/16 v21, 0x6

    const-string v22, "SecondOfMinute"

    const-string v26, "second"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 238
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v3, 0x1517f

    invoke-static {v8, v9, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "SECOND_OF_DAY"

    const/4 v14, 0x7

    const-string v15, "SecondOfDay"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 248
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v20, "MINUTE_OF_HOUR"

    const/16 v21, 0x8

    const-string v22, "MinuteOfHour"

    const-string v26, "minute"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 259
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x59f

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "MINUTE_OF_DAY"

    const/16 v3, 0x9

    const-string v4, "MinuteOfDay"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 273
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0xb

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "HOUR_OF_AMPM"

    const/16 v14, 0xa

    const-string v15, "HourOfAmPm"

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 287
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0xc

    invoke-static {v12, v13, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "CLOCK_HOUR_OF_AMPM"

    const/16 v3, 0xb

    const-string v4, "ClockHourOfAmPm"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 302
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x17

    invoke-static {v8, v9, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "HOUR_OF_DAY"

    const/16 v18, 0xc

    const-string v19, "HourOfDay"

    const-string v23, "hour"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 316
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x18

    invoke-static {v12, v13, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "CLOCK_HOUR_OF_DAY"

    const/16 v3, 0xd

    const-string v4, "ClockHourOfDay"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 329
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v8, v9, v12, v13}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "AMPM_OF_DAY"

    const/16 v18, 0xe

    const-string v19, "AmPmOfDay"

    const-string v23, "dayperiod"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 345
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v28, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v29, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x7

    invoke-static {v12, v13, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v30

    const-string v25, "DAY_OF_WEEK"

    const/16 v26, 0xf

    const-string v27, "DayOfWeek"

    const-string v31, "weekday"

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v31}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 363
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v12, v13, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v18, 0x10

    const-string v19, "AlignedDayOfWeekInMonth"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    .line 381
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v27, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v28, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v12, v13, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v29

    const-string v24, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v25, 0x11

    const-string v26, "AlignedDayOfWeekInYear"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 394
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x1c

    const-wide/16 v5, 0x1f

    invoke-static/range {v1 .. v6}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "DAY_OF_MONTH"

    const/16 v18, 0x12

    const-string v19, "DayOfMonth"

    const-string v23, "day"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 412
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x16d

    const-wide/16 v20, 0x16e

    invoke-static/range {v16 .. v21}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "DAY_OF_YEAR"

    const/16 v3, 0x13

    const-string v4, "DayOfYear"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 422
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v1, -0x550a98b312L

    const-wide v3, 0x550a98b312L

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "EPOCH_DAY"

    const/16 v18, 0x14

    const-string v19, "EpochDay"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 438
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x4

    const-wide/16 v20, 0x5

    invoke-static/range {v16 .. v21}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "ALIGNED_WEEK_OF_MONTH"

    const/16 v3, 0x15

    const-string v4, "AlignedWeekOfMonth"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 454
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v20, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v21, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x35

    invoke-static {v12, v13, v1, v2}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v22

    const-string v17, "ALIGNED_WEEK_OF_YEAR"

    const/16 v18, 0x16

    const-string v19, "AlignedWeekOfYear"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 465
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v27, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v28, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v12, v13, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v29

    const-string v24, "MONTH_OF_YEAR"

    const/16 v25, 0x17

    const-string v26, "MonthOfYear"

    const-string v30, "month"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v30}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 485
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v1, -0x2cb4177f4L

    const-wide v3, 0x2cb4177ffL

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "PROLEPTIC_MONTH"

    const/16 v3, 0x18

    const-string v4, "ProlepticMonth"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    .line 520
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x1

    const-wide/32 v3, 0x3b9ac9ff

    const-wide/32 v5, 0x3b9aca00

    invoke-static/range {v1 .. v6}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v20

    const-string v15, "YEAR_OF_ERA"

    const/16 v16, 0x19

    const-string v17, "YearOfEra"

    move-object v14, v0

    invoke-direct/range {v14 .. v20}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    .line 544
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v25, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v26, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v1, -0x3b9ac9ff

    invoke-static {v1, v2, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v27

    const-string v22, "YEAR"

    const/16 v23, 0x1a

    const-string v24, "Year"

    const-string v28, "year"

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v28}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 561
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-static {v8, v9, v12, v13}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v20

    const-string v15, "ERA"

    const/16 v16, 0x1b

    const-string v17, "Era"

    const-string v21, "era"

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 576
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v6, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "INSTANT_SECONDS"

    const/16 v3, 0x1c

    const-string v4, "InstantSeconds"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 590
    new-instance v0, Ljava/time/temporal/ChronoField;

    sget-object v12, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v13, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v1, -0xfd20

    const-wide/32 v3, 0xfd20

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v14

    const-string v9, "OFFSET_SECONDS"

    const/16 v10, 0x1d

    const-string v11, "OffsetSeconds"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 100
    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .registers 7
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/ValueRange;",
            ")V"
        }
    .end annotation

    .line 598
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 599
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 600
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 601
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 602
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 603
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 604
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V
    .registers 8
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;
    .param p7, "displayNameKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/TemporalUnit;",
            "Ljava/time/temporal/ValueRange;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 608
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 609
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 610
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 611
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 612
    iput-object p7, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private static greylist-max-o getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I
    .registers 4
    .param p0, "field"    # Ljava/time/temporal/ChronoField;

    .line 633
    sget-object v0, Ljava/time/temporal/ChronoField$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ChronoField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :pswitch_26
    const/4 v0, 0x0

    return v0

    .line 649
    :pswitch_28
    const/4 v0, 0x1

    return v0

    .line 647
    :pswitch_2a
    const/4 v0, 0x3

    return v0

    .line 645
    :pswitch_2c
    const/4 v0, 0x7

    return v0

    .line 643
    :pswitch_2e
    const/4 v0, 0x6

    return v0

    .line 641
    :pswitch_30
    const/16 v0, 0xa

    return v0

    .line 639
    :pswitch_33
    const/16 v0, 0xb

    return v0

    .line 637
    :pswitch_36
    const/16 v0, 0xc

    return v0

    .line 635
    :pswitch_39
    const/16 v0, 0xd

    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoField;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    const-class v0, Ljava/time/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoField;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/time/temporal/ChronoField;
    .registers 1

    .line 100
    sget-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .registers 5
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 771
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api checkValidIntValue(J)I
    .registers 4
    .param p1, "value"    # J

    .line 749
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api checkValidValue(J)J
    .registers 5
    .param p1, "value"    # J

    .line 730
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 659
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 617
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 619
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0

    .line 623
    :cond_c
    nop

    .line 624
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 625
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0}, Ljava/time/temporal/ChronoField;->getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    move-object v2, v1

    goto :goto_29

    :cond_27
    iget-object v2, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    :goto_29
    return-object v2
.end method

.method public whitelist core-platform-api test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 765
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 664
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist core-platform-api test-api isDateBased()Z
    .registers 3

    .line 699
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public whitelist core-platform-api test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 755
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isTimeBased()Z
    .registers 3

    .line 711
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist core-platform-api test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 686
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist core-platform-api test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 760
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 777
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method
