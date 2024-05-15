.class public final synthetic Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;->INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$0s_rkIyKzlnj_M-bqfCTpum_W2c;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;I)V
    .registers 3

    check-cast p1, [J

    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->lambda$average$3([JI)V

    return-void
.end method
