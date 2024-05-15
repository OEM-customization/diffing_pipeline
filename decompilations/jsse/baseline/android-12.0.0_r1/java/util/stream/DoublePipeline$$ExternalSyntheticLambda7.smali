.class public final synthetic Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;->INSTANCE:Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(D)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
