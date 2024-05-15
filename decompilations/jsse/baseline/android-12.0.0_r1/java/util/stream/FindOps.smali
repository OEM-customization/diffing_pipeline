.class final Ljava/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/FindOps$FindTask;,
        Ljava/util/stream/FindOps$FindSink;,
        Ljava/util/stream/FindOps$FindOp;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist makeDouble(Z)Ljava/util/stream/TerminalOp;
    .registers 8
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v6, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v3

    sget-object v4, Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v5, Ljava/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda4;

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v6
.end method

.method public static blacklist makeInt(Z)Ljava/util/stream/TerminalOp;
    .registers 8
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v6, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v3

    sget-object v4, Ljava/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v5, Ljava/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda5;

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v6
.end method

.method public static blacklist makeLong(Z)Ljava/util/stream/TerminalOp;
    .registers 8
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v6, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v3

    sget-object v4, Ljava/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda3;

    sget-object v5, Ljava/util/stream/FindOps$$ExternalSyntheticLambda6;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda6;

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v6
.end method

.method public static blacklist makeRef(Z)Ljava/util/stream/TerminalOp;
    .registers 8
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/stream/TerminalOp<",
            "TT;",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 58
    new-instance v6, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/util/stream/FindOps$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda0;

    sget-object v5, Ljava/util/stream/FindOps$$ExternalSyntheticLambda7;->INSTANCE:Ljava/util/stream/FindOps$$ExternalSyntheticLambda7;

    move-object v0, v6

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v6
.end method
