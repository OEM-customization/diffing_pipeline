.class public final synthetic Ljava/util/stream/-$$Lambda$GF-s38TgrG6hfxe__ZFdhGp-wPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/stream/Sink;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/SpinedBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/SpinedBuffer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$GF-s38TgrG6hfxe__ZFdhGp-wPw;->f$0:Ljava/util/stream/SpinedBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$GF-s38TgrG6hfxe__ZFdhGp-wPw;->f$0:Ljava/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method
