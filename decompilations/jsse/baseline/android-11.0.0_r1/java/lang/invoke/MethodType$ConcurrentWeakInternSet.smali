.class Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
.super Ljava/lang/Object;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcurrentWeakInternSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;
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


# instance fields
.field private final greylist-max-o map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<",
            "TT;>;",
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o stale:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1237
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 1239
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    .line 1240
    return-void
.end method

.method private greylist-max-o expungeStaleElements()V
    .registers 3

    .line 1291
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    :goto_0
    iget-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v0, :cond_f

    .line 1292
    iget-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1294
    :cond_f
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1273
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_20

    .line 1280
    new-instance v0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1282
    .local v0, "e":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    :cond_9
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    .line 1283
    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    .line 1284
    .local v1, "exist":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    if-nez v1, :cond_18

    move-object v2, p1

    goto :goto_1c

    :cond_18
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_1c
    move-object v1, v2

    .line 1285
    .local v1, "interned":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_9

    .line 1286
    return-object v1

    .line 1273
    .end local v0    # "e":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    .end local v1    # "interned":Ljava/lang/Object;, "TT;"
    :cond_20
    const/4 v0, 0x0

    throw v0
.end method

.method public greylist-max-o get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 1250
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 1251
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    .line 1253
    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-direct {v2, p1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    .line 1254
    .local v1, "value":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    if-eqz v1, :cond_1c

    .line 1255
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1256
    .local v2, "res":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1c

    .line 1257
    return-object v2

    .line 1260
    .end local v2    # "res":Ljava/lang/Object;, "TT;"
    :cond_1c
    return-object v0

    .line 1250
    .end local v1    # "value":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    :cond_1d
    throw v0
.end method
