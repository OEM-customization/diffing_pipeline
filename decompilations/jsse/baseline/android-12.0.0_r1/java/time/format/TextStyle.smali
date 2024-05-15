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

.field public static final enum whitelist test-api FULL:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api FULL_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api NARROW:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api NARROW_STANDALONE:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api SHORT:Ljava/time/format/TextStyle;

.field public static final enum whitelist test-api SHORT_STANDALONE:Ljava/time/format/TextStyle;


# instance fields
.field private final greylist-max-o calendarStyle:I

.field private final greylist-max-o zoneNameStyleIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 94
    new-instance v0, Ljava/time/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    .line 99
    new-instance v1, Ljava/time/format/TextStyle;

    const-string v4, "FULL_STANDALONE"

    const/4 v5, 0x1

    const v6, 0x8002

    invoke-direct {v1, v4, v5, v6, v2}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    .line 104
    new-instance v4, Ljava/time/format/TextStyle;

    const-string v6, "SHORT"

    invoke-direct {v4, v6, v3, v5, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v4, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    .line 109
    new-instance v6, Ljava/time/format/TextStyle;

    const-string v7, "SHORT_STANDALONE"

    const/4 v8, 0x3

    const v9, 0x8001

    invoke-direct {v6, v7, v8, v9, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v6, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    .line 114
    new-instance v7, Ljava/time/format/TextStyle;

    const-string v9, "NARROW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v7, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    .line 119
    new-instance v9, Ljava/time/format/TextStyle;

    const-string v11, "NARROW_STANDALONE"

    const/4 v12, 0x5

    const v13, 0x8004

    invoke-direct {v9, v11, v12, v13, v5}, Ljava/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v9, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    .line 86
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/time/format/TextStyle;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    aput-object v4, v11, v3

    aput-object v6, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

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

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/time/format/TextStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Ljava/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/TextStyle;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/time/format/TextStyle;
    .registers 1

    .line 86
    sget-object v0, Ljava/time/format/TextStyle;->$VALUES:[Ljava/time/format/TextStyle;

    invoke-virtual {v0}, [Ljava/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api asNormal()Ljava/time/format/TextStyle;
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

.method public whitelist test-api asStandalone()Ljava/time/format/TextStyle;
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

.method public whitelist test-api isStandalone()Z
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
