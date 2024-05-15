.class Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;
.super Ljava/lang/Object;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/LongAdder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final value:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/LongAdder;)V
    .registers 4
    .param p1, "a"    # Ljava/util/concurrent/atomic/LongAdder;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;->value:J

    .line 229
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    .line 240
    .local v0, "a":Ljava/util/concurrent/atomic/LongAdder;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;->value:J

    iput-wide v2, v0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 241
    return-object v0
.end method
