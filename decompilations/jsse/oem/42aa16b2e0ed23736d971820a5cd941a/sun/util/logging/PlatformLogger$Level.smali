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
        "Ljava/lang/Enum<",
        "Lsun/util/logging/PlatformLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist ALL:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist CONFIG:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINER:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist FINEST:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist INFO:Lsun/util/logging/PlatformLogger$Level;

.field private static final blacklist LEVEL_VALUES:[I

.field public static final enum blacklist OFF:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist SEVERE:Lsun/util/logging/PlatformLogger$Level;

.field public static final enum blacklist WARNING:Lsun/util/logging/PlatformLogger$Level;


# instance fields
.field blacklist javaLevel:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 106
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    .line 107
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    .line 108
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    .line 109
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "FINE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    .line 110
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "CONFIG"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    .line 111
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "INFO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    .line 112
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "WARNING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    .line 113
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "SEVERE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    .line 114
    new-instance v0, Lsun/util/logging/PlatformLogger$Level;

    const-string v1, "OFF"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lsun/util/logging/PlatformLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    .line 103
    const/16 v1, 0x9

    new-array v11, v1, [Lsun/util/logging/PlatformLogger$Level;

    sget-object v12, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    aput-object v12, v11, v2

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v3

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v4

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v5

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v6

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v7

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v8

    sget-object v2, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    aput-object v2, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    return-void

    nop

    :array_8c
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

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist valueOf(I)Lsun/util/logging/PlatformLogger$Level;
    .registers 4
    .param p0, "level"    # I

    .line 136
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_55

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_52

    const/16 v0, 0x190

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x2bc

    if-eq p0, v0, :cond_49

    const/16 v0, 0x320

    if-eq p0, v0, :cond_46

    const/16 v0, 0x384

    if-eq p0, v0, :cond_43

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_40

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_3d

    .line 151
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v1, v2, p0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 152
    .local v0, "i":I
    invoke-static {}, Lsun/util/logging/PlatformLogger$Level;->values()[Lsun/util/logging/PlatformLogger$Level;

    move-result-object v1

    if-ltz v0, :cond_37

    move v2, v0

    goto :goto_3a

    :cond_37
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_3a
    aget-object v1, v1, v2

    return-object v1

    .line 146
    .end local v0    # "i":I
    :cond_3d
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->OFF:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 145
    :cond_40
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 143
    :cond_43
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 142
    :cond_46
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 144
    :cond_49
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->CONFIG:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 140
    :cond_4c
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 141
    :cond_4f
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 139
    :cond_52
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->FINEST:Lsun/util/logging/PlatformLogger$Level;

    return-object v0

    .line 147
    :cond_55
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->ALL:Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/util/logging/PlatformLogger$Level;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 103
    const-class v0, Lsun/util/logging/PlatformLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method

.method public static blacklist values()[Lsun/util/logging/PlatformLogger$Level;
    .registers 1

    .line 103
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->$VALUES:[Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v0}, [Lsun/util/logging/PlatformLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/util/logging/PlatformLogger$Level;

    return-object v0
.end method


# virtual methods
.method public blacklist intValue()I
    .registers 3

    .line 132
    sget-object v0, Lsun/util/logging/PlatformLogger$Level;->LEVEL_VALUES:[I

    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
