.class public final synthetic Ljava/util/stream/-$$Lambda$wDsxx48ovPSGeNEb3P6H9u7YX0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$wDsxx48ovPSGeNEb3P6H9u7YX0k;->f$0:Ljava/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$wDsxx48ovPSGeNEb3P6H9u7YX0k;->f$0:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/stream/Sink;->accept(I)V

    return-void
.end method
