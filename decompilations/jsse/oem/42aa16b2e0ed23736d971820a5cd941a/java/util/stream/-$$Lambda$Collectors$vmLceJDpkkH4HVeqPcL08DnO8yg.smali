.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/stream/Collectors;->lambda$mapping$8(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
