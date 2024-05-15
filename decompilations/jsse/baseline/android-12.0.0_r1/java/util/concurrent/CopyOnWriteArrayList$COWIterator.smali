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
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o cursor:I

.field private final greylist-max-o snapshot:[Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>([Ljava/lang/Object;I)V
    .registers 3
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "initialCursor"    # I

    .line 1065
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1066
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 1067
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    .line 1068
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1124
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1130
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v0, v0

    .line 1132
    .local v0, "size":I
    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 1133
    iget-object v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1132
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1135
    .end local v1    # "i":I
    :cond_14
    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    .line 1136
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1071
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1075
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1080
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1082
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0

    .line 1081
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 1093
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1087
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1089
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->snapshot:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    aget-object v0, v0, v1

    return-object v0

    .line 1088
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1097
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1106
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1115
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
