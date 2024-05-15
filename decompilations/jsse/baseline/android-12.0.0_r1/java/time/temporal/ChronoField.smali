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

.field public static final enum whitelist test-api ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api EPOCH_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api ERA:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api NANO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum whitelist test-api YEAR_OF_ERA:Ljava/time/temporal/ChronoField;


# instance fields
.field private final greylist-max-o baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final greylist-max-o displayNameKey:Ljava/lang/String;

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o range:Ljava/time/temporal/ValueRange;

.field private final greylist-max-o rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 57

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
    new-instance v1, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v2, 0xf423f

    invoke-static {v8, v9, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v20, "MICRO_OF_SECOND"

    const/16 v21, 0x2

    const-string v22, "MicroOfSecond"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v25}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 177
    new-instance v2, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide v3, 0x141dd75fffL

    invoke-static {v8, v9, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MICRO_OF_DAY"

    const/4 v14, 0x3

    const-string v15, "MicroOfDay"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v2, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 197
    new-instance v3, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v4, 0x3e7

    invoke-static {v8, v9, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v20, "MILLI_OF_SECOND"

    const/16 v21, 0x4

    const-string v22, "MilliOfSecond"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v25}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 216
    new-instance v4, Ljava/time/temporal/ChronoField;

    sget-object v16, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v5, 0x5265bff

    invoke-static {v8, v9, v5, v6}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v18

    const-string v13, "MILLI_OF_DAY"

    const/4 v14, 0x5

    const-string v15, "MilliOfDay"

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v4, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 226
    new-instance v5, Ljava/time/temporal/ChronoField;

    sget-object v23, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v24, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v12, 0x3b

    invoke-static {v8, v9, v12, v13}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v25

    const-string v20, "SECOND_OF_MINUTE"

    const/16 v21, 0x6

    const-string v22, "SecondOfMinute"

    const-string v26, "second"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v26}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v5, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 238
    new-instance v6, Ljava/time/temporal/ChronoField;

    sget-object v31, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v32, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v14, 0x1517f

    invoke-static {v8, v9, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v33

    const-string v28, "SECOND_OF_DAY"

    const/16 v29, 0x7

    const-string v30, "SecondOfDay"

    move-object/from16 v27, v6

    invoke-direct/range {v27 .. v33}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 248
    new-instance v22, Ljava/time/temporal/ChronoField;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v19, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v8, v9, v12, v13}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v20

    const-string v15, "MINUTE_OF_HOUR"

    const/16 v16, 0x8

    const-string v17, "MinuteOfHour"

    const-string v21, "minute"

    move-object/from16 v14, v22

    invoke-direct/range {v14 .. v21}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v22, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 259
    new-instance v12, Ljava/time/temporal/ChronoField;

    sget-object v27, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v28, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v13, 0x59f

    invoke-static {v8, v9, v13, v14}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v29

    const-string v24, "MINUTE_OF_DAY"

    const/16 v25, 0x9

    const-string v26, "MinuteOfDay"

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v29}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v12, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 273
    new-instance v20, Ljava/time/temporal/ChronoField;

    sget-object v17, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v18, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v13, 0xb

    invoke-static {v8, v9, v13, v14}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v19

    const-string v14, "HOUR_OF_AMPM"

    const/16 v15, 0xa

    const-string v16, "HourOfAmPm"

    move-object/from16 v13, v20

    invoke-direct/range {v13 .. v19}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v20, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 287
    new-instance v13, Ljava/time/temporal/ChronoField;

    sget-object v27, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v28, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v14, 0x1

    const-wide/16 v10, 0xc

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v29

    const-string v24, "CLOCK_HOUR_OF_AMPM"

    const/16 v25, 0xb

    const-string v26, "ClockHourOfAmPm"

    move-object/from16 v23, v13

    invoke-direct/range {v23 .. v29}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v13, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 302
    new-instance v18, Ljava/time/temporal/ChronoField;

    sget-object v34, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v35, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v10, 0x17

    invoke-static {v8, v9, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v36

    const-string v31, "HOUR_OF_DAY"

    const/16 v32, 0xc

    const-string v33, "HourOfDay"

    const-string v37, "hour"

    move-object/from16 v30, v18

    invoke-direct/range {v30 .. v37}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v18, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 316
    new-instance v10, Ljava/time/temporal/ChronoField;

    sget-object v42, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v43, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v8, 0x18

    invoke-static {v14, v15, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v44

    const-string v39, "CLOCK_HOUR_OF_DAY"

    const/16 v40, 0xd

    const-string v41, "ClockHourOfDay"

    move-object/from16 v38, v10

    invoke-direct/range {v38 .. v44}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v10, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 329
    new-instance v8, Ljava/time/temporal/ChronoField;

    sget-object v31, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v32, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object v11, v10

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v33

    const-string v28, "AMPM_OF_DAY"

    const/16 v29, 0xe

    const-string v30, "AmPmOfDay"

    const-string v34, "dayperiod"

    move-object/from16 v27, v8

    invoke-direct/range {v27 .. v34}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v8, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 345
    new-instance v9, Ljava/time/temporal/ChronoField;

    sget-object v39, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v40, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v19, v11

    const-wide/16 v10, 0x7

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v41

    const-string v36, "DAY_OF_WEEK"

    const/16 v37, 0xf

    const-string v38, "DayOfWeek"

    const-string v42, "weekday"

    move-object/from16 v35, v9

    invoke-direct/range {v35 .. v42}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v9, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 363
    new-instance v21, Ljava/time/temporal/ChronoField;

    sget-object v31, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v32, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v33

    const-string v28, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v29, 0x10

    const-string v30, "AlignedDayOfWeekInMonth"

    move-object/from16 v27, v21

    invoke-direct/range {v27 .. v33}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v21, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    .line 381
    new-instance v27, Ljava/time/temporal/ChronoField;

    sget-object v38, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v39, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v40

    const-string v35, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v36, 0x11

    const-string v37, "AlignedDayOfWeekInYear"

    move-object/from16 v34, v27

    invoke-direct/range {v34 .. v40}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v27, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 394
    new-instance v10, Ljava/time/temporal/ChronoField;

    sget-object v45, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1c

    const-wide/16 v32, 0x1f

    invoke-static/range {v28 .. v33}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v47

    const-string v42, "DAY_OF_MONTH"

    const/16 v43, 0x12

    const-string v44, "DayOfMonth"

    const-string v48, "day"

    move-object/from16 v41, v10

    invoke-direct/range {v41 .. v48}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 412
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v32, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v33, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v34, 0x1

    const-wide/16 v36, 0x16d

    const-wide/16 v38, 0x16e

    invoke-static/range {v34 .. v39}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v34

    const-string v29, "DAY_OF_YEAR"

    const/16 v30, 0x13

    const-string v31, "DayOfYear"

    move-object/from16 v28, v11

    invoke-direct/range {v28 .. v34}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 422
    new-instance v28, Ljava/time/temporal/ChronoField;

    sget-object v39, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v40, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v14, -0x550a98b312L

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    const-wide v10, 0x550a98b312L

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v41

    const-string v36, "EPOCH_DAY"

    const/16 v37, 0x14

    const-string v38, "EpochDay"

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v41}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v28, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 438
    new-instance v10, Ljava/time/temporal/ChronoField;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v47, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x4

    const-wide/16 v37, 0x5

    invoke-static/range {v33 .. v38}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v48

    const-string v43, "ALIGNED_WEEK_OF_MONTH"

    const/16 v44, 0x15

    const-string v45, "AlignedWeekOfMonth"

    move-object/from16 v42, v10

    invoke-direct/range {v42 .. v48}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v10, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 454
    new-instance v11, Ljava/time/temporal/ChronoField;

    sget-object v37, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v38, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v14, 0x35

    move-object/from16 v40, v9

    move-object/from16 v41, v10

    const-wide/16 v9, 0x1

    invoke-static {v9, v10, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v39

    const-string v34, "ALIGNED_WEEK_OF_YEAR"

    const/16 v35, 0x16

    const-string v36, "AlignedWeekOfYear"

    move-object/from16 v33, v11

    invoke-direct/range {v33 .. v39}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v11, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 465
    new-instance v9, Ljava/time/temporal/ChronoField;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v47, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    move-object/from16 v23, v11

    const-wide/16 v10, 0x1

    const-wide/16 v14, 0xc

    invoke-static {v10, v11, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v48

    const-string v43, "MONTH_OF_YEAR"

    const/16 v44, 0x17

    const-string v45, "MonthOfYear"

    const-string v49, "month"

    move-object/from16 v42, v9

    invoke-direct/range {v42 .. v49}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 485
    new-instance v10, Ljava/time/temporal/ChronoField;

    sget-object v37, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v38, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v14, -0x2cb4177f4L

    move-object v11, v8

    move-object/from16 v24, v9

    const-wide v8, 0x2cb4177ffL

    invoke-static {v14, v15, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v39

    const-string v34, "PROLEPTIC_MONTH"

    const/16 v35, 0x18

    const-string v36, "ProlepticMonth"

    move-object/from16 v33, v10

    invoke-direct/range {v33 .. v39}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v10, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    .line 520
    new-instance v8, Ljava/time/temporal/ChronoField;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v47, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v33, 0x1

    const-wide/32 v35, 0x3b9ac9ff

    const-wide/32 v37, 0x3b9aca00

    invoke-static/range {v33 .. v38}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v48

    const-string v43, "YEAR_OF_ERA"

    const/16 v44, 0x19

    const-string v45, "YearOfEra"

    move-object/from16 v42, v8

    invoke-direct/range {v42 .. v48}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v8, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    .line 544
    new-instance v9, Ljava/time/temporal/ChronoField;

    sget-object v53, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v54, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v14, -0x3b9ac9ff

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    const-wide/32 v10, 0x3b9ac9ff

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v55

    const-string v50, "YEAR"

    const/16 v51, 0x1a

    const-string v52, "Year"

    const-string v56, "year"

    move-object/from16 v49, v9

    invoke-direct/range {v49 .. v56}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v9, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 561
    new-instance v10, Ljava/time/temporal/ChronoField;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    sget-object v47, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    move-object v11, v8

    move-object/from16 v16, v9

    const-wide/16 v8, 0x0

    const-wide/16 v14, 0x1

    invoke-static {v8, v9, v14, v15}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v48

    const-string v43, "ERA"

    const/16 v44, 0x1b

    const-string v45, "Era"

    const-string v49, "era"

    move-object/from16 v42, v10

    invoke-direct/range {v42 .. v49}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v10, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 576
    new-instance v8, Ljava/time/temporal/ChronoField;

    sget-object v54, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v55, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/high16 v14, -0x8000000000000000L

    move-object/from16 v17, v10

    const-wide v9, 0x7fffffffffffffffL

    invoke-static {v14, v15, v9, v10}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v56

    const-string v51, "INSTANT_SECONDS"

    const/16 v52, 0x1c

    const-string v53, "InstantSeconds"

    move-object/from16 v50, v8

    invoke-direct/range {v50 .. v56}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v8, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 590
    new-instance v9, Ljava/time/temporal/ChronoField;

    sget-object v46, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v47, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v14, -0xfd20

    move-object/from16 v25, v11

    const-wide/32 v10, 0xfd20

    invoke-static {v14, v15, v10, v11}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v48

    const-string v43, "OFFSET_SECONDS"

    const/16 v44, 0x1d

    const-string v45, "OffsetSeconds"

    move-object/from16 v42, v9

    invoke-direct/range {v42 .. v48}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    sput-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 100
    const/16 v10, 0x1e

    new-array v10, v10, [Ljava/time/temporal/ChronoField;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v0, v10, v7

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const/4 v0, 0x3

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v3, v10, v0

    const/4 v0, 0x5

    aput-object v4, v10, v0

    const/4 v0, 0x6

    aput-object v5, v10, v0

    const/4 v0, 0x7

    aput-object v6, v10, v0

    const/16 v0, 0x8

    aput-object v22, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v20, v10, v0

    const/16 v0, 0xb

    aput-object v13, v10, v0

    const/16 v0, 0xc

    aput-object v18, v10, v0

    const/16 v0, 0xd

    aput-object v19, v10, v0

    const/16 v0, 0xe

    aput-object v34, v10, v0

    const/16 v0, 0xf

    aput-object v40, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    const/16 v0, 0x11

    aput-object v27, v10, v0

    const/16 v0, 0x12

    aput-object v31, v10, v0

    const/16 v0, 0x13

    aput-object v32, v10, v0

    const/16 v0, 0x14

    aput-object v28, v10, v0

    const/16 v0, 0x15

    aput-object v41, v10, v0

    const/16 v0, 0x16

    aput-object v23, v10, v0

    const/16 v0, 0x17

    aput-object v24, v10, v0

    const/16 v0, 0x18

    aput-object v33, v10, v0

    const/16 v0, 0x19

    aput-object v25, v10, v0

    const/16 v0, 0x1a

    aput-object v16, v10, v0

    const/16 v0, 0x1b

    aput-object v17, v10, v0

    const/16 v0, 0x1c

    aput-object v8, v10, v0

    const/16 v0, 0x1d

    aput-object v9, v10, v0

    sput-object v10, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoField;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    const-class v0, Ljava/time/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoField;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/temporal/ChronoField;
    .registers 1

    .line 100
    sget-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, [Ljava/time/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
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

.method public whitelist test-api checkValidIntValue(J)I
    .registers 4
    .param p1, "value"    # J

    .line 749
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api checkValidValue(J)J
    .registers 5
    .param p1, "value"    # J

    .line 730
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 659
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
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

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

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

.method public whitelist test-api getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 765
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .registers 2

    .line 664
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public whitelist test-api isDateBased()Z
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

.method public whitelist test-api isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 755
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isTimeBased()Z
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

.method public whitelist test-api range()Ljava/time/temporal/ValueRange;
    .registers 2

    .line 686
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public whitelist test-api rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 760
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 777
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method
