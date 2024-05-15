.class Ljava/util/EnumMap$KeyIterator;
.super Ljava/util/EnumMap$EnumMapIterator;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "TK;TV;>.EnumMapIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor blacklist <init>(Ljava/util/EnumMap;)V
    .registers 3

    .line 548
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/EnumMap$EnumMapIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/EnumMap;
    .param p2, "x1"    # Ljava/util/EnumMap$1;

    .line 548
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap$KeyIterator;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method


# virtual methods
.method public blacklist next()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 550
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 552
    iget v0, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/EnumMap$KeyIterator;->index:I

    iput v0, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    .line 553
    iget-object v0, p0, Ljava/util/EnumMap$KeyIterator;->this$0:Ljava/util/EnumMap;

    # getter for: Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;
    invoke-static {v0}, Ljava/util/EnumMap;->access$1100(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v0

    iget v1, p0, Ljava/util/EnumMap$KeyIterator;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 551
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 548
    .local p0, "this":Ljava/util/EnumMap$KeyIterator;, "Ljava/util/EnumMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Ljava/util/EnumMap$KeyIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
