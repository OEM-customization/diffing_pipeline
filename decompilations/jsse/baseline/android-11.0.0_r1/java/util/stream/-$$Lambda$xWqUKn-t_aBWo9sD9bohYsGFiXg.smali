.class public final synthetic Ljava/util/stream/-$$Lambda$xWqUKn-t_aBWo9sD9bohYsGFiXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfDouble;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$xWqUKn-t_aBWo9sD9bohYsGFiXg;->f$0:Ljava/util/stream/SpinedBuffer$OfDouble;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$xWqUKn-t_aBWo9sD9bohYsGFiXg;->f$0:Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    return-void
.end method