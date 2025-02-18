.class Ljava/util/Collections$EmptyList;
.super Ljava/util/AbstractList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7ab817b43ca79edeL


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4473
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collections$EmptyList;)V
    .registers 2
    .param p1, "-this0"    # Ljava/util/Collections$EmptyList;

    .prologue
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptyList;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4533
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4488
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

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
    .line 4489
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4504
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_a
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 4525
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4526
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 4500
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 4507
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4486
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x1

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
    .line 4479
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 4482
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
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
    .line 4511
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4512
    const/4 v0, 0x0

    return v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 4516
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4517
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 4485
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 4520
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    return-void
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
    .line 4529
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4491
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Collections$EmptyList;, "Ljava/util/Collections$EmptyList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 4494
    array-length v0, p1

    if-lez v0, :cond_7

    .line 4495
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 4496
    :cond_7
    return-object p1
.end method
