.class final Ljava/util/stream/MatchOps;
.super Ljava/lang/Object;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/MatchOps$BooleanTerminalSink;,
        Ljava/util/stream/MatchOps$MatchKind;,
        Ljava/util/stream/MatchOps$MatchOp;,
        Ljava/util/stream/MatchOps$MatchTask;
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_MatchOps-mthref-0(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Ljava/util/stream/MatchOps$1MatchSink;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$1MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-1(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/util/stream/MatchOps$2MatchSink;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$2MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-2(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    .prologue
    .line 156
    new-instance v0, Ljava/util/stream/MatchOps$3MatchSink;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$3MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_MatchOps-mthref-3(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)Ljava/util/stream/MatchOps$BooleanTerminalSink;
    .registers 3

    .prologue
    .line 186
    new-instance v0, Ljava/util/stream/MatchOps$4MatchSink;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/MatchOps$4MatchSink;-><init>(Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Ljava/util/function/DoublePredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .registers 6
    .param p0, "predicate"    # Ljava/util/function/DoublePredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoublePredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    new-instance v2, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .registers 6
    .param p0, "predicate"    # Ljava/util/function/IntPredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntPredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    new-instance v2, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1, p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongPredicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .registers 6
    .param p0, "predicate"    # Ljava/util/function/LongPredicate;
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongPredicate;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    new-instance v2, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1, p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Predicate;Ljava/util/stream/MatchOps$MatchKind;)Ljava/util/stream/TerminalOp;
    .registers 6
    .param p1, "matchKind"    # Ljava/util/stream/MatchOps$MatchKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;",
            "Ljava/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    new-instance v2, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1, p0}, Ljava/util/stream/-$Lambda$6Ha_z5NODYn_Qs3Vg00tRqQ1oBM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/MatchOps$MatchOp;-><init>(Ljava/util/stream/StreamShape;Ljava/util/stream/MatchOps$MatchKind;Ljava/util/function/Supplier;)V

    return-object v0
.end method
