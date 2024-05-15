.class final synthetic Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .registers 3

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoublePredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-3(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1()Ljava/lang/Object;
    .registers 3

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntPredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-1(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2()Ljava/lang/Object;
    .registers 3

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/LongPredicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-2(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3()Ljava/lang/Object;
    .registers 3

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Ljava/util/stream/MatchOps;->-java_util_stream_MatchOps-mthref-0(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$id:B

    iput-object p2, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-byte v0, p0, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$m$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$m$2()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;->$m$3()Ljava/lang/Object;

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
