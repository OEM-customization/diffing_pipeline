.class final synthetic Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/stream/Node;->lambda$-java_util_stream_Node_5216(Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_26203(Ljava/lang/Object;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .registers 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_25294(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$INST$0:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$INST$1:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    new-instance v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$INST$2:Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$UMgkLPOadvYHXl2uzl_OZxGJCZk;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
