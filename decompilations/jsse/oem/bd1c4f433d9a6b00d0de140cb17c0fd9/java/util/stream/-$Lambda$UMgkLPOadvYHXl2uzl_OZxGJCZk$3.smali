.class final synthetic Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(J)V
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Node$OfLong;->lambda$-java_util_stream_Node$OfLong_16640(J)V

    return-void
.end method

.method private final synthetic $m$1(J)V
    .registers 4
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;->lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfLong_30670(J)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$m$0(J)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$3;->$m$1(J)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
