.class public final enum Ljava/util/stream/Collector$Characteristics;
.super Ljava/lang/Enum;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Characteristics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/stream/Collector$Characteristics;

.field public static final enum whitelist core-platform-api test-api CONCURRENT:Ljava/util/stream/Collector$Characteristics;

.field public static final enum whitelist core-platform-api test-api IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

.field public static final enum whitelist core-platform-api test-api UNORDERED:Ljava/util/stream/Collector$Characteristics;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 325
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string v1, "CONCURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    .line 332
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string v1, "UNORDERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 339
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string v1, "IDENTITY_FINISH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 314
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    aput-object v5, v1, v2

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/String;)Ljava/util/stream/Collector$Characteristics;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 314
    const-class v0, Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api values()[Ljava/util/stream/Collector$Characteristics;
    .registers 1

    .line 314
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    invoke-virtual {v0}, [Ljava/util/stream/Collector$Characteristics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method
