.class public final synthetic Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;->INSTANCE:Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(II)I
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
