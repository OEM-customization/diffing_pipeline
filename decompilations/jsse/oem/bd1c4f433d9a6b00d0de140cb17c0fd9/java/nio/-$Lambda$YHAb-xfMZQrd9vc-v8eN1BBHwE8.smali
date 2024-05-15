.class final synthetic Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .registers 2

    .prologue
    iget-object v0, p0, Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-static {v0}, Ljava/nio/CharBuffer;->lambda$-java_nio_CharBuffer_42113(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/nio/-$Lambda$YHAb-xfMZQrd9vc-v8eN1BBHwE8;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
