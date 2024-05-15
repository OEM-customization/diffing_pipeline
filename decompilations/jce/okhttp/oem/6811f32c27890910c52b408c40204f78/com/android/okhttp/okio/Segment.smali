.class final Lcom/android/okhttp/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/android/okhttp/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/android/okhttp/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/android/okhttp/okio/Segment;)V
    .registers 5
    .param p1, "shareFrom"    # Lcom/android/okhttp/okio/Segment;

    .prologue
    .line 64
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v2, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 70
    iput p2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 71
    iput p3, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 74
    return-void
.end method


# virtual methods
.method public compact()V
    .registers 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-ne v2, p0, :cond_a

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 124
    :cond_a
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget-boolean v2, v2, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez v2, :cond_11

    return-void

    .line 125
    :cond_11
    iget v2, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v3, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int v1, v2, v3

    .line 126
    .local v1, "byteCount":I
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget v2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v3, v2, 0x2000

    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget-boolean v2, v2, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    :goto_24
    add-int v0, v3, v2

    .line 127
    .local v0, "availableByteCount":I
    if-le v1, v0, :cond_2e

    return-void

    .line 126
    .end local v0    # "availableByteCount":I
    :cond_29
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget v2, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    goto :goto_24

    .line 128
    .restart local v0    # "availableByteCount":I
    :cond_2e
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {p0, v2, v1}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    .line 130
    invoke-static {p0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 131
    return-void
.end method

.method public pop()Lcom/android/okhttp/okio/Segment;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    if-eq v1, p0, :cond_18

    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 82
    :goto_7
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 83
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 84
    iput-object v3, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 85
    iput-object v3, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 86
    return-object v0

    .line 81
    :cond_18
    const/4 v0, 0x0

    .local v0, "result":Lcom/android/okhttp/okio/Segment;
    goto :goto_7
.end method

.method public push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;
    .registers 3
    .param p1, "segment"    # Lcom/android/okhttp/okio/Segment;

    .prologue
    .line 94
    iput-object p0, p1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 95
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v0, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 96
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object p1, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 97
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 98
    return-object p1
.end method

.method public split(I)Lcom/android/okhttp/okio/Segment;
    .registers 5
    .param p1, "byteCount"    # I

    .prologue
    .line 110
    if-lez p1, :cond_9

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_f

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 111
    :cond_f
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    .line 112
    .local v0, "prefix":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 113
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 114
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 115
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/Segment;I)V
    .registers 9
    .param p1, "sink"    # Lcom/android/okhttp/okio/Segment;
    .param p2, "byteCount"    # I

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 135
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_d
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    .line 138
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_1c
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :cond_2a
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v4, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 141
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 142
    iput v5, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 145
    :cond_41
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 146
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 147
    iget v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 148
    return-void
.end method
