.class final synthetic Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->lambda$-java_util_function_BiPredicate_3305(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
