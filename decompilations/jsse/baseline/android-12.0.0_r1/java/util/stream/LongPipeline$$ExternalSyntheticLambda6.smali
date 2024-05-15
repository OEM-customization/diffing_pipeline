.class public final synthetic Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;->INSTANCE:Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(JJ)J
    .registers 5

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method
