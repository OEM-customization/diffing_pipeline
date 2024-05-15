.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(II)I
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-4(II)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(II)I
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-3(II)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(II)I
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-2(II)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$INST$0:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    new-instance v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$INST$1:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    new-instance v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$INST$2:Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)I
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$m$0(II)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$m$1(II)I

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo;->$m$2(II)I

    move-result v0

    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
