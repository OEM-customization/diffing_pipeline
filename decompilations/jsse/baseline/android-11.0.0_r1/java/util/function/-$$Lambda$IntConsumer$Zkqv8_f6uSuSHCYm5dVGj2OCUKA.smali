.class public final synthetic Ljava/util/function/-$$Lambda$IntConsumer$Zkqv8_f6uSuSHCYm5dVGj2OCUKA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntConsumer;

.field public final synthetic blacklist f$1:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$IntConsumer$Zkqv8_f6uSuSHCYm5dVGj2OCUKA;->f$0:Ljava/util/function/IntConsumer;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$IntConsumer$Zkqv8_f6uSuSHCYm5dVGj2OCUKA;->f$1:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(I)V
    .registers 4

    iget-object v0, p0, Ljava/util/function/-$$Lambda$IntConsumer$Zkqv8_f6uSuSHCYm5dVGj2OCUKA;->f$0:Ljava/util/function/IntConsumer;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$IntConsumer$Zkqv8_f6uSuSHCYm5dVGj2OCUKA;->f$1:Ljava/util/function/IntConsumer;

    invoke-static {v0, v1, p1}, Ljava/util/function/IntConsumer;->lambda$andThen$0(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;I)V

    return-void
.end method
