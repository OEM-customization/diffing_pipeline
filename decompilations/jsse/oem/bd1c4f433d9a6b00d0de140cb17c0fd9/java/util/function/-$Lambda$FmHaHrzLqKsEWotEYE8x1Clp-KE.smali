.class final synthetic Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntConsumer;

    iget-object v1, p0, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntConsumer;

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntConsumer;->lambda$-java_util_function_IntConsumer_2686(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 2

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$FmHaHrzLqKsEWotEYE8x1Clp-KE;->$m$0(I)V

    return-void
.end method
