.class public final enum Ljava/time/Month;
.super Ljava/lang/Enum;
.source "Month.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/Month;",
        ">;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/Month;

.field private static final synthetic -java-time-MonthSwitchesValues:[I

.field public static final enum APRIL:Ljava/time/Month;

.field public static final enum AUGUST:Ljava/time/Month;

.field public static final enum DECEMBER:Ljava/time/Month;

.field private static final ENUMS:[Ljava/time/Month;

.field public static final enum FEBRUARY:Ljava/time/Month;

.field public static final enum JANUARY:Ljava/time/Month;

.field public static final enum JULY:Ljava/time/Month;

.field public static final enum JUNE:Ljava/time/Month;

.field public static final enum MARCH:Ljava/time/Month;

.field public static final enum MAY:Ljava/time/Month;

.field public static final enum NOVEMBER:Ljava/time/Month;

.field public static final enum OCTOBER:Ljava/time/Month;

.field public static final enum SEPTEMBER:Ljava/time/Month;


# direct methods
.method private static synthetic -getjava-time-MonthSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/Month;->-java-time-MonthSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/Month;->-java-time-MonthSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/time/Month;->APRIL:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_98

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_96

    :goto_20
    :try_start_20
    sget-object v1, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_94

    :goto_29
    :try_start_29
    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_92

    :goto_32
    :try_start_32
    sget-object v1, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_90

    :goto_3b
    :try_start_3b
    sget-object v1, Ljava/time/Month;->JULY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_8e

    :goto_44
    :try_start_44
    sget-object v1, Ljava/time/Month;->JUNE:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_8c

    :goto_4d
    :try_start_4d
    sget-object v1, Ljava/time/Month;->MARCH:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_8a

    :goto_57
    :try_start_57
    sget-object v1, Ljava/time/Month;->MAY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_88

    :goto_61
    :try_start_61
    sget-object v1, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_86

    :goto_6b
    :try_start_6b
    sget-object v1, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_84

    :goto_75
    :try_start_75
    sget-object v1, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_82

    :goto_7f
    sput-object v0, Ljava/time/Month;->-java-time-MonthSwitchesValues:[I

    return-object v0

    :catch_82
    move-exception v1

    goto :goto_7f

    :catch_84
    move-exception v1

    goto :goto_75

    :catch_86
    move-exception v1

    goto :goto_6b

    :catch_88
    move-exception v1

    goto :goto_61

    :catch_8a
    move-exception v1

    goto :goto_57

    :catch_8c
    move-exception v1

    goto :goto_4d

    :catch_8e
    move-exception v1

    goto :goto_44

    :catch_90
    move-exception v1

    goto :goto_3b

    :catch_92
    move-exception v1

    goto :goto_32

    :catch_94
    move-exception v1

    goto :goto_29

    :catch_96
    move-exception v1

    goto :goto_20

    :catch_98
    move-exception v1

    goto/16 :goto_17
.end method

.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "JANUARY"

    invoke-direct {v0, v1, v3}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v0, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    .line 113
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "FEBRUARY"

    invoke-direct {v0, v1, v4}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v0, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    .line 118
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "MARCH"

    invoke-direct {v0, v1, v5}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 122
    sput-object v0, Ljava/time/Month;->MARCH:Ljava/time/Month;

    .line 123
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "APRIL"

    invoke-direct {v0, v1, v6}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Ljava/time/Month;->APRIL:Ljava/time/Month;

    .line 128
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "MAY"

    invoke-direct {v0, v1, v7}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 132
    sput-object v0, Ljava/time/Month;->MAY:Ljava/time/Month;

    .line 133
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "JUNE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 137
    sput-object v0, Ljava/time/Month;->JUNE:Ljava/time/Month;

    .line 138
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "JULY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 142
    sput-object v0, Ljava/time/Month;->JULY:Ljava/time/Month;

    .line 143
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "AUGUST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 147
    sput-object v0, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    .line 148
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "SEPTEMBER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 152
    sput-object v0, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    .line 153
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "OCTOBER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 157
    sput-object v0, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    .line 158
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "NOVEMBER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 162
    sput-object v0, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    .line 163
    new-instance v0, Ljava/time/Month;

    const-string/jumbo v1, "DECEMBER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/time/Month;-><init>(Ljava/lang/String;I)V

    .line 167
    sput-object v0, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    .line 106
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/time/Month;

    sget-object v1, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/Month;->MARCH:Ljava/time/Month;

    aput-object v1, v0, v5

    sget-object v1, Ljava/time/Month;->APRIL:Ljava/time/Month;

    aput-object v1, v0, v6

    sget-object v1, Ljava/time/Month;->MAY:Ljava/time/Month;

    aput-object v1, v0, v7

    sget-object v1, Ljava/time/Month;->JUNE:Ljava/time/Month;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->JULY:Ljava/time/Month;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    .line 171
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v0

    sput-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    .line 106
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 212
    instance-of v1, p0, Ljava/time/Month;

    if-eqz v1, :cond_7

    .line 213
    check-cast p0, Ljava/time/Month;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 216
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_7
    :try_start_7
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-static {p0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 217
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object p0

    .line 219
    :cond_17
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v1

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;
    :try_end_20
    .catch Ljava/time/DateTimeException; {:try_start_7 .. :try_end_20} :catch_22

    move-result-object v1

    return-object v1

    .line 220
    :catch_22
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/time/DateTimeException;
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain Month from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    const-string/jumbo v3, " of type "

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(I)Ljava/time/Month;
    .registers 4
    .param p0, "month"    # I

    .prologue
    .line 186
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/16 v0, 0xc

    if-le p0, v0, :cond_21

    .line 187
    :cond_7
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value for MonthOfYear: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_21
    sget-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/Month;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Ljava/time/Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/Month;

    return-object v0
.end method

.method public static values()[Ljava/time/Month;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Ljava/time/Month;->$VALUES:[Ljava/time/Month;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 609
    invoke-static {p1}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 610
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_15
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public firstDayOfYear(Z)I
    .registers 5
    .param p1, "leapYear"    # Z

    .prologue
    .line 496
    if-eqz p1, :cond_13

    const/4 v0, 0x1

    .line 497
    .local v0, "leap":I
    :goto_3
    invoke-static {}, Ljava/time/Month;->-getjava-time-MonthSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 522
    :pswitch_10
    add-int/lit16 v1, v0, 0x14f

    return v1

    .line 496
    .end local v0    # "leap":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "leap":I
    goto :goto_3

    .line 499
    :pswitch_15
    const/4 v1, 0x1

    return v1

    .line 501
    :pswitch_17
    const/16 v1, 0x20

    return v1

    .line 503
    :pswitch_1a
    add-int/lit8 v1, v0, 0x3c

    return v1

    .line 505
    :pswitch_1d
    add-int/lit8 v1, v0, 0x5b

    return v1

    .line 507
    :pswitch_20
    add-int/lit8 v1, v0, 0x79

    return v1

    .line 509
    :pswitch_23
    add-int/lit16 v1, v0, 0x98

    return v1

    .line 511
    :pswitch_26
    add-int/lit16 v1, v0, 0xb6

    return v1

    .line 513
    :pswitch_29
    add-int/lit16 v1, v0, 0xd5

    return v1

    .line 515
    :pswitch_2c
    add-int/lit16 v1, v0, 0xf4

    return v1

    .line 517
    :pswitch_2f
    add-int/lit16 v1, v0, 0x112

    return v1

    .line 519
    :pswitch_32
    add-int/lit16 v1, v0, 0x131

    return v1

    .line 497
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_29
        :pswitch_10
        :pswitch_17
        :pswitch_15
        :pswitch_26
        :pswitch_23
        :pswitch_1a
        :pswitch_20
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method public firstMonthOfQuarter()Ljava/time/Month;
    .registers 3

    .prologue
    .line 539
    sget-object v0, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 342
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 343
    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v0

    return v0

    .line 345
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
    .line 254
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

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
    .line 372
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_a

    .line 373
    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 374
    :cond_a
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_28

    .line 375
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

    .line 377
    :cond_28
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x0

    .line 279
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_b

    .line 280
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 282
    :cond_b
    if-eqz p1, :cond_11

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public length(Z)I
    .registers 4
    .param p1, "leapYear"    # Z

    .prologue
    .line 426
    invoke-static {}, Ljava/time/Month;->-getjava-time-MonthSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_1c

    .line 435
    const/16 v0, 0x1f

    return v0

    .line 428
    :sswitch_10
    if-eqz p1, :cond_15

    const/16 v0, 0x1d

    :goto_14
    return v0

    :cond_15
    const/16 v0, 0x1c

    goto :goto_14

    .line 433
    :sswitch_18
    const/16 v0, 0x1e

    return v0

    .line 426
    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_18
        0x4 -> :sswitch_10
        0x7 -> :sswitch_18
        0xa -> :sswitch_18
        0xc -> :sswitch_18
    .end sparse-switch
.end method

.method public maxLength()I
    .registers 3

    .prologue
    .line 472
    invoke-static {}, Ljava/time/Month;->-getjava-time-MonthSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_16

    .line 481
    const/16 v0, 0x1f

    return v0

    .line 474
    :sswitch_10
    const/16 v0, 0x1d

    return v0

    .line 479
    :sswitch_13
    const/16 v0, 0x1e

    return v0

    .line 472
    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_13
        0x4 -> :sswitch_10
        0x7 -> :sswitch_13
        0xa -> :sswitch_13
        0xc -> :sswitch_13
    .end sparse-switch
.end method

.method public minLength()I
    .registers 3

    .prologue
    .line 449
    invoke-static {}, Ljava/time/Month;->-getjava-time-MonthSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_16

    .line 458
    const/16 v0, 0x1f

    return v0

    .line 451
    :sswitch_10
    const/16 v0, 0x1c

    return v0

    .line 456
    :sswitch_13
    const/16 v0, 0x1e

    return v0

    .line 449
    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_13
        0x4 -> :sswitch_10
        0x7 -> :sswitch_13
        0xa -> :sswitch_13
        0xc -> :sswitch_13
    .end sparse-switch
.end method

.method public minus(J)Ljava/time/Month;
    .registers 6
    .param p1, "months"    # J

    .prologue
    .line 409
    const-wide/16 v0, 0xc

    rem-long v0, p1, v0

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public plus(J)Ljava/time/Month;
    .registers 8
    .param p1, "months"    # J

    .prologue
    .line 393
    const-wide/16 v2, 0xc

    rem-long v2, p1, v2

    long-to-int v0, v2

    .line 394
    .local v0, "amount":I
    sget-object v1, Ljava/time/Month;->ENUMS:[Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->ordinal()I

    move-result v2

    add-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0xc

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
    .line 564
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 565
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0

    .line 566
    :cond_9
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_12

    .line 567
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 569
    :cond_12
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 309
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_9

    .line 310
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 312
    :cond_9
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
