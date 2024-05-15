.class public final synthetic Ljava/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/IntPipeline$7$1;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/IntPipeline$7$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/IntPipeline$7$1;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/IntPipeline$7$1;

    invoke-virtual {v0, p1}, Ljava/util/stream/IntPipeline$7$1;->lambda$accept$0$IntPipeline$7$1(I)V

    return-void
.end method
