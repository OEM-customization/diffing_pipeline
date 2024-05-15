.class public final synthetic Ljava/util/stream/-$$Lambda$ReferencePipeline$i-WMOWw-bzoH_v-eRIvtIHIFvko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$ReferencePipeline$i-WMOWw-bzoH_v-eRIvtIHIFvko;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$ReferencePipeline$i-WMOWw-bzoH_v-eRIvtIHIFvko;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$ReferencePipeline$i-WMOWw-bzoH_v-eRIvtIHIFvko;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$ReferencePipeline$i-WMOWw-bzoH_v-eRIvtIHIFvko;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/util/stream/ReferencePipeline;->lambda$collect$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
