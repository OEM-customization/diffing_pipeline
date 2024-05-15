.class public final enum Ljava/time/chrono/HijrahEra;
.super Ljava/lang/Enum;
.source "HijrahEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/chrono/HijrahEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/chrono/HijrahEra;

.field public static final enum AH:Ljava/time/chrono/HijrahEra;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Ljava/time/chrono/HijrahEra;

    const-string/jumbo v1, "AH"

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/HijrahEra;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/chrono/HijrahEra;

    sget-object v1, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljava/time/chrono/HijrahEra;
    .registers 4
    .param p0, "hijrahEra"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 106
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    .line 108
    :cond_6
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
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/chrono/HijrahEra;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Ljava/time/chrono/HijrahEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahEra;

    return-object v0
.end method

.method public static values()[Ljava/time/chrono/HijrahEra;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Ljava/time/chrono/HijrahEra;->$VALUES:[Ljava/time/chrono/HijrahEra;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v2, 0x1

    .line 152
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_b

    .line 153
    invoke-static {v2, v3, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 155
    :cond_b
    invoke-super {p0, p1}, Ljava/time/chrono/Era;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
