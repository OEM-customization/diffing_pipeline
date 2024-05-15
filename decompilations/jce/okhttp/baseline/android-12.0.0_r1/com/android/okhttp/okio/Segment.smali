.class final Lcom/android/okhttp/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final greylist-max-o SIZE:I = 0x2000


# instance fields
.field final greylist-max-o data:[B

.field greylist-max-o limit:I

.field greylist-max-o next:Lcom/android/okhttp/okio/Segment;

.field greylist-max-o owner:Z

.field greylist-max-o pos:I

.field greylist-max-o prev:Lcom/android/okhttp/okio/Segment;

.field greylist-max-o shared:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/okhttp/okio/Segment;)V
    .registers 5
    .param p1, "shareFrom"    # Lcom/android/okhttp/okio/Segment;

    .line 65
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v2, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 67
    return-void
.end method

.method constructor greylist-max-o <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 71
    iput p2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 72
    iput p3, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 75
    return-void
.end method


# virtual methods
.method public greylist-max-o compact()V
    .registers 5

    .line 124
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-eq v0, p0, :cond_28

    .line 125
    iget-boolean v1, v0, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez v1, :cond_9

    return-void

    .line 126
    :cond_9
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 127
    .local v1, "byteCount":I
    iget v2, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    iget v3, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_1a
    add-int/2addr v2, v3

    .line 128
    .local v2, "availableByteCount":I
    if-le v1, v2, :cond_1e

    return-void

    .line 129
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    .line 131
    invoke-static {p0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 132
    return-void

    .line 124
    .end local v1    # "byteCount":I
    .end local v2    # "availableByteCount":I
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist-max-o pop()Lcom/android/okhttp/okio/Segment;
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    .line 83
    .local v2, "result":Lcom/android/okhttp/okio/Segment;
    :goto_8
    iget-object v3, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iput-object v0, v3, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 84
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v3, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 85
    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 86
    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 87
    return-object v2
.end method

.method public greylist-max-o push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;
    .registers 3
    .param p1, "segment"    # Lcom/android/okhttp/okio/Segment;

    .line 95
    iput-object p0, p1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 96
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v0, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 97
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object p1, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 98
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 99
    return-object p1
.end method

.method public greylist-max-o split(I)Lcom/android/okhttp/okio/Segment;
    .registers 4
    .param p1, "byteCount"    # I

    .line 111
    if-lez p1, :cond_1e

    iget v0, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1e

    .line 112
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    .line 113
    .local v0, "prefix":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 114
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 115
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 116
    return-object v0

    .line 111
    .end local v0    # "prefix":Lcom/android/okhttp/okio/Segment;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public greylist-max-o writeTo(Lcom/android/okhttp/okio/Segment;I)V
    .registers 7
    .param p1, "sink"    # Lcom/android/okhttp/okio/Segment;
    .param p2, "byteCount"    # I

    .line 136
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v0, :cond_4a

    .line 137
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    .line 139
    iget-boolean v1, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-nez v1, :cond_2e

    .line 140
    add-int v1, v0, p2

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    .line 141
    iget-object v1, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 143
    iput v2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    goto :goto_34

    .line 140
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 148
    iget v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 149
    return-void

    .line 136
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
