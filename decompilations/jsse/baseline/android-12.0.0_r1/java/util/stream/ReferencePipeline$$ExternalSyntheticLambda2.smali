.class public final synthetic Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;->INSTANCE:Ljava/util/stream/ReferencePipeline$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(Ljava/lang/Object;)J
    .registers 4

    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->lambda$count$2(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
