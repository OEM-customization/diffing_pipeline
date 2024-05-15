.class final Lcom/android/okhttp/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final greylist-max-o SIZE:I = 0x10000


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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 66
    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/okhttp/okio/Segment;)V
    .registers 5
    .param p1, "shareFrom"    # Lcom/android/okhttp/okio/Segment;

    .line 69
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    iget v2, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 71
    return-void
.end method

.method constructor greylist-max-o <init>([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    .line 75
    iput p2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 76
    iput p3, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    .line 79
    return-void
.end method


# virtual methods
.method public greylist-max-o compact()V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    if-eq v0, p0, :cond_2b

    .line 129
    iget-boolean v1, v0, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-nez v1, :cond_9

    return-void

    .line 130
    :cond_9
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 131
    .local v1, "byteCount":I
    const/high16 v2, 0x10000

    iget v3, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    sub-int/2addr v2, v3

    iget-boolean v3, v0, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-eqz v3, :cond_19

    const/4 v0, 0x0

    goto :goto_1b

    :cond_19
    iget v0, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    :goto_1b
    add-int/2addr v2, v0

    .line 132
    .local v2, "availableByteCount":I
    if-le v1, v2, :cond_1f

    return-void

    .line 133
    :cond_1f
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    .line 135
    invoke-static {p0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    .line 136
    return-void

    .line 128
    .end local v1    # "byteCount":I
    .end local v2    # "availableByteCount":I
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public greylist-max-o pop()Lcom/android/okhttp/okio/Segment;
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    .line 87
    .local v0, "result":Lcom/android/okhttp/okio/Segment;
    :goto_7
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    iget-object v3, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v3, v2, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 88
    iget-object v3, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v2, v3, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 89
    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 90
    iput-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 91
    return-object v0
.end method

.method public greylist-max-o push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;
    .registers 3
    .param p1, "segment"    # Lcom/android/okhttp/okio/Segment;

    .line 99
    iput-object p0, p1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 100
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object v0, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 101
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    iput-object p1, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    .line 102
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    .line 103
    return-object p1
.end method

.method public greylist-max-o split(I)Lcom/android/okhttp/okio/Segment;
    .registers 4
    .param p1, "byteCount"    # I

    .line 115
    if-lez p1, :cond_1e

    iget v0, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1e

    .line 116
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    .line 117
    .local v0, "prefix":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 118
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 119
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    .line 120
    return-object v0

    .line 115
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

    .line 140
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->owner:Z

    if-eqz v0, :cond_4a

    .line 141
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int v1, v0, p2

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_34

    .line 143
    iget-boolean v1, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    if-nez v1, :cond_2e

    .line 144
    add-int v1, v0, p2

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    .line 145
    iget-object v1, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 147
    iput v2, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    goto :goto_34

    .line 144
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    .line 152
    iget v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    .line 153
    return-void

    .line 140
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
