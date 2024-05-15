.class final synthetic Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(D)V
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/Node$OfDouble;->lambda$-java_util_stream_Node$OfDouble_19427(D)V

    return-void
.end method

.method private final synthetic $m$1(D)V
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    invoke-static {p1, p2}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfDouble_31710(D)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$m$0(D)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$1;->$m$1(D)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
