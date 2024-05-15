.class public final enum Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/zone/ZoneOffsetTransitionRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum whitelist core-platform-api test-api STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum whitelist core-platform-api test-api UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum whitelist core-platform-api test-api WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 588
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "UTC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 590
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "WALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 592
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "STANDARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 586
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v5, v1, v2

    sget-object v2, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 586
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 586
    const-class v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 1

    .line 586
    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0}, [Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .registers 7
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p3, "wallOffset"    # Ljava/time/ZoneOffset;

    .line 612
    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 622
    return-object p1

    .line 618
    :cond_f
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 619
    .local v0, "difference":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 614
    .end local v0    # "difference":I
    :cond_1e
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 615
    .restart local v0    # "difference":I
    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method
