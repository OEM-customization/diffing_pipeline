.class Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;
.super Ljava/lang/ref/WeakReference;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final hashcode:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1229
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    .line 1231
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    .line 1226
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    const/4 v3, 0x0

    .line 1235
    instance-of v2, p1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    if-eqz v2, :cond_1f

    move-object v2, p1

    .line 1236
    check-cast v2, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1237
    .local v1, "that":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1238
    .local v0, "mine":Ljava/lang/Object;
    if-eqz v1, :cond_14

    if-nez v0, :cond_1a

    :cond_14
    if-ne p0, p1, :cond_18

    const/4 v2, 0x1

    :goto_17
    return v2

    :cond_18
    move v2, v3

    goto :goto_17

    :cond_1a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_17

    .line 1240
    .end local v0    # "mine":Ljava/lang/Object;
    .end local v1    # "that":Ljava/lang/Object;
    :cond_1f
    return v3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1245
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    iget v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    return v0
.end method
