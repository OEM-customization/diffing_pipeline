.class public final enum Ljava/time/chrono/ThaiBuddhistEra;
.super Ljava/lang/Enum;
.source "ThaiBuddhistEra.java"

# interfaces
.implements Ljava/time/chrono/Era;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/time/chrono/ThaiBuddhistEra;",
        ">;",
        "Ljava/time/chrono/Era;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum whitelist core-platform-api test-api BE:Ljava/time/chrono/ThaiBuddhistEra;

.field public static final enum whitelist core-platform-api test-api BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 113
    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string v1, "BEFORE_BE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    .line 118
    new-instance v0, Ljava/time/chrono/ThaiBuddhistEra;

    const-string v1, "BE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/time/chrono/ThaiBuddhistEra;

    sget-object v4, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api of(I)Ljava/time/chrono/ThaiBuddhistEra;
    .registers 4
    .param p0, "thaiBuddhistEra"    # I

    .line 132
    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    .line 136
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0

    .line 138
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

    .line 134
    :cond_1f
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/time/chrono/ThaiBuddhistEra;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 107
    const-class v0, Ljava/time/chrono/ThaiBuddhistEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/time/chrono/ThaiBuddhistEra;
    .registers 1

    .line 107
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljava/time/chrono/ThaiBuddhistEra;

    invoke-virtual {v0}, [Ljava/time/chrono/ThaiBuddhistEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getValue()I
    .registers 2

    .line 152
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistEra;->ordinal()I

    move-result v0

    return v0
.end method