.class public final synthetic Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;->INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;D)V
    .registers 4

    check-cast p1, [D

    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->lambda$average$5([DD)V

    return-void
.end method
