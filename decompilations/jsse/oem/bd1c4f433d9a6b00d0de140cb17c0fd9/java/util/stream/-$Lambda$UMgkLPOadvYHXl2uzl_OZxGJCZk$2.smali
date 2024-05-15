.class final synthetic Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Ljava/util/stream/Node$OfInt;->lambda$-java_util_stream_Node$OfInt_13922(I)V

    return-void
.end method

.method private final synthetic $m$1(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfInt;->lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfInt_29662(I)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$m$0(I)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk$2;->$m$1(I)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
