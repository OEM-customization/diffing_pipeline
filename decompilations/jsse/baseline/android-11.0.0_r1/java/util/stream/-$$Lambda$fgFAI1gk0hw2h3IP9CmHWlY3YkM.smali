.class public final synthetic Ljava/util/stream/-$$Lambda$fgFAI1gk0hw2h3IP9CmHWlY3YkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$fgFAI1gk0hw2h3IP9CmHWlY3YkM;->f$0:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$fgFAI1gk0hw2h3IP9CmHWlY3YkM;->f$0:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
