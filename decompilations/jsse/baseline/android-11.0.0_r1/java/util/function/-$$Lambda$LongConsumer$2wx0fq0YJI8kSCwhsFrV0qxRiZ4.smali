.class public final synthetic Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;->f$0:Ljava/util/function/LongConsumer;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;->f$1:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(J)V
    .registers 5

    iget-object v0, p0, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;->f$0:Ljava/util/function/LongConsumer;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;->f$1:Ljava/util/function/LongConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/LongConsumer;->lambda$andThen$0(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;J)V

    return-void
.end method
