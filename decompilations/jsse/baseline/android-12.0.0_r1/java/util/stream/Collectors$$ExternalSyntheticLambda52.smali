.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/Collector;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/Collector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda52;->f$0:Ljava/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda52;->f$0:Ljava/util/stream/Collector;

    check-cast p1, Ljava/util/stream/Collectors$Partition;

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->lambda$partitioningBy$57(Ljava/util/stream/Collector;Ljava/util/stream/Collectors$Partition;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
