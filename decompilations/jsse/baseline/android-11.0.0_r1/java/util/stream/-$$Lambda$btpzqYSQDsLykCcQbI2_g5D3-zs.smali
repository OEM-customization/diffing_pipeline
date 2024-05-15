.class public final synthetic Ljava/util/stream/-$$Lambda$btpzqYSQDsLykCcQbI2_g5D3-zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/stream/Sink;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$btpzqYSQDsLykCcQbI2_g5D3-zs;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$btpzqYSQDsLykCcQbI2_g5D3-zs;->f$0:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
