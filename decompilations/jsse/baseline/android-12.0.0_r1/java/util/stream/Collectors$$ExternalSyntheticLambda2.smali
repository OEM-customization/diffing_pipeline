.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/Collectors$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/BinaryOperator;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$reducing$34(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
