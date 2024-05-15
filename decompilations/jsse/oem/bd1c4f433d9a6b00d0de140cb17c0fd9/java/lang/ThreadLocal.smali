.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$SuppliedThreadLocal;,
        Ljava/lang/ThreadLocal$ThreadLocalMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final HASH_INCREMENT:I = 0x61c88647

.field private static nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final threadLocalHashCode:I


# direct methods
.method static synthetic -get0(Ljava/lang/ThreadLocal;)I
    .registers 2
    .param p0, "-this"    # Ljava/lang/ThreadLocal;

    .prologue
    iget v0, p0, Ljava/lang/ThreadLocal;->threadLocalHashCode:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 91
    sput-object v0, Ljava/lang/ThreadLocal;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 148
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Ljava/lang/ThreadLocal;->nextHashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/ThreadLocal;->threadLocalHashCode:I

    .line 149
    return-void
.end method

.method static createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;
    .registers 3
    .param p0, "parentMap"    # Ljava/lang/ThreadLocal$ThreadLocalMap;

    .prologue
    .line 255
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal$ThreadLocalMap;)V

    return-object v0
.end method

.method private static nextHashCode()I
    .registers 2

    .prologue
    .line 105
    sget-object v0, Ljava/lang/ThreadLocal;->nextHashCode:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    return v0
.end method

.method private setInitialValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v2

    .line 181
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 182
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    .line 183
    .local v0, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v0, :cond_12

    .line 184
    invoke-static {v0, p0, v2}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 187
    :goto_11
    return-object v2

    .line 186
    :cond_12
    invoke-virtual {p0, v1, v2}, Ljava/lang/ThreadLocal;->createMap(Ljava/lang/Thread;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+TS;>;)",
            "Ljava/lang/ThreadLocal",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TS;>;"
    new-instance v0, Ljava/lang/ThreadLocal$SuppliedThreadLocal;

    invoke-direct {v0, p0}, Ljava/lang/ThreadLocal$SuppliedThreadLocal;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "parentValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method createMap(Ljava/lang/Thread;Ljava/lang/Object;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p2, "firstValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ThreadLocal$ThreadLocalMap;

    invoke-direct {v0, p0, p2}, Ljava/lang/ThreadLocal$ThreadLocalMap;-><init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    iput-object v0, p1, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 245
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 161
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v3}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v1

    .line 162
    .local v1, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v1, :cond_13

    .line 163
    invoke-static {v1, p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-wrap0(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;

    move-result-object v0

    .line 164
    .local v0, "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    if-eqz v0, :cond_13

    .line 166
    iget-object v2, v0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    .line 167
    .local v2, "result":Ljava/lang/Object;, "TT;"
    return-object v2

    .line 170
    .end local v0    # "e":Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_13
    invoke-direct {p0}, Ljava/lang/ThreadLocal;->setInitialValue()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;
    .registers 3
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 233
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    return-object v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 220
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    .line 221
    .local v0, "m":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v0, :cond_d

    .line 222
    invoke-static {v0, p0}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-wrap1(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;)V

    .line 223
    :cond_d
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 201
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->getMap(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    .line 202
    .local v0, "map":Ljava/lang/ThreadLocal$ThreadLocalMap;
    if-eqz v0, :cond_e

    .line 203
    invoke-static {v0, p0, p1}, Ljava/lang/ThreadLocal$ThreadLocalMap;->-wrap2(Ljava/lang/ThreadLocal$ThreadLocalMap;Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 206
    :goto_d
    return-void

    .line 205
    :cond_e
    invoke-virtual {p0, v1, p1}, Ljava/lang/ThreadLocal;->createMap(Ljava/lang/Thread;Ljava/lang/Object;)V

    goto :goto_d
.end method
