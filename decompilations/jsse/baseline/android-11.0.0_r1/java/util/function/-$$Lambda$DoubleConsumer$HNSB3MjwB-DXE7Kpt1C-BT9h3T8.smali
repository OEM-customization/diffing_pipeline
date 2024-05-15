.class public final synthetic Ljava/util/function/-$$Lambda$DoubleConsumer$HNSB3MjwB-DXE7Kpt1C-BT9h3T8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/DoubleConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/DoubleConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$DoubleConsumer$HNSB3MjwB-DXE7Kpt1C-BT9h3T8;->f$0:Ljava/util/function/DoubleConsumer;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$DoubleConsumer$HNSB3MjwB-DXE7Kpt1C-BT9h3T8;->f$1:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 5

    iget-object v0, p0, Ljava/util/function/-$$Lambda$DoubleConsumer$HNSB3MjwB-DXE7Kpt1C-BT9h3T8;->f$0:Ljava/util/function/DoubleConsumer;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$DoubleConsumer$HNSB3MjwB-DXE7Kpt1C-BT9h3T8;->f$1:Ljava/util/function/DoubleConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/DoubleConsumer;->lambda$andThen$0(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;D)V

    return-void
.end method
