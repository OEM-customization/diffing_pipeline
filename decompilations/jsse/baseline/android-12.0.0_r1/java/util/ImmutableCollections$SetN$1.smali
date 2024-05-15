.class Ljava/util/ImmutableCollections$SetN$1;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ImmutableCollections$SetN;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist idx:I

.field final synthetic blacklist this$0:Ljava/util/ImmutableCollections$SetN;


# direct methods
.method constructor blacklist <init>(Ljava/util/ImmutableCollections$SetN;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/ImmutableCollections$SetN;

    .line 656
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$1;, "Ljava/util/ImmutableCollections$SetN$1;"
    iput-object p1, p0, Ljava/util/ImmutableCollections$SetN$1;->this$0:Ljava/util/ImmutableCollections$SetN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 661
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$1;, "Ljava/util/ImmutableCollections$SetN$1;"
    :goto_0
    iget v0, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    iget-object v1, p0, Ljava/util/ImmutableCollections$SetN$1;->this$0:Ljava/util/ImmutableCollections$SetN;

    iget-object v1, v1, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 662
    iget-object v0, p0, Ljava/util/ImmutableCollections$SetN$1;->this$0:Ljava/util/ImmutableCollections$SetN;

    iget-object v0, v0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_15

    .line 663
    const/4 v0, 0x1

    return v0

    .line 664
    :cond_15
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    goto :goto_0

    .line 666
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 671
    .local p0, "this":Ljava/util/ImmutableCollections$SetN$1;, "Ljava/util/ImmutableCollections$SetN$1;"
    invoke-virtual {p0}, Ljava/util/ImmutableCollections$SetN$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 674
    iget-object v0, p0, Ljava/util/ImmutableCollections$SetN$1;->this$0:Ljava/util/ImmutableCollections$SetN;

    iget-object v0, v0, Ljava/util/ImmutableCollections$SetN;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ImmutableCollections$SetN$1;->idx:I

    aget-object v0, v0, v1

    return-object v0

    .line 672
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
