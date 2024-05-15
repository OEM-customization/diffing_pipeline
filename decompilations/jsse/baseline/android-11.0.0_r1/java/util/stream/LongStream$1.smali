.class Ljava/util/stream/LongStream$1;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongStream;->iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist t:J

.field final synthetic blacklist val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic blacklist val$seed:J


# direct methods
.method constructor blacklist <init>(JLjava/util/function/LongUnaryOperator;)V
    .registers 4

    .line 736
    iput-wide p1, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    iput-object p3, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iget-wide p1, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    iput-wide p1, p0, Ljava/util/stream/LongStream$1;->t:J

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api nextLong()J
    .registers 6

    .line 746
    iget-wide v0, p0, Ljava/util/stream/LongStream$1;->t:J

    .line 747
    .local v0, "v":J
    iget-object v2, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iget-wide v3, p0, Ljava/util/stream/LongStream$1;->t:J

    invoke-interface {v2, v3, v4}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/stream/LongStream$1;->t:J

    .line 748
    return-wide v0
.end method
