.class public final enum Lsun/util/logging/PlatformLogger$Level;
.super Ljava/lang/Enum;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum INFO:Lsun/util/logging/PlatformLogger$Level;

.field private static final LEVEL_VALUES:[I

.field public static final enum OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum WARNING:Lsun/util/logging/PlatformLogger$Level;


# instance fields
.field javaLevel:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    .line 106
    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    .line 107
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINEST"

    invoke-direct {v0, v1, v4}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    .line 108
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINER"

    invoke-direct {v0, v1, v5}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    .line 109
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "FINE"

    invoke-direct {v0, v1, v6}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    .line 110
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "CONFIG"

    invoke-direct {v0, v1, v7}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "INFO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "WARNING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "SEVERE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string/jumbo v1, "OFF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    .line 103
    const/16 v0, 0x9

    new-array v0, v0, [Lsun/util/logging/PlatformLogger$Level;

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    aput-object v1, v0, v7

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    .line 125
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_9e

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    .line 103
    return-void

    .line 125
    nop

    :array_9e
    .array-data 4
        -0x80000000
        0x12c
        0x190
        0x1f4
        0x2bc
        0x320
        0x384
        0x3e8
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .registers 5
    .param p0, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 136
    sparse-switch p0, :sswitch_data_38

    .line 151
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v3, v2, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 152
    .local v0, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    if-ltz v0, :cond_33

    .end local v0    # "i":I
    :goto_15
    aget-object v1, v1, v0

    return-object v1

    .line 139
    :sswitch_18
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 140
    :sswitch_1b
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 141
    :sswitch_1e
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 142
    :sswitch_21
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 143
    :sswitch_24
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 144
    :sswitch_27
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 145
    :sswitch_2a
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 146
    :sswitch_2d
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 147
    :sswitch_30
    sget-object v1, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    return-object v1

    .line 152
    .restart local v0    # "i":I
    :cond_33
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    goto :goto_15

    .line 136
    nop

    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_30
        0x12c -> :sswitch_18
        0x190 -> :sswitch_1e
        0x1f4 -> :sswitch_1b
        0x2bc -> :sswitch_27
        0x320 -> :sswitch_21
        0x384 -> :sswitch_24
        0x3e8 -> :sswitch_2a
        0x7fffffff -> :sswitch_2d
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lsun/util/logging/PlatformLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static values()[Lsun/util/logging/PlatformLogger$Level;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .registers 3

    .prologue
    .line 132
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
