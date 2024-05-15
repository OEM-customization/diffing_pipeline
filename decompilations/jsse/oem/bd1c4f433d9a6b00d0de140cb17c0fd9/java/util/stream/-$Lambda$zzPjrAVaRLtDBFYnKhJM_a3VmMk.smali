.class final synthetic Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)J
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->lambda$-java_util_stream_LongPipeline_13909(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)J
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->lambda$-java_util_stream_ReferencePipeline_20472(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$INST$0:Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

    new-instance v0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$INST$1:Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$m$0(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$zzPjrAVaRLtDBFYnKhJM_a3VmMk;->$m$1(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
