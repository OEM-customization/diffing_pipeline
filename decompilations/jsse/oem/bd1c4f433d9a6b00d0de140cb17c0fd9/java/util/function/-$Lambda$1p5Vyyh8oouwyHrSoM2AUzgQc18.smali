.class final synthetic Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object v1, p0, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v0, v1, p1}, Ljava/util/function/Consumer;->lambda$-java_util_function_Consumer_2620(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$1p5Vyyh8oouwyHrSoM2AUzgQc18;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
