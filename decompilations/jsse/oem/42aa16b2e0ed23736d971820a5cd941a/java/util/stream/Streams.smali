.class final Ljava/util/stream/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Streams$ConcatSpliterator;,
        Ljava/util/stream/Streams$DoubleStreamBuilderImpl;,
        Ljava/util/stream/Streams$LongStreamBuilderImpl;,
        Ljava/util/stream/Streams$IntStreamBuilderImpl;,
        Ljava/util/stream/Streams$StreamBuilderImpl;,
        Ljava/util/stream/Streams$AbstractStreamBuilderImpl;,
        Ljava/util/stream/Streams$RangeLongSpliterator;,
        Ljava/util/stream/Streams$RangeIntSpliterator;
    }
.end annotation


# static fields
.field static final blacklist NONE:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/stream/Streams;->NONE:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Error;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist composeWithExceptions(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3
    .param p0, "a"    # Ljava/lang/Runnable;
    .param p1, "b"    # Ljava/lang/Runnable;

    .line 846
    new-instance v0, Ljava/util/stream/Streams$1;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static blacklist composedClose(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)Ljava/lang/Runnable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/BaseStream<",
            "**>;",
            "Ljava/util/stream/BaseStream<",
            "**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 875
    .local p0, "a":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .local p1, "b":Ljava/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    new-instance v0, Ljava/util/stream/Streams$2;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Streams$2;-><init>(Ljava/util/stream/BaseStream;Ljava/util/stream/BaseStream;)V

    return-object v0
.end method
