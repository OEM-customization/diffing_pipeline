.class public Ljava/util/concurrent/atomic/AtomicMarkableReference;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PAIR:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 193
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    .line 197
    :try_start_6
    sget-object v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    .line 198
    const-class v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const-string/jumbo v3, "pair"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->PAIR:J
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_17} :catch_18

    .line 50
    return-void

    .line 199
    :catch_18
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "initialMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 75
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicMarkableReference;->PAIR:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attemptMark(Ljava/lang/Object;Z)Z
    .registers 5
    .param p2, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 186
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_15

    .line 187
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_13

    .line 188
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    move-result v1

    .line 185
    :goto_12
    return v1

    .line 187
    :cond_13
    const/4 v1, 0x1

    goto :goto_12

    .line 186
    :cond_15
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 7
    .param p3, "expectedMark"    # Z
    .param p4, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 151
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1d

    .line 152
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-ne p3, v1, :cond_1d

    .line 153
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_14

    .line 154
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-ne p4, v1, :cond_14

    .line 153
    const/4 v1, 0x1

    .line 150
    :goto_13
    return v1

    .line 155
    :cond_14
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->casPair(Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;)Z

    move-result v1

    goto :goto_13

    .line 151
    :cond_1d
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public get([Z)Ljava/lang/Object;
    .registers 5
    .param p1, "markHolder"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 105
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    .line 106
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public isMarked()Z
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    iget-boolean v0, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Z)V
    .registers 5
    .param p2, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 166
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;, "Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    iget-boolean v1, v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->mark:Z

    if-eq p2, v1, :cond_10

    .line 167
    :cond_a
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;->of(Ljava/lang/Object;Z)Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->pair:Ljava/util/concurrent/atomic/AtomicMarkableReference$Pair;

    .line 168
    :cond_10
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 6
    .param p3, "expectedMark"    # Z
    .param p4, "newMark"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicMarkableReference;, "Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method
