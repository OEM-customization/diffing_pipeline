.class Ljava/util/EnumMap$EntryIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EntryIterator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "TK;TV;>.EnumMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 3

    .line 566
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$EntryIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/EnumMap;
    .param p2, "x1"    # Ljava/util/EnumMap$1;

    .line 566
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 566
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 570
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$EntryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 572
    new-instance v0, Ljava/util/EnumMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/EnumMap$EntryIterator;->index:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/EnumMap$EntryIterator$Entry;-><init>(Ljava/util/EnumMap$EntryIterator;ILjava/util/EnumMap$1;)V

    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    .line 573
    return-object v0

    .line 571
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 577
    .local p0, "this":Ljava/util/EnumMap$EntryIterator;, "Ljava/util/EnumMap<TK;TV;>.EntryIterator;"
    nop

    .line 578
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    if-nez v0, :cond_7

    const/4 v0, -0x1

    goto :goto_b

    :cond_7
    # getter for: Ljava/util/EnumMap$EntryIterator$Entry;->index:I
    invoke-static {v0}, Ljava/util/EnumMap$EntryIterator$Entry;->access$1500(Ljava/util/EnumMap$EntryIterator$Entry;)I

    move-result v0

    :goto_b
    iput v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    .line 579
    invoke-super {p0}, Ljava/util/EnumMap$EnumMapIterator;->remove()V

    .line 580
    iget-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedIndex:I

    # setter for: Ljava/util/EnumMap$EntryIterator$Entry;->index:I
    invoke-static {v0, v1}, Ljava/util/EnumMap$EntryIterator$Entry;->access$1502(Ljava/util/EnumMap$EntryIterator$Entry;I)I

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap$EntryIterator;->lastReturnedEntry:Ljava/util/EnumMap$EntryIterator$Entry;

    .line 582
    return-void
.end method