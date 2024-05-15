.class final synthetic Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)Z
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->lambda$-java_util_function_IntPredicate_3136(I)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$7wUuYdVTmZGtkCqNZ8xzJcRU4aE;->$m$0(I)Z

    move-result v0

    return v0
.end method
