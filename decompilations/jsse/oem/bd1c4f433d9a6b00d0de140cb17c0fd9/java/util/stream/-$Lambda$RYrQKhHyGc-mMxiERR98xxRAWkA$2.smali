.class final synthetic Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # J

    .prologue
    check-cast p1, [J

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/LongPipeline;->lambda$-java_util_stream_LongPipeline_14701([JJ)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # J

    .prologue
    check-cast p1, Ljava/util/LongSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    new-instance v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;J)V
    .registers 6

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$m$0(Ljava/lang/Object;J)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$2;->$m$1(Ljava/lang/Object;J)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
