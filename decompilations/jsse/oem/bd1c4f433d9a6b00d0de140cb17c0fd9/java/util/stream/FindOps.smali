.class final Ljava/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/FindOps$FindOp;,
        Ljava/util/stream/FindOps$FindSink;,
        Ljava/util/stream/FindOps$FindTask;
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_FindOps-mthref-0(Ljava/util/Optional;)Z
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-1()Ljava/util/stream/TerminalSink;
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfRef;

    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfRef;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-2(Ljava/util/OptionalInt;)Z
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-3()Ljava/util/stream/TerminalSink;
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfInt;

    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfInt;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-4(Ljava/util/OptionalLong;)Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/util/OptionalLong;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-5()Ljava/util/stream/TerminalSink;
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfLong;

    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfLong;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-6(Ljava/util/OptionalDouble;)Z
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic -java_util_stream_FindOps-mthref-7()Ljava/util/stream/TerminalSink;
    .registers 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/stream/FindOps$FindSink$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/FindOps$FindSink$OfDouble;-><init>()V

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Ljava/util/stream/TerminalOp;
    .registers 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Double;",
            "Ljava/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v3

    sget-object v4, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$0:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    sget-object v5, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$23:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeInt(Z)Ljava/util/stream/TerminalOp;
    .registers 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v3

    sget-object v4, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$1:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    sget-object v5, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$24:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLong(Z)Ljava/util/stream/TerminalOp;
    .registers 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/stream/TerminalOp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v3

    sget-object v4, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$2:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    sget-object v5, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$25:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Z)Ljava/util/stream/TerminalOp;
    .registers 7
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Ljava/util/stream/TerminalOp",
            "<TT;",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/stream/FindOps$FindOp;

    sget-object v2, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;->$INST$3:Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk;

    sget-object v5, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$26:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/FindOps$FindOp;-><init>(ZLjava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-object v0
.end method
