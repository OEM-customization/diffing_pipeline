.class public final synthetic Ljava/util/BitSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/BitSet;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/BitSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/BitSet$$ExternalSyntheticLambda0;->f$0:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/util/BitSet$$ExternalSyntheticLambda0;->f$0:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->lambda$stream$0$BitSet()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
