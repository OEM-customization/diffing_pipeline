.class Ljava/util/Collections$2;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections;->singletonSpliterator(Ljava/lang/Object;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field blacklist est:J

.field final synthetic blacklist val$element:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 4

    .line 4761
    iput-object p1, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4762
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 3

    .line 4792
    iget-object v0, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    if-eqz v0, :cond_7

    const/16 v0, 0x100

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 4794
    .local v0, "value":I
    :goto_8
    or-int/lit8 v1, v0, 0x40

    or-int/lit16 v1, v1, 0x4000

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x10

    return v1
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 4787
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 4782
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$2;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 4783
    return-void
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 4771
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4772
    iget-wide v0, p0, Ljava/util/Collections$2;->est:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    .line 4773
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Collections$2;->est:J

    .line 4774
    iget-object v0, p0, Ljava/util/Collections$2;->val$element:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4775
    const/4 v0, 0x1

    return v0

    .line 4777
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 4766
    const/4 v0, 0x0

    return-object v0
.end method
