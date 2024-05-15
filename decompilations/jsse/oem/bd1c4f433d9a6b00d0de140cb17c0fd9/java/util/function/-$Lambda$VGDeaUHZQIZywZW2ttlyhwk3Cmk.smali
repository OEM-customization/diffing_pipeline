.class final synthetic Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;


# direct methods
.method private final synthetic $m$0(D)D
    .registers 6
    .param p1, "arg0"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/util/function/DoubleUnaryOperator;->lambda$-java_util_function_DoubleUnaryOperator_3682(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;->$INST$0:Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 6

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$VGDeaUHZQIZywZW2ttlyhwk3Cmk;->$m$0(D)D

    move-result-wide v0

    return-wide v0
.end method
