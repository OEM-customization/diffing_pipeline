.class Ljava/util/JumboEnumSet$EnumSetIterator;
.super Ljava/lang/Object;
.source "JumboEnumSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/JumboEnumSet;
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

.field blacklist lastReturnedIndex:I

.field final synthetic blacklist this$0:Ljava/util/JumboEnumSet;

.field blacklist unseen:J

.field blacklist unseenIndex:I


# direct methods
.method constructor blacklist <init>(Ljava/util/JumboEnumSet;)V
    .registers 5

    .line 120
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    iput-object p1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    .line 113
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 118
    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 121
    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {p1}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object p1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 7

    .line 126
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    :goto_0
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_25

    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {v4}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_25

    .line 127
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {v0}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    iget v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    aget-wide v0, v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    goto :goto_0

    .line 128
    :cond_25
    iget-wide v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method public blacklist next()Ljava/lang/Enum;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 134
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 136
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    neg-long v2, v0

    and-long/2addr v2, v0

    iput-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 137
    iget v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iput v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 138
    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 139
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    iget-object v0, v0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    shl-int/lit8 v1, v1, 0x6

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 139
    return-object v0

    .line 135
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 97
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 11

    .line 145
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 147
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {v0}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v0, v0, v1

    .line 148
    .local v0, "oldElements":J
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {v4}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    iget v5, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v6, v4, v5

    iget-wide v8, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    not-long v8, v8

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 149
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # getter for: Ljava/util/JumboEnumSet;->elements:[J
    invoke-static {v4}, Ljava/util/JumboEnumSet;->access$000(Ljava/util/JumboEnumSet;)[J

    move-result-object v4

    iget v5, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v4, v4, v5

    cmp-long v4, v0, v4

    if-eqz v4, :cond_35

    .line 150
    iget-object v4, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    # operator-- for: Ljava/util/JumboEnumSet;->size:I
    invoke-static {v4}, Ljava/util/JumboEnumSet;->access$110(Ljava/util/JumboEnumSet;)I

    .line 152
    :cond_35
    iput-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 153
    return-void

    .line 146
    .end local v0    # "oldElements":J
    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
