.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Function;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;

.field public final synthetic blacklist f$2:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Function;

    iget-object v2, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda5;->f$2:Ljava/util/function/BinaryOperator;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/stream/Collectors;->lambda$toConcurrentMap$59(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
