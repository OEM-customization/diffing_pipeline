.class final synthetic Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .registers 6
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleConsumer;

    iget-object v1, p0, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoubleConsumer;->lambda$-java_util_function_DoubleConsumer_2716(Ljava/util/function/DoubleConsumer;D)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$Tr2ZVotyK7bvB1MALZ-WioewFls;->$m$0(D)V

    return-void
.end method
