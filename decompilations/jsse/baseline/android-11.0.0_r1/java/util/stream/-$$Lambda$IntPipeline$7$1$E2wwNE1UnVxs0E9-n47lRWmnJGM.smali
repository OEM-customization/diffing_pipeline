.class public final synthetic Ljava/util/stream/-$$Lambda$IntPipeline$7$1$E2wwNE1UnVxs0E9-n47lRWmnJGM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/IntPipeline$7$1;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/IntPipeline$7$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$IntPipeline$7$1$E2wwNE1UnVxs0E9-n47lRWmnJGM;->f$0:Ljava/util/stream/IntPipeline$7$1;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$IntPipeline$7$1$E2wwNE1UnVxs0E9-n47lRWmnJGM;->f$0:Ljava/util/stream/IntPipeline$7$1;

    invoke-virtual {v0, p1}, Ljava/util/stream/IntPipeline$7$1;->lambda$accept$0$IntPipeline$7$1(I)V

    return-void
.end method
