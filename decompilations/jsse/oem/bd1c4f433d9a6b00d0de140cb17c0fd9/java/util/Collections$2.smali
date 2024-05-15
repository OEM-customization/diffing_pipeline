.class final Ljava/util/Collections$2;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field est:J

.field final synthetic val$element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    .line 4750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4751
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    .line 1
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 3

    .prologue
    .line 4781
    iget-object v1, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    if-eqz v1, :cond_11

    const/16 v0, 0x100

    .line 4783
    .local v0, "value":I
    :goto_6
    or-int/lit8 v1, v0, 0x40

    or-int/lit16 v1, v1, 0x4000

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x10

    return v1

    .line 4781
    .end local v0    # "value":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_6
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 4776
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4771
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$2;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 4772
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 4760
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4761
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 4762
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    .line 4763
    iget-object v0, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4764
    const/4 v0, 0x1

    return v0

    .line 4766
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4755
    const/4 v0, 0x0

    return-object v0
.end method
