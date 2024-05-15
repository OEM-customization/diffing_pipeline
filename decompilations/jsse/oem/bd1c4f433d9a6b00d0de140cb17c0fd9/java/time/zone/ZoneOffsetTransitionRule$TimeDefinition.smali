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
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private static final synthetic -java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

.field public static final enum STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method private static synthetic -getjava-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-java-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 587
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    .line 588
    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 589
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "WALL"

    invoke-direct {v0, v1, v3}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    .line 590
    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 591
    new-instance v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v4}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    .line 592
    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 586
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 586
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 586
    const-class v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public static values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 1

    .prologue
    .line 586
    sget-object v0, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;
    .registers 8
    .param p1, "dateTime"    # Ljava/time/LocalDateTime;
    .param p2, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p3, "wallOffset"    # Ljava/time/ZoneOffset;

    .prologue
    .line 612
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->-getjava-time-zone-ZoneOffsetTransitionRule$TimeDefinitionSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 622
    return-object p1

    .line 614
    :pswitch_e
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sget-object v2, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int v0, v1, v2

    .line 615
    .local v0, "difference":I
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 618
    .end local v0    # "difference":I
    :pswitch_20
    invoke-virtual {p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    invoke-virtual {p2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int v0, v1, v2

    .line 619
    .restart local v0    # "difference":I
    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/time/LocalDateTime;->plusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1

    .line 612
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_e
    .end packed-switch
.end method
