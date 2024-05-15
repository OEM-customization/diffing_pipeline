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
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry",
            "<TT;>;",
            "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final stale:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1160
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 1162
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    .line 1163
    return-void
.end method

.method private expungeStaleElements()V
    .registers 3

    .prologue
    .line 1214
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    :goto_0
    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TT;>;"
    if-eqz v0, :cond_e

    .line 1215
    iget-object v1, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1217
    :cond_e
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1196
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1203
    :cond_8
    new-instance v0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    iget-object v3, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v3}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1205
    .local v0, "e":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    :cond_f
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    .line 1206
    iget-object v3, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    .line 1207
    .local v1, "exist":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    if-nez v1, :cond_20

    move-object v2, p1

    .line 1208
    .local v2, "interned":Ljava/lang/Object;, "TT;"
    :goto_1d
    if-eqz v2, :cond_f

    .line 1209
    return-object v2

    .line 1207
    .end local v2    # "interned":Ljava/lang/Object;, "TT;"
    :cond_20
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "interned":Ljava/lang/Object;, "TT;"
    goto :goto_1d
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet<TT;>;"
    .local p1, "elem":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    .line 1173
    if-nez p1, :cond_9

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1174
    :cond_9
    invoke-direct {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->expungeStaleElements()V

    .line 1176
    iget-object v2, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-direct {v3, p1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    .line 1177
    .local v1, "value":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    if-eqz v1, :cond_22

    .line 1178
    invoke-virtual {v1}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1179
    .local v0, "res":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_22

    .line 1180
    return-object v0

    .line 1183
    .end local v0    # "res":Ljava/lang/Object;, "TT;"
    :cond_22
    return-object v4
.end method
