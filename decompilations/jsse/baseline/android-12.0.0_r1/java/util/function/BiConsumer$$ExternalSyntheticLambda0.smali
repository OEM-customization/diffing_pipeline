.class public final synthetic Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/function/BiConsumer$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/BiConsumer;->lambda$andThen$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
