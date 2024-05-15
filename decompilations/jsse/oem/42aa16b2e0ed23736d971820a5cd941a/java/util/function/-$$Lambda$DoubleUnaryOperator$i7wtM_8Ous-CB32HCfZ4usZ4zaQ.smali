.class public final synthetic Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;

    invoke-direct {v0}, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;-><init>()V

    sput-object v0, Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;->INSTANCE:Ljava/util/function/-$$Lambda$DoubleUnaryOperator$i7wtM_8Ous-CB32HCfZ4usZ4zaQ;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsDouble(D)D
    .registers 3

    invoke-static {p1, p2}, Ljava/util/function/DoubleUnaryOperator;->lambda$identity$2(D)D

    move-result-wide p1

    return-wide p1
.end method
