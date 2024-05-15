.class public final enum Ljava/time/chrono/IsoEra;
.super Ljava/lang/Enum;
.source "IsoEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/chrono/IsoEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/chrono/IsoEra;

.field public static final enum whitelist core-platform-api test-api BCE:Ljava/time/chrono/IsoEra;

.field public static final enum whitelist core-platform-api test-api CE:Ljava/time/chrono/IsoEra;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 111
    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string v1, "BCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    .line 116
    new-instance v0, Ljava/time/chrono/IsoEra;

    const-string v1, "CE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/time/chrono/IsoEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    .line 105
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/chrono/IsoEra;

    sget-object v4, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api of(I)Ljava/time/chrono/IsoEra;
    .registers 4
    .param p0, "isoEra"    # I

    .line 130
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 134
    sget-object v0, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    return-object v0

    .line 136
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1f
    sget-object v0, Ljava/time/chrono/IsoEra;->BCE:Ljava/time/chrono/IsoEra;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/IsoEra;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 105
    const-class v0, Ljava/time/chrono/IsoEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/IsoEra;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/time/chrono/IsoEra;
    .registers 1

    .line 105
    sget-object v0, Ljava/time/chrono/IsoEra;->$VALUES:[Ljava/time/chrono/IsoEra;

    invoke-virtual {v0}, [Ljava/time/chrono/IsoEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/IsoEra;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getValue()I
    .registers 2

    .line 150
    invoke-virtual {p0}, Ljava/time/chrono/IsoEra;->ordinal()I

    move-result v0

    return v0
.end method
