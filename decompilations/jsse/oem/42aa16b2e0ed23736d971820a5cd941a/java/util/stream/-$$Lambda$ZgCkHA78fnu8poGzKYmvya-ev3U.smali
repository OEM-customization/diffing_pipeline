.class public final synthetic Ljava/util/stream/-$$Lambda$ZgCkHA78fnu8poGzKYmvya-ev3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfInt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$ZgCkHA78fnu8poGzKYmvya-ev3U;->f$0:Ljava/util/stream/SpinedBuffer$OfInt;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$ZgCkHA78fnu8poGzKYmvya-ev3U;->f$0:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method
