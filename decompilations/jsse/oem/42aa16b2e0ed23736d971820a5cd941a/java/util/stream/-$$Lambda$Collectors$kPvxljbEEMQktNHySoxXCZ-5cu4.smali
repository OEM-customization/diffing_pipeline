.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$kPvxljbEEMQktNHySoxXCZ-5cu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/ToDoubleFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$kPvxljbEEMQktNHySoxXCZ-5cu4;->f$0:Ljava/util/function/ToDoubleFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$kPvxljbEEMQktNHySoxXCZ-5cu4;->f$0:Ljava/util/function/ToDoubleFunction;

    check-cast p1, [D

    invoke-static {v0, p1, p2}, Ljava/util/stream/Collectors;->lambda$averagingDouble$31(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V

    return-void
.end method