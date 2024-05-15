.class final synthetic Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collections$CopiesList;

    invoke-virtual {v0, p1}, Ljava/util/Collections$CopiesList;->lambda$-java_util_Collections$CopiesList_199260(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(I)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collections$CopiesList;

    invoke-virtual {v0, p1}, Ljava/util/Collections$CopiesList;->lambda$-java_util_Collections$CopiesList_199111(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->$id:B

    iput-object p2, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->$m$0(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$1;->$m$1(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
