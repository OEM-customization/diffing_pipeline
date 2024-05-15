.class final synthetic Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiFunction;

    iget-object v1, p0, Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/BiFunction;->lambda$-java_util_function_BiFunction_2840(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$1MZdIZ-DL_fjy9l0o8IMJk57T2g;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
