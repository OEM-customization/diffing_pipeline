.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;->INSTANCE:Ljava/util/stream/-$$Lambda$DoublePipeline$gq0fD9NZ938fl5Zgm1Lwm9G2tpI;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->lambda$distinct$0(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method
