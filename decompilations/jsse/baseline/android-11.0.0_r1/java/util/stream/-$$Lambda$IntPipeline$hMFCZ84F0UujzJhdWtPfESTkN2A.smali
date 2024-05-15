.class public final synthetic Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;->INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$hMFCZ84F0UujzJhdWtPfESTkN2A;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, [J

    check-cast p2, [J

    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->lambda$average$4([J[J)V

    return-void
.end method
