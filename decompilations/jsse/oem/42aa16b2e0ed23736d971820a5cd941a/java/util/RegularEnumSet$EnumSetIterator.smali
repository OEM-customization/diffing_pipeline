.class Ljava/util/RegularEnumSet$EnumSetIterator;
.super Ljava/lang/Object;
.source "RegularEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/RegularEnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnumSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist lastReturned:J

.field final synthetic blacklist this$0:Ljava/util/RegularEnumSet;

.field blacklist unseen:J


# direct methods
.method constructor blacklist <init>(Ljava/util/RegularEnumSet;)V
    .registers 4

    .line 91
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iput-object p1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 92
    # getter for: Ljava/util/RegularEnumSet;->elements:J
    invoke-static {p1}, Ljava/util/RegularEnumSet;->access$000(Ljava/util/RegularEnumSet;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 5

    .line 96
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist next()Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 101
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    .line 103
    neg-long v2, v0

    and-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 104
    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->unseen:J

    .line 105
    iget-object v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    iget-object v0, v0, Ljava/util/RegularEnumSet;->universe:[Ljava/lang/Enum;

    iget-wide v1, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 102
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 78
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/RegularEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 6

    .line 109
    .local p0, "this":Ljava/util/RegularEnumSet$EnumSetIterator;, "Ljava/util/RegularEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_11

    .line 111
    iget-object v4, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->this$0:Ljava/util/RegularEnumSet;

    not-long v0, v0

    # &= operator for: Ljava/util/RegularEnumSet;->elements:J
    invoke-static {v4, v0, v1}, Ljava/util/RegularEnumSet;->access$074(Ljava/util/RegularEnumSet;J)J

    .line 112
    iput-wide v2, p0, Ljava/util/RegularEnumSet$EnumSetIterator;->lastReturned:J

    .line 113
    return-void

    .line 110
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
