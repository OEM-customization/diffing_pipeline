.class public final synthetic Ljava/util/stream/-$$Lambda$Abl7XfE0Z4AgkViLas9vhsO9mjw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/Sink;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/Sink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Abl7XfE0Z4AgkViLas9vhsO9mjw;->f$0:Ljava/util/stream/Sink;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Abl7XfE0Z4AgkViLas9vhsO9mjw;->f$0:Ljava/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
