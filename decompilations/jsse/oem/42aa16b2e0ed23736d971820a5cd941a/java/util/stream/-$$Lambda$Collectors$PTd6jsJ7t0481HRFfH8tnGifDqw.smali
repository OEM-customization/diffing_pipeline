.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BinaryOperator;

.field public final synthetic blacklist f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;->f$0:Ljava/util/function/BinaryOperator;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;->f$0:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;->f$1:Ljava/util/function/Function;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Ljava/util/stream/Collectors;->lambda$reducing$41(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
