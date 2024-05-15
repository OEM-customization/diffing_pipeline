.class Ljava/util/EnumMap$ValueIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "TK;TV;>.EnumMapIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 3

    .line 557
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/EnumMap;
    .param p2, "x1"    # Ljava/util/EnumMap$1;

    .line 557
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 559
    .local p0, "this":Ljava/util/EnumMap$ValueIterator;, "Ljava/util/EnumMap<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$ValueIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 561
    iget v0, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$ValueIterator;->index:I

    iput v0, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    .line 562
    iget-object v0, p0, Ljava/util/EnumMap$ValueIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Ljava/util/EnumMap$ValueIterator;->lastReturnedIndex:I

    aget-object v1, v1, v2

    # invokes: Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Ljava/util/EnumMap;->access$1200(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 560
    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
