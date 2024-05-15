.class Ljava/lang/ref/Reference$SinkHolder$1;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/Reference$SinkHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist core-platform-api test-api finalize()V
    .registers 3

    .line 308
    sget-object v0, Ljava/lang/ref/Reference$SinkHolder;->sink:Ljava/lang/Object;

    if-nez v0, :cond_13

    # getter for: Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I
    invoke-static {}, Ljava/lang/ref/Reference$SinkHolder;->access$000()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_13

    .line 309
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Can\'t get here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 311
    :cond_13
    :goto_13
    # operator++ for: Ljava/lang/ref/Reference$SinkHolder;->finalize_count:I
    invoke-static {}, Ljava/lang/ref/Reference$SinkHolder;->access$008()I

    .line 312
    return-void
.end method
