.class synthetic Ljava/time/Month$1;
.super Ljava/lang/Object;
.source "Month.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$java$time$Month:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 426
    invoke-static {}, Ljava/time/Month;->values()[Ljava/time/Month;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    :try_start_9
    sget-object v1, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->APRIL:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->JUNE:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->SEPTEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->NOVEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->MARCH:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->MAY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->JULY:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->AUGUST:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->OCTOBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Ljava/time/Month$1;->$SwitchMap$java$time$Month:[I

    sget-object v1, Ljava/time/Month;->DECEMBER:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    return-void
.end method