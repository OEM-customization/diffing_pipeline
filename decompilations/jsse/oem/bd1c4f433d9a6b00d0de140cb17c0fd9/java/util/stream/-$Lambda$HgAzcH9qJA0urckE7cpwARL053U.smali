.class final synthetic Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

.field public static final synthetic $INST$3:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(J)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-1(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(J)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfDouble;->-java_util_stream_Nodes$CollectorTask$OfDouble-mthref-0(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(J)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfInt;->-java_util_stream_Nodes$CollectorTask$OfInt-mthref-0(J)Ljava/util/stream/Node$Builder$OfInt;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(J)Ljava/lang/Object;
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfLong;->-java_util_stream_Nodes$CollectorTask$OfLong-mthref-0(J)Ljava/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$0:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    new-instance v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$1:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    new-instance v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$2:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    new-instance v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$INST$3:Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$m$0(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$m$1(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$m$2(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$HgAzcH9qJA0urckE7cpwARL053U;->$m$3(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
