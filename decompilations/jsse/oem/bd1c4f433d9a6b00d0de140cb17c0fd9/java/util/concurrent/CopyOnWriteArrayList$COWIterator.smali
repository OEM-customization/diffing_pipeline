.class final Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "COWIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final snapshot:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "initialCursor"    # I

    .prologue
    .line 1070
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 1072
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    .line 1073
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1135
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v1, v2

    .line 1137
    .local v1, "size":I
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 1138
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1137
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1140
    :cond_14
    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 1141
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1076
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    const/4 v0, 0x0

    .line 1080
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1086
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1087
    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 1098
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1093
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1094
    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 1102
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 1111
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
