.class public final enum Ljava/time/chrono/MinguoEra;
.super Ljava/lang/Enum;
.source "MinguoEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/MinguoEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/MinguoEra;

.field public static final enum BEFORE_ROC:Ljava/time/chrono/MinguoEra;

.field public static final enum ROC:Ljava/time/chrono/MinguoEra;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Ljava/time/chrono/MinguoEra;

    const-string/jumbo v1, "BEFORE_ROC"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/MinguoEra;-><init>(Ljava/lang/String;I)V

    .line 113
    sput-object v0, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    .line 114
    new-instance v0, Ljava/time/chrono/MinguoEra;

    const-string/jumbo v1, "ROC"

    invoke-direct {v0, v1, v3}, Ljava/time/chrono/MinguoEra;-><init>(Ljava/lang/String;I)V

    .line 118
    sput-object v0, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/time/chrono/MinguoEra;

    sget-object v1, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    aput-object v1, v0, v3

    sput-object v0, Ljava/time/chrono/MinguoEra;->$VALUES:[Ljava/time/chrono/MinguoEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/MinguoEra;
    .registers 4
    .param p0, "minguoEra"    # I

    .prologue
    .line 132
    packed-switch p0, :pswitch_data_24

    .line 138
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_1d
    sget-object v0, Ljava/time/chrono/MinguoEra;->BEFORE_ROC:Ljava/time/chrono/MinguoEra;

    return-object v0

    .line 136
    :pswitch_20
    sget-object v0, Ljava/time/chrono/MinguoEra;->ROC:Ljava/time/chrono/MinguoEra;

    return-object v0

    .line 132
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/MinguoEra;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Ljava/time/chrono/MinguoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/MinguoEra;

    return-object v0
.end method

.method public static values()[Ljava/time/chrono/MinguoEra;
    .registers 1

    .prologue
    .line 107
    sget-object v0, Ljava/time/chrono/MinguoEra;->$VALUES:[Ljava/time/chrono/MinguoEra;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/time/chrono/MinguoEra;->ordinal()I

    move-result v0

    return v0
.end method
