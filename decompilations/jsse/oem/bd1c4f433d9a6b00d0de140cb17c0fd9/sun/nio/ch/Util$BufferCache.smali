.class Lsun/nio/ch/Util$BufferCache;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferCache"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private count:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    .line 57
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 73
    return-void
.end method

.method private next(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 68
    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 80
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v4, :cond_6

    .line 81
    return-object v5

    .line 83
    :cond_6
    iget-object v2, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    .line 86
    .local v2, "buffers":[Ljava/nio/ByteBuffer;
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v1, v2, v4

    .line 87
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, p1, :cond_32

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 90
    .local v3, "i":I
    :cond_15
    invoke-direct {p0, v3}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v3

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    if-eq v3, v4, :cond_21

    .line 91
    aget-object v0, v2, v3

    .line 92
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_24

    .line 99
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_21
    :goto_21
    if-nez v1, :cond_2c

    .line 100
    return-object v5

    .line 94
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p1, :cond_15

    .line 95
    move-object v1, v0

    .line 96
    .local v1, "buf":Ljava/nio/ByteBuffer;
    goto :goto_21

    .line 102
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2c
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    .line 106
    .end local v3    # "i":I
    :cond_32
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object v5, v2, v4

    .line 107
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v4}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v4

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 108
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 111
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 113
    return-object v1
.end method

.method isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 139
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method offerFirst(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 117
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_a
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 121
    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object p1, v0, v1

    .line 122
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method offerLast(Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 128
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 129
    const/4 v1, 0x0

    return v1

    .line 131
    :cond_a
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/2addr v1, v2

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    rem-int v0, v1, v2

    .line 132
    .local v0, "next":I
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    aput-object p1, v1, v0

    .line 133
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 134
    const/4 v1, 0x1

    return v1
.end method

.method removeFirst()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 143
    sget-boolean v1, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    if-nez v1, :cond_e

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-gtz v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 144
    :cond_e
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v0, v1, v2

    .line 145
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 146
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    .line 147
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    .line 148
    return-object v0
.end method
