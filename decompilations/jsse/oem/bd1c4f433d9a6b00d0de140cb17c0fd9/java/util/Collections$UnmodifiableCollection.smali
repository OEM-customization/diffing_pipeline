.class Ljava/util/Collections$UnmodifiableCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19420080cb5ef71eL


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1066
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    if-nez p1, :cond_b

    .line 1068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1069
    :cond_b
    iput-object p1, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    .line 1070
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1097
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 1116
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1074
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1104
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 1123
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1073
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableCollection$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableCollection$1;-><init>(Ljava/util/Collections$UnmodifiableCollection;)V

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1100
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1113
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1072
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1075
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1077
    .local p0, "this":Ljava/util/Collections$UnmodifiableCollection;, "Ljava/util/Collections$UnmodifiableCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
