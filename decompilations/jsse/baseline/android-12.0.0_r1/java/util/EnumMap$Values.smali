.class Ljava/util/EnumMap$Values;
.super Ljava/util/AbstractCollection;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 2

    .line 429
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iput-object p1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/EnumMap;
    .param p2, "x1"    # Ljava/util/EnumMap$1;

    .line 429
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 452
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 453
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 437
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    new-instance v0, Ljava/util/EnumMap$ValueIterator;

    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$ValueIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 440
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # invokes: Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/EnumMap;->access$500(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 443
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 444
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->vals:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/EnumMap;->access$600(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 445
    iget-object v1, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # operator-- for: Ljava/util/EnumMap;->size:I
    invoke-static {v1}, Ljava/util/EnumMap;->access$210(Ljava/util/EnumMap;)I

    .line 446
    const/4 v1, 0x1

    return v1

    .line 442
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 449
    .end local v0    # "i":I
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 434
    .local p0, "this":Ljava/util/EnumMap$Values;, "Ljava/util/EnumMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/EnumMap$Values;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->size:I
    invoke-static {v0}, Ljava/util/EnumMap;->access$200(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method
