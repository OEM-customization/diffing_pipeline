.class public final synthetic Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;->INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$Q_Wb7uDnZZMCasMbsGNAwSlprMo;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsLong(I)J
    .registers 4

    invoke-static {p1}, Ljava/util/stream/IntPipeline;->lambda$count$1(I)J

    move-result-wide v0

    return-wide v0
.end method
