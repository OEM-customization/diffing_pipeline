.class public final synthetic Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/AbstractPipeline;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/AbstractPipeline;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/AbstractPipeline;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/util/stream/AbstractPipeline$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava/util/stream/AbstractPipeline;->lambda$spliterator$0$AbstractPipeline()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
