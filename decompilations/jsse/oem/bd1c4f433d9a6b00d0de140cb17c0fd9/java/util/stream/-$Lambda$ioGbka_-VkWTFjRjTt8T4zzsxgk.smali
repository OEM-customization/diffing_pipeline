.class final synthetic Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

.field public static final synthetic $INST$1:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

.field public static final synthetic $INST$2:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

.field public static final synthetic $INST$3:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/OptionalDouble;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-6(Ljava/util/OptionalDouble;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/OptionalInt;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-2(Ljava/util/OptionalInt;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/OptionalLong;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-4(Ljava/util/OptionalLong;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Optional;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-0(Ljava/util/Optional;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$0:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    new-instance v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$1:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    new-instance v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$2:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    new-instance v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;-><init>(B)V

    sput-object v0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$3:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$id:B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
