.class final synthetic Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_20685(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_23363(Ljava/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToIntFunction;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_21565(Ljava/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToLongFunction;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_22461(Ljava/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/Map$Entry;->lambda$-java_util_Map$Entry_24570(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$5(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/Map$Entry;->lambda$-java_util_Map$Entry_25387(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$id:B

    iput-object p2, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$id:B

    packed-switch v0, :pswitch_data_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$2(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$3(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_1f
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$4(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_24
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$Hazqao1eYCE_pmZR5Jlrc2GvLhk;->$m$5(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method
