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
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/Collector$Characteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/Collector$Characteristics;

.field public static final enum CONCURRENT:Ljava/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector$Characteristics;"
        }
    .end annotation
.end field

.field public static final enum IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector$Characteristics;"
        }
    .end annotation
.end field

.field public static final enum UNORDERED:Ljava/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector$Characteristics;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string/jumbo v1, "CONCURRENT"

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    .line 325
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    .line 327
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string/jumbo v1, "UNORDERED"

    invoke-direct {v0, v1, v3}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    .line 332
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 334
    new-instance v0, Ljava/util/stream/Collector$Characteristics;

    const-string/jumbo v1, "IDENTITY_FINISH"

    invoke-direct {v0, v1, v4}, Ljava/util/stream/Collector$Characteristics;-><init>(Ljava/lang/String;I)V

    .line 339
    sput-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 314
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v1, v0, v3

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    aput-object v1, v0, v4

    sput-object v0, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/Collector$Characteristics;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 314
    const-class v0, Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method

.method public static values()[Ljava/util/stream/Collector$Characteristics;
    .registers 1

    .prologue
    .line 314
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->$VALUES:[Ljava/util/stream/Collector$Characteristics;

    return-object v0
.end method
