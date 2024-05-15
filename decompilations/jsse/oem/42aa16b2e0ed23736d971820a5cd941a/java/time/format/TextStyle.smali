.class public final enum Ljava/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/format/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api FULL:Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api FULL_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api NARROW:Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api NARROW_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api SHORT:Ljava/time/format/TextStyle;

.field public static final enum whitelist core-platform-api test-api SHORT_STANDALONE:Ljava/time/format/TextStyle;


# instance fields
.field private final greylist-max-o calendarStyle:I

.field private final greylist-max-o zoneNameStyleIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 94
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 99
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "FULL_STANDALONE"

    const/4 v4, 0x1

    const v5, 0x8002

    invoke-direct {v0, v1, v4, v5, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 104
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3, v4, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 109
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "SHORT_STANDALONE"

    const/4 v5, 0x3

    const v6, 0x8001

    invoke-direct {v0, v1, v5, v6, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 114
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "NARROW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 119
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "NARROW_STANDALONE"

    const/4 v7, 0x5

    const v8, 0x8004

    invoke-direct {v0, v1, v7, v8, v4}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 86
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/time/format/TextStyle;

    sget-object v8, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    aput-object v8, v1, v2

    sget-object v2, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v2, v1, v4

    sget-object v2, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    aput-object v2, v1, v3

    sget-object v2, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    aput-object v2, v1, v5

    sget-object v2, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "calendarStyle"    # I
    .param p4, "zoneNameStyleIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput p3, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    .line 126
    iput p4, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    .line 127
    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/time/format/TextStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Ljava/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/TextStyle;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/time/format/TextStyle;
    .registers 1

    .line 86
    sget-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    invoke-virtual {v0}, [Ljava/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api asNormal()Ljava/time/format/TextStyle;
    .registers 3

    .line 151
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api asStandalone()Ljava/time/format/TextStyle;
    .registers 3

    .line 142
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api isStandalone()Z
    .registers 3

    .line 134
    invoke-virtual {p0}, Ljava/time/format/TextStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method greylist-max-o toCalendarStyle()I
    .registers 2

    .line 160
    iget v0, p0, Ljava/time/format/TextStyle;->calendarStyle:I

    return v0
.end method

.method greylist-max-o zoneNameStyleIndex()I
    .registers 2

    .line 173
    iget v0, p0, Ljava/time/format/TextStyle;->zoneNameStyleIndex:I

    return v0
.end method
