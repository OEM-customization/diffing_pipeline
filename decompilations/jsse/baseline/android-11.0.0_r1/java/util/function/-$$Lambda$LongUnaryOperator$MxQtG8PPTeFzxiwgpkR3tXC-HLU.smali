.class public final synthetic Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongUnaryOperator;

.field public final synthetic blacklist f$1:Ljava/util/function/LongUnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;->f$0:Ljava/util/function/LongUnaryOperator;

    iput-object p2, p0, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;->f$1:Ljava/util/function/LongUnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsLong(J)J
    .registers 5

    iget-object v0, p0, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;->f$0:Ljava/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$$Lambda$LongUnaryOperator$MxQtG8PPTeFzxiwgpkR3tXC-HLU;->f$1:Ljava/util/function/LongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$andThen$1(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J

    move-result-wide p1

    return-wide p1
.end method
