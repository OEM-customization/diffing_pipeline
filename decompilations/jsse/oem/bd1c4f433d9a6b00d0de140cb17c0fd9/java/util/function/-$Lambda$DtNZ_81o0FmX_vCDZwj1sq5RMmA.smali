.class final synthetic Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiConsumer;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/BiConsumer;->lambda$-java_util_function_BiConsumer_2859(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$DtNZ_81o0FmX_vCDZwj1sq5RMmA;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
