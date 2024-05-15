.class Ljava/util/stream/Collectors$CollectorImpl;
.super Ljava/lang/Object;
.source "Collectors.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Collectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector<",
        "TT;TA;TR;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o accumulator:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o combiner:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o finisher:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    # invokes: Ljava/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;
    invoke-static {}, Ljava/util/stream/Collectors;->access$000()Ljava/util/function/Function;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 171
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TA;>;",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava/util/function/Function<",
            "TA;TR;>;",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;TT;>;"
    .local p3, "combiner":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TR;>;"
    .local p5, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    .line 160
    iput-object p2, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    .line 161
    iput-object p3, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    .line 162
    iput-object p4, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    .line 163
    iput-object p5, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    .line 164
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accumulator()Ljava/util/function/BiConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->accumulator:Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public whitelist core-platform-api test-api characteristics()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist core-platform-api test-api combiner()Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->combiner:Ljava/util/function/BinaryOperator;

    return-object v0
.end method

.method public whitelist core-platform-api test-api finisher()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->finisher:Ljava/util/function/Function;

    return-object v0
.end method

.method public whitelist core-platform-api test-api supplier()Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Ljava/util/stream/Collectors$CollectorImpl;, "Ljava/util/stream/Collectors$CollectorImpl<TT;TA;TR;>;"
    iget-object v0, p0, Ljava/util/stream/Collectors$CollectorImpl;->supplier:Ljava/util/function/Supplier;

    return-object v0
.end method
