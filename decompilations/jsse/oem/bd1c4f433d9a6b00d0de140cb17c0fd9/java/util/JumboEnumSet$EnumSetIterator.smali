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
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field lastReturned:J

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/JumboEnumSet;

.field unseen:J

.field unseenIndex:I


# direct methods
.method constructor <init>(Ljava/util/JumboEnumSet;)V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    .local p1, "this$0":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v2, 0x0

    .line 120
    iput-object p1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 118
    iput v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 121
    invoke-static {p1}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    aget-wide v0, v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 122
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    const-wide/16 v2, 0x0

    .line 126
    :goto_2
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iget-object v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v1}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_26

    .line 127
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v0}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v0

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    goto :goto_2

    .line 128
    :cond_26
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public next()Ljava/lang/Enum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 135
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 136
    :cond_c
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    neg-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 137
    iget v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseenIndex:I

    iput v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    .line 138
    iget-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->unseen:J

    .line 139
    iget-object v0, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    iget-object v0, v0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    iget v1, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    shl-int/lit8 v1, v1, 0x6

    .line 140
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    .line 139
    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 131
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/JumboEnumSet$EnumSetIterator;->next()Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 11

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet$EnumSetIterator;, "Ljava/util/JumboEnumSet<TE;>.EnumSetIterator<TE;>;"
    const-wide/16 v8, 0x0

    .line 145
    iget-wide v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_e

    .line 146
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 147
    :cond_e
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v2

    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v0, v2, v3

    .line 148
    .local v0, "oldElements":J
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v2

    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v4, v2, v3

    iget-wide v6, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    not-long v6, v6

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 149
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get0(Ljava/util/JumboEnumSet;)[J

    move-result-object v2

    iget v3, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturnedIndex:I

    aget-wide v2, v2, v3

    cmp-long v2, v0, v2

    if-eqz v2, :cond_41

    .line 150
    iget-object v2, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->this$0:Ljava/util/JumboEnumSet;

    invoke-static {v2}, Ljava/util/JumboEnumSet;->-get1(Ljava/util/JumboEnumSet;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/util/JumboEnumSet;->-set0(Ljava/util/JumboEnumSet;I)I

    .line 152
    :cond_41
    iput-wide v8, p0, Ljava/util/JumboEnumSet$EnumSetIterator;->lastReturned:J

    .line 153
    return-void
.end method
