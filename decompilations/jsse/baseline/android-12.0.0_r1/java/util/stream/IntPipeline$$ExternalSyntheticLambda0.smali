.class public final synthetic Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/IntSummaryStatistics;

    check-cast p2, Ljava/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-void
.end method