.class public final synthetic Ljava/util/stream/-$$Lambda$DoublePipeline$5$1$kqJiVK7sQB3kKvPk9DB9gInHJq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/DoublePipeline$5$1;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/DoublePipeline$5$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$DoublePipeline$5$1$kqJiVK7sQB3kKvPk9DB9gInHJq4;->f$0:Ljava/util/stream/DoublePipeline$5$1;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$DoublePipeline$5$1$kqJiVK7sQB3kKvPk9DB9gInHJq4;->f$0:Ljava/util/stream/DoublePipeline$5$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/DoublePipeline$5$1;->lambda$accept$0$DoublePipeline$5$1(D)V

    return-void
.end method
