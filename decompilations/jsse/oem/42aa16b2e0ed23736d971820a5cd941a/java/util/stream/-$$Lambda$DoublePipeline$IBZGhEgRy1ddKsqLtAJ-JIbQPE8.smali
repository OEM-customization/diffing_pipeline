.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$IBZGhEgRy1ddKsqLtAJ-JIbQPE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$DoublePipeline$IBZGhEgRy1ddKsqLtAJ-JIbQPE8;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$DoublePipeline$IBZGhEgRy1ddKsqLtAJ-JIbQPE8;->f$0:Ljava/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava/util/stream/DoublePipeline;->lambda$collect$8(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
