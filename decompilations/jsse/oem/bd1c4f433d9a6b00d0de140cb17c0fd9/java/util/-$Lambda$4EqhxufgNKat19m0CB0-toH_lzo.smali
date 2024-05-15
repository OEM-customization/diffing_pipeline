.class final synthetic Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_19343(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Comparator;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_10127(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->$id:B

    iput-object p2, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
