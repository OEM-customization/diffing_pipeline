.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$49j2hRW8u6KMoxsVt77YSpMRb1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToIntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$49j2hRW8u6KMoxsVt77YSpMRb1g;->f$0:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$49j2hRW8u6KMoxsVt77YSpMRb1g;->f$0:Ljava/util/function/ToIntFunction;

    check-cast p1, Ljava/util/IntSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$summarizingInt$60(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method
