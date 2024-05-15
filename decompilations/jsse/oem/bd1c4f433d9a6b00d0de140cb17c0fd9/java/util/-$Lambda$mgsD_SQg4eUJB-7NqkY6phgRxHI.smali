.class final synthetic Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic $INST$0:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

.field public static final synthetic $INST$1:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

.field public static final synthetic $INST$2:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Map$Entry;->lambda$-java_util_Map$Entry_22974(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/Map$Entry;->lambda$-java_util_Map$Entry_23760(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/TreeMap$EntrySpliterator;->lambda$-java_util_TreeMap$EntrySpliterator_113494(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;-><init>(B)V

    sput-object v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$INST$0:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    new-instance v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;-><init>(B)V

    sput-object v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$INST$1:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    new-instance v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;-><init>(B)V

    sput-object v0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$INST$2:Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$id:B

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$mgsD_SQg4eUJB-7NqkY6phgRxHI;->$m$2(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
