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
        "Ljava/lang/ref/WeakReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final greylist-max-o hashcode:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1306
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1307
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    .line 1308
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1301
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1302
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    .line 1303
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1312
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    instance-of v0, p1, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 1313
    move-object v0, p1

    check-cast v0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1314
    .local v0, "that":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1315
    .local v2, "mine":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    if-nez v2, :cond_15

    goto :goto_1a

    :cond_15
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1d

    :cond_1a
    :goto_1a
    if-ne p0, p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    :goto_1d
    return v1

    .line 1317
    .end local v0    # "that":Ljava/lang/Object;
    .end local v2    # "mine":Ljava/lang/Object;
    :cond_1e
    return v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 1322
    .local p0, "this":Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;, "Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry<TT;>;"
    iget v0, p0, Ljava/lang/invoke/MethodType$ConcurrentWeakInternSet$WeakEntry;->hashcode:I

    return v0
.end method
