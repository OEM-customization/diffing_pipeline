.class final synthetic Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(JJ)J
    .registers 8
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J

    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-4(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(JJ)J
    .registers 8
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J

    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-3(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$2(JJ)J
    .registers 8
    .param p1, "arg0"    # J
    .param p3, "arg1"    # J

    .prologue
    invoke-static {p1, p2, p3, p4}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-2(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$0:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    new-instance v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$1:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    new-instance v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$INST$2:Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsLong(JJ)J
    .registers 8

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$m$0(JJ)J

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$m$1(JJ)J

    move-result-wide v0

    return-wide v0

    :pswitch_15
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA;->$m$2(JJ)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
