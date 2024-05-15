.class public final enum Ljava/time/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/SignStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/SignStyle;

.field public static final enum ALWAYS:Ljava/time/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Ljava/time/format/SignStyle;

.field public static final enum NEVER:Ljava/time/format/SignStyle;

.field public static final enum NORMAL:Ljava/time/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Ljava/time/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Ljava/time/format/SignStyle;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    .line 85
    new-instance v0, Ljava/time/format/SignStyle;

    const-string/jumbo v1, "ALWAYS"

    invoke-direct {v0, v1, v3}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v0, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    .line 93
    new-instance v0, Ljava/time/format/SignStyle;

    const-string/jumbo v1, "NEVER"

    invoke-direct {v0, v1, v4}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v0, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    .line 100
    new-instance v0, Ljava/time/format/SignStyle;

    const-string/jumbo v1, "NOT_NEGATIVE"

    invoke-direct {v0, v1, v5}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    .line 106
    sput-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 107
    new-instance v0, Ljava/time/format/SignStyle;

    const-string/jumbo v1, "EXCEEDS_PAD"

    invoke-direct {v0, v1, v6}, Ljava/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    .line 115
    sput-object v0, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    aput-object v1, v0, v5

    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    aput-object v1, v0, v6

    sput-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/SignStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Ljava/time/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/SignStyle;

    return-object v0
.end method

.method public static values()[Ljava/time/format/SignStyle;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Ljava/time/format/SignStyle;->$VALUES:[Ljava/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .registers 6
    .param p1, "positive"    # Z
    .param p2, "strict"    # Z
    .param p3, "fixedWidth"    # Z

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    .line 135
    :pswitch_8
    if-nez p2, :cond_13

    xor-int/lit8 v0, p3, 0x1

    :goto_c
    return v0

    .line 129
    :pswitch_d
    if-eqz p1, :cond_11

    xor-int/lit8 v0, p2, 0x1

    :cond_11
    return v0

    .line 132
    :pswitch_12
    return v0

    .line 135
    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 126
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
        :pswitch_8
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method
