.class final synthetic Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoublePredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)Z
    .registers 4
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoublePredicate;->lambda$-java_util_function_DoublePredicate_3160(D)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .registers 4

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI;->$m$0(D)Z

    move-result v0

    return v0
.end method
